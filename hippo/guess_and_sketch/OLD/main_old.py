import argparse
import json
import os
import glob
import torch
from guess_and_sketch.guess_and_sketch import GuessAndSketch
from baselines.few_shot import few_shot #, arm2risc

# Parsing input arguments
def parse_args():
    parser = argparse.ArgumentParser(
        description="Loading and playing with a model for the transpilation task"
    )

    parser.add_argument("--guess", default=False, action="store_true")
    parser.add_argument(
        "--k",
        type=int,
        default=20,
    )
    parser.add_argument(
        "--max_length",
        type=int,
        default=2048,
    )
    parser.add_argument(
        "--num_guesses",
        type=int,
        default=50,
    )
    parser.add_argument(
        "--config_name",
        type=str,
        default="facebook/bart-large"
    )
    parser.add_argument(
        "--model_name_or_path",
        type=str,
        help="Path to pretrained model or model identifier from huggingface.co/models.",
        default="celinelee/bartlarge_risctoarm_cloze2048",
    )
    parser.add_argument("--is_enc_dec", default=False, action="store_true")
    parser.add_argument("--tokenizer_name", type=str, default="facebook/bart-large")
    parser.add_argument(
        "--data_file",
        type=str,
        default="data/proj_euler_functions.jsonl",
    )
    parser.add_argument(
        "--source_lang",
        default="risc",
        type=str,
    )
    parser.add_argument(
        "--target_lang",
        default="arm",
        type=str,
    )
    parser.add_argument(
        "--predictions_folder", type=str, default="guess_and_sketch/proj_euler"
    )
    parser.add_argument("--lambda_val", type=float, default=0.95)
    parser.add_argument("--few_shot", default=False, action="store_true")
    parser.add_argument("--no_math", default=False, action="store_true")
    parser.add_argument("--no_strcopy", default=False, action="store_true")
    parser.add_argument("--no_memblock", default=False, action="store_true")
    parser.add_argument("--sketch", default=False, action="store_true")
    parser.add_argument("--sketch_filename", type=str, default="scratch_sketch.rkt")
    parser.add_argument("--view_uncertain", type=str, default="")
    parser.add_argument("--verbose", default=False, action="store_true")
    args = parser.parse_args()
    return args


def main():
    args = parse_args()

    if args.view_uncertain:
        gas = GuessAndSketch(args)
        gas.view_uncertain_tokens(args.view_uncertain)

    if args.guess:
        gas = GuessAndSketch(args)
        datapoints = []
        for line in open(args.data_file):
            datapoint = json.loads(line)
            gas.guess(datapoint, args.predictions_folder, args.num_guesses)

    if args.sketch:
        gas = GuessAndSketch(args)
        if "/Applications/Racket v8.8/bin" not in os.environ["PATH"]:
            os.environ["PATH"] += ":/Applications/Racket v8.8/bin"
        for datapoint_file in glob.glob(f"{args.predictions_folder}/guess_*.json"):
            datapoint = json.load(open(datapoint_file))
            gas.sketch(datapoint, args.predictions_folder)

    if args.few_shot:
        datapoints = []
        for line in open(args.data_file):
            datapoint = json.loads(line)
            few_shot(
                datapoint, args.predictions_folder, args.source_lang, args.target_lang
            )


if __name__ == "__main__":
    main()