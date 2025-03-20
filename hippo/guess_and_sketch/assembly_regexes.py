import re

insns_with_methodnames = [
    (re.compile("((jal|j|call|bne|beq|bl[ste]?|bhi|b)\s+)((?!\.)\S+)"), 3),
    (re.compile("(adrp\s+[a-z][0-9],\s*)((?!\.)\S+)"), 2),
    (re.compile("(add\s+[a-z][0-9],\s*[a-z][0-9],\s*:lo12:)((?!\.)\S+)"), 2),
]
directives_regex = "(\s\.(size|ident|section|align|text|global|type).*|\S+:)"
arm_cutoff_insns = [
    re.compile("(st|ld)[rp]?\S*\s+\S+,\s*[^\n]+\s*"),  # ldr or str mem into reg
    re.compile("\.cfi_[^\n]+\s*"),  # cfi directives
    re.compile("[\S\s]+,\s*sp\s*"),  # anything with sp
    re.compile("adrp\s+[a-z]+\d*,\s*.+\s*"),  # load addr w offset into reg
    re.compile("b(ne|eq|l[ste]?|hi)\s+(\S+)\s*"),  # branching
    re.compile("j(|r)\s+(\S+)\s*"),  # call fn
    re.compile("cm[np]\s+[a-z]+\d*,\s*\S+\s*"),  # any comparison operators
    re.compile("csel\s+([a-z]+\d*),\s*([a-z]+\d*),\s*([a-z]+\d*),\s*(eq|lt|gt)\s*"),  # conditional select operators
    re.compile("csetm?\s+([a-z]+\d*),\s*(ne|eq|cs|hs|cc|lo|mi|pl|vs|vc|hi|ls|ge|lt|gt|le|al)\s*"),  # conditional set
    # re.compile("f?mov\s+[a-z]+\d*,\s*[a-z]+\d*\s*"),  # reg to reg transfer
    re.compile("(sub|add)\s+[a-z]+\d*,\s*sp,\s*\S+\s*"),  # loading addr from stack
    re.compile(
        "[ufs]cvt[famnpz][su]?\s+[a-z]+\d*,\s*[a-z]+\d*\s*"
    ),  # float conversion
    # re.compile("[u]xt[bhw]\s+[a-z]+\d*,\s*[a-z]+\d*\s*"),  # reg to regcextend
    re.compile(f"{directives_regex}[\s\S]*"),  # section boundaries
]
risc_cutoff_insns = [
    re.compile("f?l(bu?|hu?|wu?|d)\s+\S+,\s*[^\n]+\s*"),  # ldr mem into reg
    re.compile("s[dwbh]\s+\S+,\s*[^\n]+\s*"),  # store reg into mem
    re.compile("[\S\s]+,\s*sp\s*"),  # anything with sp
    re.compile("b(leu?|eq|gtu?|ltu?|geu?|ls)\s+(\S+),\s*(\S+),\s*(\S+)\s*"),  # branching
    re.compile("j(|r)\s+(\S+)\s*"),  # call fn
    re.compile("b(|ne|l)\s+(\S+)\s*"),  # branching
    re.compile("addi?\s+[a-z]+\d*,\s*sp,\s*\S+\s*"),  # loading addr from stack
    re.compile("call\s+(\S+)\s*"),  # call function
    # re.compile("(sext|fmv)\..\s+[a-z]+\d*,\s*[a-z]+\d*\s*"),  # reg to reg transfer
    re.compile(
        "fcvt\.[a-z]+\.[a-z]+\s+[a-z]+\d*,\s*[a-z]+\d*.*"
    ),  # float conversion
    re.compile('lla\s+([a-z]+\d*),\s*(\S+)\s*'), # lla a fn in
    re.compile('la\s+([a-z]+\d*),\s*([a-z_]+)$'), # la a function
    # re.compile("mv\s+[a-z]+\d*,\s*[a-z]+\d*\s*"),  # reg to reg transfer
    re.compile(f"{directives_regex}[\s\S]*"),  # section boundaries
    re.compile("s(eq|ne|lt|gt)z\s+([a-z]+\d*),\s*([a-z]+\d*)"), # comparator
    re.compile("f(eq|le|lt)\.[sd]\s+([a-z]+\d*),\s*([a-z]+\d*),\s*([a-z]+\d*)"), # reg comparator
    re.compile("(s[lg]tu?)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*([a-z]+\d*)") # signed comparator
]
insn_resolve_global = [
    # (pred regex, src regex, annotation template)
    (re.compile('lla\s+[a-z]+\d*,\s*(\.LC\d+)\s*$'), re.compile('(mov.*|fmov\s+[a-z]+\d*,\s+-?\d+\.\d+e[\+-]\d+|ad.+\.LC\d+)\s*$'), "<<{orig}:{annotation}>>"), # arm -> risc
    (re.compile('fmov\s+[a-z]+\d*,\s*(-?\d+\.\d+e[\+-]\d+)\s*$'), re.compile('lla\s+[a-z]+\d*,\s*(\.LC\d+)\s*$'), "<<{annotation}>>"), # risc -> arm
    (re.compile('\.string\s+(\".*)$'), re.compile('\.string\s+(\".*)$'), "{annotation}"), # risc <-> arm constant copying in cloze
    (re.compile('\.ascii\s+(\".*)$'), re.compile('\.ascii\s+(\".*)$'), "{annotation}"), # risc <-> arm constant copying in cloze
    (re.compile('\.word\s+(\".*)$'), re.compile('\.word\s+(\".*)$'), "{annotation}"), # risc <-> arm constant copying in cloze
]
imm_regex = re.compile(",\s*(-?\d+\.\d+e[+|-]\d+|#\d+|-?0x[0-9a-fA-F]+|(-?\d+)(?!\())")
register_regex = re.compile("[a-z]+\d+")

reg3 = re.compile("\s*(\S+)\s+([a-z]+\d+?),\s*([a-z]+\d+?),\s*(.+?)\n")
reg2 = re.compile("\s*(\S+)\s+([a-z]+\d+?),\s*(.+?)\n")
reg4_holed = re.compile(
    "\s*(\S+)\s+([a-z]+\d+?|\?\?),\s*([a-z]+\d+?|\?\?),\s*([a-z]+\d+?|\?\?|#?-?\d+),\s*(.+?)\n"
)
reg3_holed = re.compile("\s*(\S+)\s+([a-z]+\d+?|\?\?),\s*([a-z]+\d+?|\?\?),\s*(.+?)\n")
reg2_holed = re.compile("\s*(\S+)\s+([a-z]+\d+?|\?\?),\s*(.+?)\n")
