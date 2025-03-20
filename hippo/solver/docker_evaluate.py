import os
import subprocess


def run_risc_docker(
    assembly,
    filename,
    folder,
    container_id,
    make_run_commands
):
    ignore_strs = {"WARNING: The requested image's platform (linux/amd64) does not match the detected host platform (linux/arm64/v8) and no specific platform was requested\n"}
    gcc_cmd = "./verification_image/linux-riscv64-verification sh -c 'riscv64-unknown-linux-gnu-gcc {write_filename_prefix}.s -o {write_filename_prefix} {gcc_flags}'"
    
    write_filename_prefix = os.path.join(folder, f"{filename}_risc")
    exc_cmd = f"./verification_image/linux-riscv64-verification sh -c './{write_filename_prefix} " + "{qemu_args}'"
    for prog_prefix, qemu_setup in make_run_commands["qemu_setup"].items():
        if "-" in filename and "-".join(filename.split("-")[:-1]) == prog_prefix:
            break
        elif "-" not in filename and filename == prog_prefix:
            break
    
    subprocess.run(f"mkdir -p {folder}", shell=True)
    with open(f"{write_filename_prefix}.s", "w") as wf:
        wf.write(assembly)

    try:
        output = subprocess.check_output(
            gcc_cmd.format(write_filename_prefix=write_filename_prefix,gcc_flags=make_run_commands['gcc_flags']),
            shell=True,
            timeout=60,
            universal_newlines=True,
            stderr=subprocess.STDOUT,
        )
    except subprocess.CalledProcessError as exc:
        output = exc.output
        for ignore_str in ignore_strs: output = output.replace(ignore_str, "")
        return (False, "GCC", output)
    except subprocess.TimeoutExpired as exc:
        return (False, "GCC", f"Timeout 60s")

    exc_outputs = []
    try:
        # if 'problem22' in filename:
        #     subprocess.run(
        #         f"./verification_image/linux-riscv64-verification sh -c 'wget https://raw.githubusercontent.com/eagletmt/project-euler-c/e25488a68a4f7f162f438655be0ee5dc8696ad4d/20-29/names.txt -P {folder}'",
        #         shell=True,
        #         timeout=60,
        #         universal_newlines=True,
        #         stderr=subprocess.STDOUT,
        #     )
        # if 'problem42' in filename:
        #     subprocess.run(
        #         f"./verification_image/linux-riscv64-verification sh -c 'wget https://raw.githubusercontent.com/eagletmt/project-euler-c/master/40-49/words.txt -P {folder}'",
        #         shell=True,
        #         timeout=60,
        #         universal_newlines=True,
        #         stderr=subprocess.STDOUT,
        #     )
        for setup_cmd in qemu_setup["setup"]:
            setup_cmd = setup_cmd.format(folder=folder)
            subprocess.run(
                f"./verification_image/linux-riscv64-verification sh -c '{setup_cmd}'",
                shell=True,
                timeout=60,
                universal_newlines=True,
                stderr=subprocess.STDOUT,
            )
        qemu_args = qemu_setup["qemu_args"].format(folder=folder)
        output = subprocess.check_output(
            exc_cmd.format(qemu_args=qemu_args),
            shell=True,
            timeout=60,
            universal_newlines=True,
            stderr=subprocess.STDOUT,
        )
        for ignore_str in ignore_strs: output = output.replace(ignore_str, "")
        exc_outputs.append(output)
        for test_cmd in qemu_setup["test"]:
            test_cmd = test_cmd.format(folder=folder)
            output = subprocess.check_output(
                f"./verification_image/linux-riscv64-verification sh -c '{test_cmd}'",
                shell=True,
                timeout=60,
                universal_newlines=True,
                stderr=subprocess.STDOUT,
            )
            for ignore_str in ignore_strs: output = output.replace(ignore_str, "")
            exc_outputs.append(output)
    except:
        for cleanup_cmd in qemu_setup["cleanup"]:
            cleanup_cmd = cleanup_cmd.format(folder=folder)
            subprocess.run(
                f"./verification_image/linux-riscv64-verification sh -c '{cleanup_cmd}'",
                shell=True,
                timeout=60,
                universal_newlines=True,
                stderr=subprocess.STDOUT,
            )
        return (False, "QEMU", None)

    for cleanup_cmd in qemu_setup["cleanup"]:
        cleanup_cmd = cleanup_cmd.format(folder=folder)
        subprocess.run(
            f"./verification_image/linux-riscv64-verification sh -c '{cleanup_cmd}'",
            shell=True,
            timeout=60,
            universal_newlines=True,
            stderr=subprocess.STDOUT,
        )
    return (True, "QEMU", exc_outputs)


