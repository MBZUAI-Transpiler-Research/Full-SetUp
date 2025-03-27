	.arch armv8-a
	.file	"fuzzy-match.c"
	.text
	.align	2
	.global	fuzzy_match
	.type	fuzzy_match, %function
fuzzy_match:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	w0, -1
	str	w0, [sp, 40]
	ldr	x0, [sp, 16]
	bl	libmin_strlen
	str	x0, [sp, 48]
	ldr	x0, [sp, 24]
	bl	libmin_strlen
	str	x0, [sp, 56]
	mov	w0, 100
	str	w0, [sp, 44]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L2
	ldr	w0, [sp, 44]
	b	.L3
.L2:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	bcs	.L4
	mov	w0, -2147483648
	b	.L3
.L4:
	ldr	x0, [sp, 48]
	mov	w1, w0
	ldr	x0, [sp, 56]
	sub	w0, w1, w0
	mov	w1, w0
	ldr	w0, [sp, 40]
	mul	w0, w1, w0
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	mov	w3, 1
	ldr	w2, [sp, 44]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	fuzzy_match_recurse
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
.L3:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	fuzzy_match, .-fuzzy_match
	.align	2
	.type	fuzzy_match_recurse, %function
fuzzy_match_recurse:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 64
	stp	x19, x20, [sp, 80]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	str	w3, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 12]
	b	.L11
.L6:
	ldr	x0, [sp, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	strb	w0, [sp, 48]
	strb	wzr, [sp, 49]
	mov	w0, -2147483648
	str	w0, [sp, 32]
	b	.L8
.L9:
	ldr	x0, [sp, 24]
	add	x19, x0, 1
	ldr	x0, [sp, 40]
	add	x20, x0, 1
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 16]
	sub	x0, x1, x0
	ldr	x2, [sp, 40]
	ldr	w1, [sp, 8]
	bl	compute_score
	mov	w3, 0
	mov	w2, w0
	mov	x1, x20
	mov	x0, x19
	bl	fuzzy_match_recurse
	str	w0, [sp, 36]
	ldr	w0, [sp, 32]
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 36]
	cmp	w2, w0
	csel	w0, w1, w0, ge
	str	w0, [sp, 32]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L8:
	add	x0, sp, 48
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	libmin_strcasestr
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L9
	ldr	w1, [sp, 32]
	mov	w0, -2147483648
	cmp	w1, w0
	bne	.L10
	mov	w0, -2147483648
	b	.L11
.L10:
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 32]
	add	w0, w1, w0
.L11:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L12
	bl	__stack_chk_fail
.L12:
	mov	w0, w1
	ldp	x19, x20, [sp, 80]
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	fuzzy_match_recurse, .-fuzzy_match_recurse
	.align	2
	.type	compute_score, %function
compute_score:
.LFB5:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	x2, [sp]
	mov	w0, 15
	str	w0, [sp, 24]
	mov	w0, 30
	str	w0, [sp, 28]
	mov	w0, 30
	str	w0, [sp, 32]
	mov	w0, 15
	str	w0, [sp, 36]
	mov	w0, -5
	str	w0, [sp, 40]
	mov	w0, -15
	str	w0, [sp, 44]
	str	wzr, [sp, 20]
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bne	.L14
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L14
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 20]
.L14:
	ldr	w0, [sp, 8]
	cmp	w0, 0
	beq	.L15
	ldr	w0, [sp, 12]
	cmp	w0, 0
	ble	.L16
.L15:
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L17
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x1, [x0]
	ldr	x0, [sp]
	sub	x0, x0, #1
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 2
	cmp	w0, 0
	beq	.L17
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 32]
	add	w0, w1, w0
	str	w0, [sp, 20]
.L17:
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 7
	cmp	w0, 0
	beq	.L16
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x1, [x0]
	ldr	x0, [sp]
	sub	x0, x0, #1
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 7
	cmp	w0, 0
	bne	.L16
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	str	w0, [sp, 20]
.L16:
	ldr	w0, [sp, 8]
	cmp	w0, 0
	beq	.L18
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L18
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 36]
	add	w0, w1, w0
	str	w0, [sp, 20]
.L18:
	ldr	w0, [sp, 8]
	cmp	w0, 0
	beq	.L19
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 12]
	mul	w0, w1, w0
	ldr	w2, [sp, 44]
	ldr	w1, [sp, 44]
	cmp	w2, w0
	csel	w0, w1, w0, ge
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
.L19:
	ldr	w0, [sp, 20]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	compute_score, .-compute_score
	.global	entries
	.section	.rodata
	.align	3
.LC0:
	.string	"Abomination"
	.align	3
