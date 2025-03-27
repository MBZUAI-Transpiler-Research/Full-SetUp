	.file	"fuzzy-match.c"
	.text
	.globl	fuzzy_match
	.type	fuzzy_match, @function
fuzzy_match:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$-1, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	libmin_strlen@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	libmin_strlen@PLT
	movq	%rax, -8(%rbp)
	movl	$100, -20(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L2
	movl	-20(%rbp), %eax
	jmp	.L3
.L2:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L4
	movl	$-2147483648, %eax
	jmp	.L3
.L4:
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	imull	-24(%rbp), %eax
	addl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	fuzzy_match_recurse
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	fuzzy_match, .-fuzzy_match
	.type	fuzzy_match_recurse, @function
fuzzy_match_recurse:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L6
	movl	-52(%rbp), %eax
	jmp	.L11
.L6:
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movb	$0, -9(%rbp)
	movl	$-2147483648, -32(%rbp)
	jmp	.L8
.L9:
	movq	-24(%rbp), %rax
	subq	-48(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	-56(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	compute_score
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	fuzzy_match_recurse
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, -32(%rbp)
	addq	$1, -24(%rbp)
.L8:
	leaq	-10(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcasestr@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L9
	cmpl	$-2147483648, -32(%rbp)
	jne	.L10
	movl	$-2147483648, %eax
	jmp	.L11
.L10:
	movl	-52(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
.L11:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	fuzzy_match_recurse, .-fuzzy_match_recurse
	.type	compute_score, @function
compute_score:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movl	$15, -24(%rbp)
	movl	$30, -20(%rbp)
	movl	$30, -16(%rbp)
	movl	$15, -12(%rbp)
	movl	$-5, -8(%rbp)
	movl	$-15, -4(%rbp)
	movl	$0, -28(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.L14
	cmpl	$0, -36(%rbp)
	jne	.L14
	movl	-24(%rbp), %eax
	addl	%eax, -28(%rbp)
.L14:
	cmpl	$0, -40(%rbp)
	je	.L15
	cmpl	$0, -36(%rbp)
	jle	.L16
.L15:
	movq	_pctype(%rip), %rdx
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L17
	movq	_pctype(%rip), %rax
	movq	-48(%rbp), %rdx
	subq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L17
	movl	-16(%rbp), %eax
	addl	%eax, -28(%rbp)
.L17:
	movq	_pctype(%rip), %rdx
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$7, %eax
	testl	%eax, %eax
	je	.L16
	movq	_pctype(%rip), %rax
	movq	-48(%rbp), %rdx
	subq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L16
	movl	-20(%rbp), %eax
	addl	%eax, -28(%rbp)
.L16:
	cmpl	$0, -40(%rbp)
	je	.L18
	cmpl	$0, -36(%rbp)
	jne	.L18
	movl	-12(%rbp), %eax
	addl	%eax, -28(%rbp)
.L18:
	cmpl	$0, -40(%rbp)
	je	.L19
	movl	-8(%rbp), %eax
	imull	-36(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	addl	%eax, -28(%rbp)
.L19:
	movl	-28(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	compute_score, .-compute_score
	.globl	entries
	.section	.rodata
.LC0:
	.string	"Abomination"
.LC1:
	.string	"Abusive Sergeant"
.LC2:
	.string	"Acidic Swamp Ooze"
.LC3:
	.string	"Acidmaw"
.LC4:
	.string	"Acolyte of Pain"
.LC5:
	.string	"Al'Akir the Windlord"
.LC6:
	.string	"Alarm-o-Bot"
.LC7:
	.string	"Aldor Peacekeeper"
.LC8:
	.string	"Alexstrasza"
.LC9:
	.string	"Alexstrasza's Champion"
.LC10:
	.string	"Amani Berserker"
.LC11:
	.string	"Ancestor's Call"
.LC12:
	.string	"Ancestral Healing"
.LC13:
	.string	"Ancestral Knowledge"
.LC14:
	.string	"Ancestral Spirit"
.LC15:
	.string	"Ancient Brewmaster"
.LC16:
	.string	"Ancient Mage"
.LC17:
	.string	"Ancient of Lore"
.LC18:
	.string	"Ancient of War"
.LC19:
	.string	"Ancient Shade"
.LC20:
	.string	"Ancient Watcher"
.LC21:
	.string	"Angry Chicken"
.LC22:
	.string	"Anima Golem"
.LC23:
	.string	"Animal Companion"
.LC24:
	.string	"Animated Armor"
.LC25:
	.string	"Annoy-o-Tron"
.LC26:
	.string	"Anodized Robo Cub"
.LC27:
	.string	"Antique Healbot"
.LC28:
	.string	"Anub'ar Ambusher"
.LC29:
	.string	"Anub'arak"
.LC30:
	.string	"Anubisath Sentinel"
.LC31:
	.string	"Anyfin Can Happen"
.LC32:
	.string	"Arathi Weaponsmith"
.LC33:
	.string	"Arcane Blast"
.LC34:
	.string	"Arcane Explosion"
.LC35:
	.string	"Arcane Golem"
.LC36:
	.string	"Arcane Intellect"
.LC37:
	.string	"Arcane Missiles"
.LC38:
	.string	"Arcane Nullifier X-21"
.LC39:
	.string	"Arcane Shot"
.LC40:
	.string	"Arcanite Reaper"
.LC41:
	.string	"Arch-Thief Rafaam"
.LC42:
	.string	"Archmage"
.LC43:
	.string	"Archmage Antonidas"
.LC44:
	.string	"Argent Commander"
.LC45:
	.string	"Argent Horserider"
.LC46:
	.string	"Argent Lance"
.LC47:
	.string	"Argent Protector"
.LC48:
	.string	"Argent Squire"
.LC49:
	.string	"Argent Watchman"
.LC50:
	.string	"Armored Warhorse"
.LC51:
	.string	"Armorsmith"
.LC52:
	.string	"Assassin's Blade"
.LC53:
	.string	"Assassinate"
.LC54:
	.string	"Astral Communion"
.LC55:
	.string	"Auchenai Soulpriest"
.LC56:
	.string	"Avenge"
.LC57:
	.string	"Avenging Wrath"
.LC58:
	.string	"Aviana"
.LC59:
	.string	"Axe Flinger"
.LC60:
	.string	"Azure Drake"
.LC61:
	.string	"Backstab"
.LC62:
	.string	"Ball of Spiders"
.LC63:
	.string	"Bane of Doom"
.LC64:
	.string	"Baron Geddon"
.LC65:
	.string	"Baron Rivendare"
.LC66:
	.string	"Bash"
.LC67:
	.string	"Battle Rage"
.LC68:
	.string	"Bear Trap"
.LC69:
	.string	"Beneath the Grounds"
.LC70:
	.string	"Bestial Wrath"
.LC71:
	.string	"Betrayal"
.LC72:
	.string	"Big Game Hunter"
.LC73:
	.string	"Bite"
.LC74:
	.string	"Blackwing Corruptor"
.LC75:
	.string	"Blackwing Technician"
.LC76:
	.string	"Blade Flurry"
.LC77:
	.string	"Blessed Champion"
.LC78:
	.string	"Blessing of Kings"
.LC79:
	.string	"Blessing of Might"
.LC80:
	.string	"Blessing of Wisdom"
.LC81:
	.string	"Blingtron 3000"
.LC82:
	.string	"Blizzard"
.LC83:
	.string	"Blood Imp"
.LC84:
	.string	"Blood Knight"
.LC85:
	.string	"Bloodfen Raptor"
.LC86:
	.string	"Bloodlust"
.LC87:
	.string	"Bloodmage Thalnos"
.LC88:
	.string	"Bloodsail Corsair"
.LC89:
	.string	"Bloodsail Raider"
.LC90:
	.string	"Bluegill Warrior"
.LC91:
	.string	"Bolf Ramshield"
.LC92:
	.string	"Bolster"
.LC93:
	.string	"Bolvar Fordragon"
.LC94:
	.string	"Bomb Lobber"
.LC95:
	.string	"Boneguard Lieutenant"
.LC96:
	.string	"Booty Bay Bodyguard"
.LC97:
	.string	"Boulderfist Ogre"
.LC98:
	.string	"Bouncing Blade"
.LC99:
	.string	"Brann Bronzebeard"
.LC100:
	.string	"Brave Archer"
.LC101:
	.string	"Brawl"
.LC102:
	.string	"Buccaneer"
.LC103:
	.string	"Burgle"
.LC104:
	.string	"Burly Rockjaw Trogg"
.LC105:
	.string	"Cabal Shadow Priest"
.LC106:
	.string	"Cairne Bloodhoof"
.LC107:
	.string	"Call Pet"
.LC108:
	.string	"Captain Greenskin"
.LC109:
	.string	"Captain's Parrot"
.LC110:
	.string	"Captured Jormungar"
.LC111:
	.string	"Cenarius"
.LC112:
	.string	"Charge"
.LC113:
	.string	"Charged Hammer"
.LC114:
	.string	"Chillmaw"
.LC115:
	.string	"Chillwind Yeti"
.LC116:
	.string	"Chromaggus"
.LC117:
	.string	"Circle of Healing"
.LC118:
	.string	"Claw"
.LC119:
	.string	"Cleave"
.LC120:
	.string	"Clockwork Giant"
.LC121:
	.string	"Clockwork Gnome"
.LC122:
	.string	"Clockwork Knight"
.LC123:
	.string	"Cobalt Guardian"
.LC124:
	.string	"Cobra Shot"
.LC125:
	.string	"Coghammer"
.LC126:
	.string	"Cogmaster"
.LC127:
	.string	"Cogmaster's Wrench"
.LC128:
	.string	"Cold Blood"
.LC129:
	.string	"Coldarra Drake"
.LC130:
	.string	"Coldlight Oracle"
.LC131:
	.string	"Coldlight Seer"
.LC132:
	.string	"Coliseum Manager"
.LC133:
	.string	"Commanding Shout"
.LC134:
	.string	"Competitive Spirit"
.LC135:
	.string	"Conceal"
.LC136:
	.string	"Cone of Cold"
.LC137:
	.string	"Confessor Paletress"
.LC138:
	.string	"Confuse"
.LC139:
	.string	"Consecration"
.LC140:
	.string	"Convert"
.LC141:
	.string	"Core Hound"
.LC142:
	.string	"Core Rager"
.LC143:
	.string	"Corruption"
.LC144:
	.string	"Counterspell"
.LC145:
	.string	"Crackle"
.LC146:
	.string	"Crazed Alchemist"
.LC147:
	.string	"Crowd Favorite"
.LC148:
	.string	"Cruel Taskmaster"
.LC149:
	.string	"Crush"
.LC150:
	.string	"Cult Master"
.LC151:
	.string	"Curse of Rafaam"
.LC152:
	.string	"Cursed Blade"
.LC153:
	.string	"Cutpurse"
	.section	.data.rel.local,"aw"
	.align 32
	.type	entries, @object
	.size	entries, 1240
entries:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.quad	.LC32
	.quad	.LC33
	.quad	.LC34
	.quad	.LC35
	.quad	.LC36
	.quad	.LC37
	.quad	.LC38
	.quad	.LC39
	.quad	.LC40
	.quad	.LC41
	.quad	.LC42
	.quad	.LC43
	.quad	.LC44
	.quad	.LC45
	.quad	.LC46
	.quad	.LC47
	.quad	.LC48
	.quad	.LC49
	.quad	.LC50
	.quad	.LC51
	.quad	.LC52
	.quad	.LC53
	.quad	.LC54
	.quad	.LC55
	.quad	.LC56
	.quad	.LC57
	.quad	.LC58
	.quad	.LC59
	.quad	.LC60
	.quad	.LC61
	.quad	.LC62
	.quad	.LC63
	.quad	.LC64
	.quad	.LC65
	.quad	.LC66
	.quad	.LC67
	.quad	.LC68
	.quad	.LC69
	.quad	.LC70
	.quad	.LC71
	.quad	.LC72
	.quad	.LC73
	.quad	.LC74
	.quad	.LC75
	.quad	.LC76
	.quad	.LC77
	.quad	.LC78
	.quad	.LC79
	.quad	.LC80
	.quad	.LC81
	.quad	.LC82
	.quad	.LC83
	.quad	.LC84
	.quad	.LC85
	.quad	.LC86
	.quad	.LC87
	.quad	.LC88
	.quad	.LC89
	.quad	.LC90
	.quad	.LC91
	.quad	.LC92
	.quad	.LC93
	.quad	.LC94
	.quad	.LC95
	.quad	.LC96
	.quad	.LC97
	.quad	.LC98
	.quad	.LC99
	.quad	.LC100
	.quad	.LC101
	.quad	.LC102
	.quad	.LC103
	.quad	.LC104
	.quad	.LC105
	.quad	.LC106
	.quad	.LC107
	.quad	.LC108
	.quad	.LC109
	.quad	.LC110
	.quad	.LC111
	.quad	.LC112
	.quad	.LC113
	.quad	.LC114
	.quad	.LC115
	.quad	.LC116
	.quad	.LC117
	.quad	.LC118
	.quad	.LC119
	.quad	.LC120
	.quad	.LC121
	.quad	.LC122
	.quad	.LC123
	.quad	.LC124
	.quad	.LC125
	.quad	.LC126
	.quad	.LC127
	.quad	.LC128
	.quad	.LC129
	.quad	.LC130
	.quad	.LC131
	.quad	.LC132
	.quad	.LC133
	.quad	.LC134
	.quad	.LC135
	.quad	.LC136
	.quad	.LC137
	.quad	.LC138
	.quad	.LC139
	.quad	.LC140
	.quad	.LC141
	.quad	.LC142
	.quad	.LC143
	.quad	.LC144
	.quad	.LC145
	.quad	.LC146
	.quad	.LC147
	.quad	.LC148
	.quad	.LC149
	.quad	.LC150
	.quad	.LC151
	.quad	.LC152
	.quad	.LC153
	.quad	0
	.section	.rodata
.LC154:
	.string	"core"
.LC155:
	.string	"Matches for `%s':\n"
.LC156:
	.string	"  %3d|%s\n"
.LC157:
	.string	"\n"
.LC158:
	.string	"work"
.LC159:
	.string	"sam"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	leaq	.LC154(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC155(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$0, -48(%rbp)
	jmp	.L22
.L24:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	entries(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fuzzy_match
	movl	%eax, -28(%rbp)
	cmpl	$-2147483648, -28(%rbp)
	je	.L23
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	entries(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC156(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
.L23:
	addl	$1, -48(%rbp)
.L22:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	entries(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	jne	.L24
	leaq	.LC157(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC158(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC155(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$0, -44(%rbp)
	jmp	.L25
.L27:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	entries(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fuzzy_match
	movl	%eax, -32(%rbp)
	cmpl	$-2147483648, -32(%rbp)
	je	.L26
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	entries(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC156(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
.L26:
	addl	$1, -44(%rbp)
.L25:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	entries(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	jne	.L27
	leaq	.LC157(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC159(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC155(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$0, -40(%rbp)
	jmp	.L28
.L30:
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	entries(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fuzzy_match
	movl	%eax, -36(%rbp)
	cmpl	$-2147483648, -36(%rbp)
	je	.L29
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	entries(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC156(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
.L29:
	addl	$1, -40(%rbp)
.L28:
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	entries(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	jne	.L30
	leaq	.LC157(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
