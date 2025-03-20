import os
import argparse
import orjson
import utils
import glob
import re

source_lang, target_lang = "", ""

if __name__ == '__main__':
    # Get folder and guess_* and solved_* files
    parser = argparse.ArgumentParser(
        description='Interpreting results from guess_* and solved_*.json files'
    )
    parser.add_argument('folder')
    args = parser.parse_args()
    print(args.folder)

    source_lang, target_lang = 'risc', 'arm'
    if 'arm_to_risc' in args.folder: source_lang, target_lang = 'arm', 'risc'
    if 'armtorisc' in args.folder: source_lang, target_lang = 'arm', 'risc'

    for infile in glob.glob(f"{args.folder}/*.json"):
        print(infile)
        data = orjson.loads(open(infile, 'rb').read())
        if re.search(r'few_shot_.*.json', infile):
            outfile = re.sub(re.compile('(.*)few_shot_(.+\.json)'), r'\1streamlit_\2', infile)
            # if os.path.exists(outfile): continue
            # Collect info for baseline
            example = orjson.loads(open(infile, 'rb').read())
            data = {
                'c': example['c'],
                'risc': example['risc'],
                'arm': example['arm'],
                'tgt_exc': example['exc_true'],
                'top_k_combos': [],
                'top_k_guess': []
            }

            # Get translation and output
            data['top_k_combos'].append({
                'combos': [{
                    'combo_num': 0,
                    'translation': example[f'pred_{target_lang}']['translation'],
                    'exc_output': example['exc_output']
                }]
            })
            data['top_k_guess'].append({
                'translation': example[f'pred_{target_lang}']['translation'],
            }
            )
        elif re.search(r'guess_[0-9a-z\-]+.json', infile):
            import pdb; pdb.set_trace()
            outfile = os.path.join(args.folder, re.sub(re.compile(f'{args.folder}/guess_([a-z0-9\-]+.json)'), r'streamlit_\1', infile))
            print(outfile)
            if os.path.exists(outfile): continue
            solved = os.path.join(args.folder, re.sub(re.compile(f'{args.folder}/guess_([a-z0-9\-]+.json)'), r'solved_\1', infile))
            # Load files
            try:
                solved = orjson.loads(open(solved, 'rb').read())
                guess = orjson.loads(open(infile, 'rb').read())
            except: 
                print('failed to load some file with ', solved, infile)
                continue

            # Fetch source code and source, correct assembly, correct output, and top translations
            data = {
                'c': guess['c'],
                'risc': guess['risc'],
                'arm': guess['arm'],
                'tgt_exc': solved['exc_true'],
                'src': {},
                'top_k_combos': [],
                'top_k_guess': []
            }

            # Reconstruct source from cloze
            constructed_cloze = utils.construct_cloze(guess[f'src_{source_lang}']['cloze'], guess[f'src_{source_lang}']['functions'], pred=False)
            if constructed_cloze:
                data['src']['translation'] = constructed_cloze
            else:
                continue

            # Iterate over top translations
            for k, preds in enumerate(solved['top_k']):
                data['top_k_combos'].append({
                    'combos': []
                })

                # Iterate over combos
                for combo_num, translation in enumerate(preds):
                    if solved['exc_true'] and ('error' not in solved['exc_true']) and (translation['exc_output'] == solved['exc_true']):
                        if 'gas_k' not in data: data['gas_k'] = (k, combo_num)
                        if ('frank_k' not in data) and (combo_num == 0): data['frank_k'] = k
                    data['top_k_combos'][k]['combos'].append({
                        'combo_num': combo_num,
                        'translation': translation['translation'],
                        'exc_output': translation['exc_output'] if 'exc_output' in translation else 'passed earlier'
                    })

                data['top_k_guess'].append({
                    'translation': [],
                    # 'func_length': {}
                })

                func_chunks = guess[f'pred_{target_lang}']['top_k'][k]['translation_info']
                cloze = func_chunks['null']
                del func_chunks['null']
                # data['top_k_guess'][k]['func_length'] = {fn_name: len(token_alignments) for fn_name, (_, token_alignments) in func_chunks}
                # Reconstruct cloze for each top_k guess
                try:
                    data['top_k_guess'][k]['translation'] = utils.construct_cloze(cloze, func_chunks, pred=True, include_alignments=(k in utils.display_k))
                except:
                    data['top_k_guess'][k]['translation'] = str(guess[f'pred_{target_lang}']['top_k'][k]['translation_info'])
        else: continue
        json_byte = orjson.dumps(data)
        with open(outfile, 'wb') as f: f.write(json_byte)
