for FILE in ../../data/project-euler-c/target_arm/*.arm.s; do
    echo $FILE
    name=${FILE##*/}
    base=${name%.arm.s}
    echo risc_translations/${base}.risc.s
    cat $FILE | python3 arm2riscv.py > risc_translations/${base}.risc.s
done
for FILE in ../../data/benchmarks-game/*.arm.s; do
    echo $FILE
    name=${FILE##*/}
    base=${name%.arm.s}
    echo risc_translations/${base}.risc.s
    cat $FILE | python3 arm2riscv.py > risc_translations/${base}.risc.s
done
for FILE in ../../data/Basic-Unix-Commands-Implementation/*.arm.s; do
    echo $FILE
    name=${FILE##*/}
    base=${name%.arm.s}
    echo risc_translations/${base}.risc.s
    cat $FILE | python3 arm2riscv.py > risc_translations/${base}.risc.s
done

python check_dataset.py risc_translations/