.LC1:
	.string	"Abusive Sergeant"
	.align	3
.LC2:
	.string	"Acidic Swamp Ooze"
	.align	3
.LC3:
	.string	"Acidmaw"
	.align	3
.LC4:
	.string	"Acolyte of Pain"
	.align	3
.LC5:
	.string	"Al'Akir the Windlord"
	.align	3
.LC6:
	.string	"Alarm-o-Bot"
	.align	3
.LC7:
	.string	"Aldor Peacekeeper"
	.align	3
.LC8:
	.string	"Alexstrasza"
	.align	3
.LC9:
	.string	"Alexstrasza's Champion"
	.align	3
.LC10:
	.string	"Amani Berserker"
	.align	3
.LC11:
	.string	"Ancestor's Call"
	.align	3
.LC12:
	.string	"Ancestral Healing"
	.align	3
.LC13:
	.string	"Ancestral Knowledge"
	.align	3
.LC14:
	.string	"Ancestral Spirit"
	.align	3
.LC15:
	.string	"Ancient Brewmaster"
	.align	3
.LC16:
	.string	"Ancient Mage"
	.align	3
.LC17:
	.string	"Ancient of Lore"
	.align	3
.LC18:
	.string	"Ancient of War"
	.align	3
.LC19:
	.string	"Ancient Shade"
	.align	3
.LC20:
	.string	"Ancient Watcher"
	.align	3
.LC21:
	.string	"Angry Chicken"
	.align	3
.LC22:
	.string	"Anima Golem"
	.align	3
.LC23:
	.string	"Animal Companion"
	.align	3
.LC24:
	.string	"Animated Armor"
	.align	3
.LC25:
	.string	"Annoy-o-Tron"
	.align	3
.LC26:
	.string	"Anodized Robo Cub"
	.align	3
.LC27:
	.string	"Antique Healbot"
	.align	3
.LC28:
	.string	"Anub'ar Ambusher"
	.align	3
.LC29:
	.string	"Anub'arak"
	.align	3
.LC30:
	.string	"Anubisath Sentinel"
	.align	3
.LC31:
	.string	"Anyfin Can Happen"
	.align	3
.LC32:
	.string	"Arathi Weaponsmith"
	.align	3
.LC33:
	.string	"Arcane Blast"
	.align	3
.LC34:
	.string	"Arcane Explosion"
	.align	3
.LC35:
	.string	"Arcane Golem"
	.align	3
.LC36:
	.string	"Arcane Intellect"
	.align	3
.LC37:
	.string	"Arcane Missiles"
	.align	3
.LC38:
	.string	"Arcane Nullifier X-21"
	.align	3
.LC39:
	.string	"Arcane Shot"
	.align	3
.LC40:
	.string	"Arcanite Reaper"
	.align	3
.LC41:
	.string	"Arch-Thief Rafaam"
	.align	3
.LC42:
	.string	"Archmage"
	.align	3
.LC43:
	.string	"Archmage Antonidas"
	.align	3
.LC44:
	.string	"Argent Commander"
	.align	3
.LC45:
	.string	"Argent Horserider"
	.align	3
.LC46:
	.string	"Argent Lance"
	.align	3
.LC47:
	.string	"Argent Protector"
	.align	3
.LC48:
	.string	"Argent Squire"
	.align	3
.LC49:
	.string	"Argent Watchman"
	.align	3
.LC50:
	.string	"Armored Warhorse"
	.align	3
.LC51:
	.string	"Armorsmith"
	.align	3
.LC52:
	.string	"Assassin's Blade"
	.align	3
.LC53:
	.string	"Assassinate"
	.align	3
.LC54:
	.string	"Astral Communion"
	.align	3
.LC55:
	.string	"Auchenai Soulpriest"
	.align	3
.LC56:
	.string	"Avenge"
	.align	3
.LC57:
	.string	"Avenging Wrath"
	.align	3
.LC58:
	.string	"Aviana"
	.align	3
.LC59:
	.string	"Axe Flinger"
	.align	3
.LC60:
	.string	"Azure Drake"
	.align	3
.LC61:
	.string	"Backstab"
	.align	3
.LC62:
	.string	"Ball of Spiders"
	.align	3
.LC63:
	.string	"Bane of Doom"
	.align	3
.LC64:
	.string	"Baron Geddon"
	.align	3
.LC65:
	.string	"Baron Rivendare"
	.align	3
.LC66:
	.string	"Bash"
	.align	3
.LC67:
	.string	"Battle Rage"
	.align	3
.LC68:
	.string	"Bear Trap"
	.align	3
