from transformers import AutoTokenizer
from htbuilder import span

# tokenizer_name = "bigcode/starcoderbase"
# tokenizer_name = "saved_models"
tokenizer_name = "facebook/bart-large"
tokenizer = AutoTokenizer.from_pretrained(tokenizer_name, use_fast=True)
tgt_bg_col = '#faa'
html_escape = {
    '&': '&amp;', 
    '<': '&lt;',
    '>': '&gt;',
    ' ': '&nbsp;',
    '\n': '<br>',
    '\t': '&nbsp;&nbsp;&nbsp;&nbsp;',
    '\\': '\\\\',
    '_': '\_'
}
raw_escape_spaces = {
    '\n': r'\n',
    '\t': r'\t'
}
display_k = [0]
IN_TOKS_IDX = 0
ALT_TOKS_IDX = 1

def extract_token(tok):
    # Extract first element of tuple
    if type(tok) == list and type(tok[0]) == list:
        return tok[0][0]
    elif type(tok) == list:
        return tok[0]
    return tok


def escape_from_tok(tok, map):
    '''Replace character with escape character'''
    for (char, esc) in map.items():
        tok = tok.replace(char, esc)
    return tok


def color_token(text, alignments=None):
    '''Color token using annotated_text library'''
    # if text in raw_escape_spaces.keys(): return text
    # If we have multiple alternate tokens, color it red.
    if alignments and len(alignments[ALT_TOKS_IDX]) > 1:
        annotation = ', '.join([tokenizer.decode(tok) for tok in alignments[ALT_TOKS_IDX]][1:])
        return (text, annotation, tgt_bg_col)

    return text


def color_function(func, pred=False, include_alignments=False):
    '''Color functions by decoding the tokens'''
    colored_tokens = []
    # Unpack the tokens and alignments for the predictions
    if pred:
        (func, alignments) = func
        if 'bart' in tokenizer_name: func = func[1:]
    text = [tokenizer.decode(tok) for tok in func]

    offset = 0
    for i in range(len(text)):
        # Pass alignments for predictions
        if pred and include_alignments:
            if text[i] not in alignments[i-offset][1]: offset += 1 # TODO why does this happen?
            colored_tokens.append(color_token(text[i], alignments=alignments[i-offset]))
        else:
            colored_tokens.append(color_token(text[i]))
    return colored_tokens


def construct_cloze(cloze, functions, pred=False, include_alignments=False):
    '''Construct cloze from functions'''
    i = 0
    colored_text = []

    # Unpack tokens and alignments
    if pred:
        (cloze, alignments) = cloze
        if 'bart' in tokenizer_name: cloze = cloze[1:]
    text = [tokenizer.decode(tok) for tok in cloze]
    length = len(text)

    # # Keep track of where function is inserted
    # Iterate over cloze
    offset = 0
    while i < length:
        # if pred and (cloze[i] not in alignments[i-offset][1]): 
        #     import pdb; pdb.set_trace()
        #     offset += 1
        # Check for function name
        if '{' in text[i] and i < length - 2:
            pre, fn_name = text[i].split('{', 1)
            colored_text.append(color_token(pre, alignments=(alignments[i-offset] if pred and include_alignments else None)))

            # Continue until end of function name
            if '}' in fn_name:
                fn_name, post = fn_name.split('}', 1)
            else:
                while '}' not in text[i+1]:
                    i += 1
                    fn_name += text[i]
                    if i == len(text)-1: import pdb; pdb.set_trace()
                i += 1
                pre, post = text[i].split('}', 1)
                # Accumulate function name
                fn_name += pre
            
            if fn_name not in functions: 
                return None

            # Add functions
            colored_text.extend(color_function(functions[fn_name], pred=pred, include_alignments=include_alignments))

            # Finish adding the rest of the token
            if post: colored_text.append(color_token(post, alignments=(alignments[i-offset] if pred and include_alignments else None)))
        else:
            colored_text.append(color_token(text[i], alignments=(alignments[i-offset] if pred and include_alignments else None)))
        i += 1
    return colored_text 

