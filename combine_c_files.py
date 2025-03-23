import os

eval_dir = os.path.join(os.getcwd(), "eval")

for problem_dir in sorted(os.listdir(eval_dir)):
    problem_path = os.path.join(eval_dir, problem_dir)
    
    if os.path.isdir(problem_path) and problem_dir.startswith("problem"):
        code_file = os.path.join(problem_path, "code.c")
        test_file = os.path.join(problem_path, "test.c")
        combined_file = os.path.join(eval_dir, f"{problem_dir}.c")
        
        with open(combined_file, "w") as outfile:
            if os.path.exists(code_file):
                with open(code_file, "r") as infile:
                    outfile.write(infile.read() + "\n\n")  # Separate with new lines
            
            if os.path.exists(test_file):
                with open(test_file, "r") as infile:
                    outfile.write(infile.read())

        print(f"✅ Created {combined_file}")