.LC69:
	.string	"Beneath the Grounds"
	.align	3
.LC70:
	.string	"Bestial Wrath"
	.align	3
.LC71:
	.string	"Betrayal"
	.align	3
.LC72:
	.string	"Big Game Hunter"
	.align	3
.LC73:
	.string	"Bite"
	.align	3
.LC74:
	.string	"Blackwing Corruptor"
	.align	3
.LC75:
	.string	"Blackwing Technician"
	.align	3
.LC76:
	.string	"Blade Flurry"
	.align	3
.LC77:
	.string	"Blessed Champion"
	.align	3
.LC78:
	.string	"Blessing of Kings"
	.align	3
.LC79:
	.string	"Blessing of Might"
	.align	3
.LC80:
	.string	"Blessing of Wisdom"
	.align	3
.LC81:
	.string	"Blingtron 3000"
	.align	3
.LC82:
	.string	"Blizzard"
	.align	3
.LC83:
	.string	"Blood Imp"
	.align	3
.LC84:
	.string	"Blood Knight"
	.align	3
.LC85:
	.string	"Bloodfen Raptor"
	.align	3
.LC86:
	.string	"Bloodlust"
	.align	3
.LC87:
	.string	"Bloodmage Thalnos"
	.align	3
.LC88:
	.string	"Bloodsail Corsair"
	.align	3
.LC89:
	.string	"Bloodsail Raider"
	.align	3
.LC90:
	.string	"Bluegill Warrior"
	.align	3
.LC91:
	.string	"Bolf Ramshield"
	.align	3
.LC92:
	.string	"Bolster"
	.align	3
.LC93:
	.string	"Bolvar Fordragon"
	.align	3
.LC94:
	.string	"Bomb Lobber"
	.align	3
.LC95:
	.string	"Boneguard Lieutenant"
	.align	3
.LC96:
	.string	"Booty Bay Bodyguard"
	.align	3
.LC97:
	.string	"Boulderfist Ogre"
	.align	3
.LC98:
	.string	"Bouncing Blade"
	.align	3
.LC99:
	.string	"Brann Bronzebeard"
	.align	3
.LC100:
	.string	"Brave Archer"
	.align	3
.LC101:
	.string	"Brawl"
	.align	3
.LC102:
	.string	"Buccaneer"
	.align	3
.LC103:
	.string	"Burgle"
	.align	3
.LC104:
	.string	"Burly Rockjaw Trogg"
	.align	3
.LC105:
	.string	"Cabal Shadow Priest"
	.align	3
.LC106:
	.string	"Cairne Bloodhoof"
	.align	3
.LC107:
	.string	"Call Pet"
	.align	3
.LC108:
	.string	"Captain Greenskin"
	.align	3
.LC109:
	.string	"Captain's Parrot"
	.align	3
.LC110:
	.string	"Captured Jormungar"
	.align	3
.LC111:
	.string	"Cenarius"
	.align	3
.LC112:
	.string	"Charge"
	.align	3
.LC113:
	.string	"Charged Hammer"
	.align	3
.LC114:
	.string	"Chillmaw"
	.align	3
.LC115:
	.string	"Chillwind Yeti"
	.align	3
.LC116:
	.string	"Chromaggus"
	.align	3
.LC117:
	.string	"Circle of Healing"
	.align	3
.LC118:
	.string	"Claw"
	.align	3
.LC119:
	.string	"Cleave"
	.align	3
.LC120:
	.string	"Clockwork Giant"
	.align	3
.LC121:
	.string	"Clockwork Gnome"
	.align	3
.LC122:
	.string	"Clockwork Knight"
	.align	3
.LC123:
	.string	"Cobalt Guardian"
	.align	3
.LC124:
	.string	"Cobra Shot"
	.align	3
.LC125:
	.string	"Coghammer"
	.align	3
.LC126:
	.string	"Cogmaster"
	.align	3
.LC127:
	.string	"Cogmaster's Wrench"
	.align	3
.LC128:
	.string	"Cold Blood"
	.align	3
.LC129:
	.string	"Coldarra Drake"
	.align	3
.LC130:
	.string	"Coldlight Oracle"
	.align	3
.LC131:
	.string	"Coldlight Seer"
	.align	3
.LC132:
	.string	"Coliseum Manager"
	.align	3
.LC133:
	.string	"Commanding Shout"
	.align	3
.LC134:
	.string	"Competitive Spirit"
	.align	3
.LC135:
	.string	"Conceal"
	.align	3
.LC136:
	.string	"Cone of Cold"
	.align	3
.LC137:
	.string	"Confessor Paletress"
	.align	3
.LC138:
	.string	"Confuse"
	.align	3