def run_qemu(
    assembly,
    filename,
    folder,
    make_run_commands,
    lang,
    container_id="youthful_mayer"#"tpile",
):
    if lang == "arm":
        prefix = "aarch64"
    elif lang == "risc":
        return run_risc_docker(assembly, filename, folder, container_id, make_run_commands)
    as_cmd = make_run_commands["as_cmd"].format(prefix=prefix)
    gcc_cmd = make_run_commands["gcc_cmd"].format(prefix=prefix)
    gcc_flags = make_run_commands["gcc_flags"]
    qemu_cmd = make_run_commands["qemu_cmd"].format(prefix=prefix)
    for prog_prefix, qemu_setup in make_run_commands["qemu_setup"].items():
        if "-" in filename and "-".join(filename.split("-")[:-1]) == prog_prefix:
            break
        elif "-" not in filename and filename == prog_prefix:
            break

    # write assembly string to file in docker
    subprocess.run(f"mkdir -p {folder}", shell=True)
    subprocess.run(f"docker exec {container_id} mkdir -p {folder}", shell=True)
    write_filename_prefix = os.path.join(folder, f"{filename}_{lang}")

    with open(f"{write_filename_prefix}.s", "w") as wf:
        wf.write(assembly)
    subprocess.run(
        f"docker cp {write_filename_prefix}.s {container_id}:{write_filename_prefix}.s",
        shell=True,
    )

    try:
        output = subprocess.check_output(
            f"docker exec {container_id} {as_cmd} {write_filename_prefix}.s -o {write_filename_prefix}.o",
            shell=True,
            timeout=60,
            universal_newlines=True,
            stderr=subprocess.STDOUT,
        )
    except subprocess.CalledProcessError as exc:
        return (False, "AS", exc.output)
    try:
        output = subprocess.check_output(
            f"docker exec {container_id} {gcc_cmd} {write_filename_prefix}.o -o {write_filename_prefix} {gcc_flags}",
            shell=True,
            timeout=60,
            universal_newlines=True,
            stderr=subprocess.STDOUT,
        )
    except subprocess.CalledProcessError as exc:
        return (False, "GCC", exc.output)

    exc_outputs = []
    try:
        for setup_cmd in qemu_setup["setup"]:
            setup_cmd = setup_cmd.format(folder=folder)
            subprocess.run(
                f'docker exec {container_id} timeout 60 /bin/bash -c "{setup_cmd}"',
                shell=True,
                timeout=60,
                universal_newlines=True,
                stderr=subprocess.STDOUT,
            )
        qemu_args = qemu_setup["qemu_args"].format(folder=folder)
        qemu_args = qemu_args.format(folder=folder)
        output = subprocess.check_output(
            f'docker exec {container_id} timeout 60  /bin/bash -c "{qemu_cmd} ./{write_filename_prefix} {qemu_args}"',
            shell=True,
            timeout=60,
            universal_newlines=True,
            stderr=subprocess.STDOUT,
        )
        exc_outputs.append(output)
        for test_cmd in qemu_setup["test"]:
            test_cmd = test_cmd.format(folder=folder)
            output = subprocess.check_output(
                f'docker exec {container_id} timeout 60  /bin/bash -c "{test_cmd}"',
                shell=True,
                timeout=60,
                universal_newlines=True,
                stderr=subprocess.STDOUT,
            )
            exc_outputs.append(output)
    except:
        for cleanup_cmd in qemu_setup["cleanup"]:
            cleanup_cmd = cleanup_cmd.format(folder=folder)
            subprocess.run(
                f'docker exec {container_id} timeout 60  /bin/bash -c "{cleanup_cmd}"',
                shell=True,
                timeout=60,
                universal_newlines=True,
                stderr=subprocess.STDOUT,
            )
        return (False, "QEMU", None)

    for cleanup_cmd in qemu_setup["cleanup"]:
        cleanup_cmd = cleanup_cmd.format(folder=folder)
        subprocess.run(
            f'docker exec {container_id} timeout 60  /bin/bash -c "{cleanup_cmd}"',
            shell=True,
            timeout=60,
            universal_newlines=True,
            stderr=subprocess.STDOUT,
        )
    return (True, "QEMU", exc_outputs)
