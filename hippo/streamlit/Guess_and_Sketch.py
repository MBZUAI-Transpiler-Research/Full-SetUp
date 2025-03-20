import difflib
import streamlit as st
import streamlit.components.v1 as components
from annotated_text import annotated_text
from itertools import combinations
import glob
import orjson
import utils
st.set_page_config(page_title="Guess and Sketch, pass@k", layout='wide')


source_lang, target_lang = "", ""
current_file = ""
examples_by_view = {"match@1": {}, "match@k": {}, "mismatch": {}} # view type -> source -> [(index, pass_k, example_dict)]
current_view = ""
remove_tokens = ['<s>', '</s>', '<pad>']
src_bg_col = '#aaf'


def collect_results(folder):
    # Collect info
    for file in glob.glob(f"{folder}/streamlit_*.json"):
        data = orjson.loads(open(file, 'rb').read())
        if 'gas_k' not in data: examples_by_view['mismatch'][file] = data
        elif data['gas_k'][0] > 0: examples_by_view['match@k'][file] = data
        else: examples_by_view['match@1'][file] = data


def construct_text(text, toks):
    copy_text = text[:]
    for idx in toks:
        tok = utils.extract_token(text[idx])
        # Remove escape characters
        if tok in utils.raw_escape.keys():
            copy_text[idx] = tok
        else:
            # Highlight current index
            copy_text[idx] = (tok, "", src_bg_col)

    colored_text = []
    # Replace all other tokens with tuples or HTML
    for i in range(len(copy_text)):
        if utils.extract_token(text[i]) in remove_tokens:
            continue

        text_type = type(copy_text[i])
        # Check for annotation or color
        if text_type == list and len(copy_text[i]) == 2:
            # Handle lists with alignments
            if type(copy_text[i][0]) == list:
                colored_text.append(tuple(copy_text[i][0]))
            else:
                colored_text.append(utils.color_chunk(utils.extract_token(copy_text[i])))
        elif text_type == list:
            colored_text.append(tuple(copy_text[i]))
        elif text_type == str:
            colored_text.append(utils.color_chunk(utils.extract_token(copy_text[i])))
        elif text_type == tuple:
            colored_text.append(copy_text[i])
    return colored_text