.LC139:
	.string	"Consecration"
	.align	3
.LC140:
	.string	"Convert"
	.align	3
.LC141:
	.string	"Core Hound"
	.align	3
.LC142:
	.string	"Core Rager"
	.align	3
.LC143:
	.string	"Corruption"
	.align	3
.LC144:
	.string	"Counterspell"
	.align	3
.LC145:
	.string	"Crackle"
	.align	3
.LC146:
	.string	"Crazed Alchemist"
	.align	3
.LC147:
	.string	"Crowd Favorite"
	.align	3
.LC148:
	.string	"Cruel Taskmaster"
	.align	3
.LC149:
	.string	"Crush"
	.align	3
.LC150:
	.string	"Cult Master"
	.align	3
.LC151:
	.string	"Curse of Rafaam"
	.align	3
.LC152:
	.string	"Cursed Blade"
	.align	3
.LC153:
	.string	"Cutpurse"
	.section	.data.rel.local,"aw"
	.align	3
	.type	entries, %object
	.size	entries, 1240
entries:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.xword	.LC7
	.xword	.LC8
	.xword	.LC9
	.xword	.LC10
	.xword	.LC11
	.xword	.LC12
	.xword	.LC13
	.xword	.LC14
	.xword	.LC15
	.xword	.LC16
	.xword	.LC17
	.xword	.LC18
	.xword	.LC19
	.xword	.LC20
	.xword	.LC21
	.xword	.LC22
	.xword	.LC23
	.xword	.LC24
	.xword	.LC25
	.xword	.LC26
	.xword	.LC27
	.xword	.LC28
	.xword	.LC29
	.xword	.LC30
	.xword	.LC31
	.xword	.LC32
	.xword	.LC33
	.xword	.LC34
	.xword	.LC35
	.xword	.LC36
	.xword	.LC37
	.xword	.LC38
	.xword	.LC39
	.xword	.LC40
	.xword	.LC41
	.xword	.LC42
	.xword	.LC43
	.xword	.LC44
	.xword	.LC45
	.xword	.LC46
	.xword	.LC47
	.xword	.LC48
	.xword	.LC49
	.xword	.LC50
	.xword	.LC51
	.xword	.LC52
	.xword	.LC53
	.xword	.LC54
	.xword	.LC55
	.xword	.LC56
	.xword	.LC57
	.xword	.LC58
	.xword	.LC59
	.xword	.LC60
	.xword	.LC61
	.xword	.LC62
	.xword	.LC63
	.xword	.LC64
	.xword	.LC65
	.xword	.LC66
	.xword	.LC67
	.xword	.LC68
	.xword	.LC69
	.xword	.LC70
	.xword	.LC71
	.xword	.LC72
	.xword	.LC73
	.xword	.LC74
	.xword	.LC75
	.xword	.LC76
	.xword	.LC77
	.xword	.LC78
	.xword	.LC79
	.xword	.LC80
	.xword	.LC81
	.xword	.LC82
	.xword	.LC83
	.xword	.LC84
	.xword	.LC85
	.xword	.LC86
	.xword	.LC87
	.xword	.LC88
	.xword	.LC89
	.xword	.LC90
	.xword	.LC91
	.xword	.LC92
	.xword	.LC93
	.xword	.LC94
	.xword	.LC95
	.xword	.LC96
	.xword	.LC97
	.xword	.LC98
	.xword	.LC99
	.xword	.LC100
	.xword	.LC101
	.xword	.LC102
	.xword	.LC103
	.xword	.LC104
	.xword	.LC105
	.xword	.LC106
	.xword	.LC107
	.xword	.LC108
	.xword	.LC109
	.xword	.LC110
	.xword	.LC111
	.xword	.LC112
	.xword	.LC113
	.xword	.LC114
	.xword	.LC115
	.xword	.LC116
	.xword	.LC117
	.xword	.LC118
	.xword	.LC119
	.xword	.LC120
	.xword	.LC121
	.xword	.LC122
	.xword	.LC123
	.xword	.LC124
	.xword	.LC125
	.xword	.LC126
	.xword	.LC127
	.xword	.LC128
	.xword	.LC129
	.xword	.LC130
	.xword	.LC131
	.xword	.LC132
	.xword	.LC133
	.xword	.LC134
	.xword	.LC135
	.xword	.LC136
	.xword	.LC137
	.xword	.LC138
	.xword	.LC139
	.xword	.LC140
	.xword	.LC141
	.xword	.LC142
	.xword	.LC143
	.xword	.LC144
	.xword	.LC145
	.xword	.LC146
	.xword	.LC147
	.xword	.LC148
	.xword	.LC149
	.xword	.LC150
	.xword	.LC151
	.xword	.LC152
	.xword	.LC153
	.xword	0
	.section	.rodata
	.align	3
.LC154:
	.string	"core"
	.align	3
.LC155:
	.string	"Matches for `%s':\n"
	.align	3
.LC156:
	.string	"  %3d|%s\n"
	.align	3
.LC157:
	.string	"\n"
	.align	3
.LC158:
	.string	"work"
	.align	3
.LC159:
	.string	"sam"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	adrp	x0, .LC154
	add	x0, x0, :lo12:.LC154
	str	x0, [sp, 40]
	ldr	x1, [sp, 40]
	adrp	x0, .LC155
	add	x0, x0, :lo12:.LC155
	bl	libmin_printf
	str	wzr, [sp, 16]
	b	.L22
.L24:
	adrp	x0, entries
	add	x0, x0, :lo12:entries
	ldrsw	x1, [sp, 16]
	ldr	x0, [x0, x1, lsl 3]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	fuzzy_match
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	mov	w0, -2147483648
	cmp	w1, w0
	beq	.L23
	adrp	x0, entries
	add	x0, x0, :lo12:entries
	ldrsw	x1, [sp, 16]
	ldr	x0, [x0, x1, lsl 3]
	mov	x2, x0
	ldr	w1, [sp, 36]
	adrp	x0, .LC156
	add	x0, x0, :lo12:.LC156
	bl	libmin_printf
.L23:
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L22:
	adrp	x0, entries
	add	x0, x0, :lo12:entries
	ldrsw	x1, [sp, 16]
	ldr	x0, [x0, x1, lsl 3]
	cmp	x0, 0
	bne	.L24
	adrp	x0, .LC157
	add	x0, x0, :lo12:.LC157
	bl	libmin_printf
	adrp	x0, .LC158
	add	x0, x0, :lo12:.LC158
	str	x0, [sp, 48]
	ldr	x1, [sp, 48]
	adrp	x0, .LC155
	add	x0, x0, :lo12:.LC155
	bl	libmin_printf
	str	wzr, [sp, 20]
	b	.L25
.L27:
	adrp	x0, entries
	add	x0, x0, :lo12:entries
	ldrsw	x1, [sp, 20]
	ldr	x0, [x0, x1, lsl 3]
	mov	x1, x0
	ldr	x0, [sp, 48]
	bl	fuzzy_match
	str	w0, [sp, 32]
	ldr	w1, [sp, 32]
	mov	w0, -2147483648
	cmp	w1, w0
	beq	.L26
	adrp	x0, entries
	add	x0, x0, :lo12:entries
	ldrsw	x1, [sp, 20]
	ldr	x0, [x0, x1, lsl 3]
	mov	x2, x0
	ldr	w1, [sp, 32]
	adrp	x0, .LC156
	add	x0, x0, :lo12:.LC156
	bl	libmin_printf
.L26:
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L25:
	adrp	x0, entries
	add	x0, x0, :lo12:entries
	ldrsw	x1, [sp, 20]
	ldr	x0, [x0, x1, lsl 3]
	cmp	x0, 0
	bne	.L27
	adrp	x0, .LC157
	add	x0, x0, :lo12:.LC157
	bl	libmin_printf
	adrp	x0, .LC159
	add	x0, x0, :lo12:.LC159
	str	x0, [sp, 56]
	ldr	x1, [sp, 56]
	adrp	x0, .LC155
	add	x0, x0, :lo12:.LC155
	bl	libmin_printf
	str	wzr, [sp, 24]
	b	.L28
.L30:
	adrp	x0, entries
	add	x0, x0, :lo12:entries
	ldrsw	x1, [sp, 24]
	ldr	x0, [x0, x1, lsl 3]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	fuzzy_match
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	mov	w0, -2147483648
	cmp	w1, w0
	beq	.L29
	adrp	x0, entries
	add	x0, x0, :lo12:entries
	ldrsw	x1, [sp, 24]
	ldr	x0, [x0, x1, lsl 3]
	mov	x2, x0
	ldr	w1, [sp, 28]
	adrp	x0, .LC156
	add	x0, x0, :lo12:.LC156
	bl	libmin_printf
.L29:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L28:
	adrp	x0, entries
	add	x0, x0, :lo12:entries
	ldrsw	x1, [sp, 24]
	ldr	x0, [x0, x1, lsl 3]
	cmp	x0, 0
	bne	.L30
	adrp	x0, .LC157
	add	x0, x0, :lo12:.LC157
	bl	libmin_printf
	bl	libmin_success
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