def present_results():
    # Get translations for view
    options = sorted(list(examples_by_view[current_view].keys()))
    option = st.selectbox(
        f"Select a translation to see predictions for: ({len(options)})", options
    )

    # Remove error message
    if not examples_by_view[current_view]:
        return

    example_info = examples_by_view[current_view][option]
    st.subheader(f"GAS at k={example_info['gas_k'] if 'gas_k' in example_info else None}")
    st.subheader(f"Frank at k={example_info['frank_k'] if 'frank_k' in example_info else None}")
    k_options = list(range(len(example_info[f'top_k_combos'])))
    which_k = st.selectbox(
        f"Which k are we interested in?: ({len(k_options)})", k_options
    )

    # List combos
    combo_options = list(range(len(example_info['top_k_combos'][which_k]['combos'])))
    which_combo = st.selectbox(
        f"Which combo are we interested in?: ({len(combo_options)})", combo_options
    )

    # # List functions
    # function_options = list(example_info['top_k_guess'][which_k]['func_length'].keys())
    # which_function = st.selectbox(
    #     f"Which function are we interested in?: ({len(function_options)})", function_options
    # )

    # List tokens
    guess_tokens = example_info['top_k_guess'][which_k]['translation']
    # TODO need to know which token maps to which function, so that once the user has selected which token they want to inspect alignment for,
    #      we can figure out which function it corresponds to (and thus the mapping)
    token_options = [tok[0] if type(tok) == tuple else tok for tok in guess_tokens]
    which_token = st.selectbox(
        f"Which token are we interested in?: ({len(token_options)})", token_options
    )
    which_token = token_options.index(which_token)

    c_tab, target_tab, truth_tab, mapping_tab, diff_k_tab, diff_combo_tab = st.tabs(['C', 'Target', 'RISC & ARM', 'Mappings', 'Diffs (k)', 'Diffs (combos)'])
    # Display C source code
    with c_tab:
        st.subheader("C: ")
        st.text(f"{example_info['c']}")

    with target_tab:
        # Display the k at which it passed
        col1, col2, col3 = st.columns([1,1,1])
        with col1:
            st.subheader(f"TARGET {target_lang}: ")
            true_tgt = example_info[target_lang]
            escaped_true_tgt = str(true_tgt)
            for orig, repl in utils.html_escape.items():
                escaped_true_tgt = escaped_true_tgt.replace(orig, repl)
            st.markdown(escaped_true_tgt, unsafe_allow_html=True)
        with col2:
            st.subheader(f"PREDICT {target_lang} k={which_k} (Guess): ")
            # Process prediction
            # colored_text = construct_text(example_info['top_k_guess'][which_k]['translation'], [idx + which_token])
            # annotated_text(colored_text)
        with col3:
            st.subheader(f"PREDICT {target_lang} k={which_k} (Combo={which_combo}): ")
            pred_tgt = example_info['top_k_combos'][which_k]['combos'][int(which_combo)]['translation']
            escaped_pred_tgt = str(pred_tgt)
            for orig, repl in utils.html_escape.items():
                escaped_pred_tgt = escaped_pred_tgt.replace(orig, repl)
            st.markdown(escaped_pred_tgt, unsafe_allow_html=True)

        st.subheader("DIFF: (target | pred)")
        diff = difflib.HtmlDiff().make_table(true_tgt.split('\n'), pred_tgt.split('\n'), context=True)
        components.html(diff, height=350, scrolling=True)

        # Print desired and given output
        st.subheader("EXC OUTPUT")
        st.text(f"Wanted:\n{example_info['tgt_exc']}")
        st.text(f"Got:")
        st.text(example_info['top_k_combos'][which_k]['combos'][int(which_combo)]['exc_output'])

    with truth_tab:
        risc_col, arm_col = st.columns([1, 1])
        with risc_col:
            st.subheader('RISC')
            st.text(f"{example_info['risc']}")
        with arm_col:
            st.subheader('ARM')
            st.text(f"{example_info['arm']}")

    with mapping_tab:
        source_col, target_col = st.columns([1, 1])
        with source_col:
            st.subheader(f"{source_lang}")
            # Display alignments for only specific k
            if which_k not in utils.display_k:
                src = example_info[source_lang]
                st.markdown(utils.color_chunk(src), unsafe_allow_html=True)
            else:
                alignments = example_info['top_k_guess'][which_k]['translation'][idx + which_token][1][0]
                alignments = [i + example_info['src']['func_start'][which_function] for i in alignments]
                annotated_text(construct_text(example_info['src']['translation'], alignments))
        with target_col:
            st.subheader(f"{target_lang}")
            # Process prediction
            colored_text = construct_text(example_info['top_k_guess'][which_k]['translation'], [idx + which_token])
            annotated_text(colored_text)


    def present_diffs(cands):
        # Iterate over all pairs
        for pair_dict in list(map(dict, combinations(cands.items(), 2))):
            title_str = ""
            candpairs = []
            for selected, text in pair_dict.items():
                title_str += f"| {selected} |"
                candpairs.append(text)
            st.text(f'{title_str} :')
            # Display the difference between the pairs
            diff = difflib.HtmlDiff().make_table(candpairs[0].split('\n'), candpairs[1].split('\n'), context=True)
            components.html(diff, height=350, scrolling=True)
            st.text('')


    with diff_k_tab:
        st.subheader(f'Diff Two Generations (combos={which_combo})')
        gens = st.multiselect('Which generations do you want to compare? (will compare all pairs)', k_options + ['target'], ['target', int(which_k)])
        cands = {}
        for selected_gen in gens:
            if type(selected_gen) == int: cands[str(selected_gen)] = example_info[f'top_k_combos'][selected_gen]['combos'][int(which_combo)]['translation']
            else: cands[str(selected_gen)] = example_info[target_lang]

        present_diffs(cands)

    with diff_combo_tab:
        st.subheader(f'Diff Two Combos (k={which_k})')
        combos = st.multiselect('Which combos do you want to compare? (will compare all pairs)', combo_options)
        cands = {}
        for selected_combo in combos:
            cands[str(selected_combo)] = example_info[f'top_k_combos'][which_k]['combos'][selected_combo]['translation']

        present_diffs(cands)

# Get current folder from user
folders = [
    "guess_and_sketch/proj_euler/arm_to_risc",  "guess_and_sketch/proj_euler/risc_to_arm",
    "guess_and_sketch/proj_euler/starcoder_arm_to_risc",  "guess_and_sketch/proj_euler/starcoder_risctoarm",
    "guess_and_sketch/proj_euler/codellama_arm_to_risc",  "guess_and_sketch/proj_euler/codellama_risc_to_arm",
    "guess_and_sketch/benchmarks/arm_to_risc", "guess_and_sketch/benchmarks/risc_to_arm", 
    "guess_and_sketch/benchmarks/starcoder_arm_to_risc", "guess_and_sketch/benchmarks/starcoder_risctoarm", 
    "guess_and_sketch/benchmarks/codellama_armtorisc", "guess_and_sketch/benchmarks/codellama_risctoarm", 
    "guess_and_sketch/unix_commands/risc_to_arm",  "guess_and_sketch/unix_commands/arm_to_risc", 
    "guess_and_sketch/unix_commands/starcoder_arm_to_risc",  "guess_and_sketch/unix_commands/starcoder_risctoarm", 
    "guess_and_sketch/unix_commands/codellama_armtorisc",  "guess_and_sketch/unix_commands/codellama_risctoarm", 
    "guess_and_sketch/more_proj_euler/arm_to_risc",  "guess_and_sketch/more_proj_euler/risc_to_arm",
    "baselines/proj_euler/arm_to_risc", "baselines/proj_euler/risc_to_arm", "baselines/benchmarks", "baselines/unix_commands"
]
current_folder = st.radio("Which outputs would you like to see?", folders)

# Set source and target
source_lang, target_lang = "risc", "arm"
if 'arm_to_risc' in current_folder: source_lang, target_lang = "arm", "risc"

collect_results(current_folder)
current_view = st.radio("What types of outputs would you like to see?", ["match@1", "match@k", "mismatch"])
present_results()
