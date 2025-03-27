	.file	"fuzzy-match.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	fuzzy_match
	.type	fuzzy_match, @function
fuzzy_match:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	li	a5,-1
	sw	a5,-40(s0)
	ld	a0,-64(s0)
	call	libmin_strlen@plt
	sd	a0,-32(s0)
	ld	a0,-56(s0)
	call	libmin_strlen@plt
	sd	a0,-24(s0)
	li	a5,100
	sw	a5,-36(s0)
	ld	a5,-56(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L2
	lw	a5,-36(s0)
	j	.L3
.L2:
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	bgeu	a4,a5,.L4
	li	a5,-2147483648
	j	.L3
.L4:
	ld	a5,-32(s0)
	sext.w	a4,a5
	ld	a5,-24(s0)
	sext.w	a5,a5
	subw	a5,a4,a5
	sext.w	a5,a5
	sext.w	a5,a5
	lw	a4,-40(s0)
	mulw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-36(s0)
	addw	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	li	a3,1
	mv	a2,a5
	ld	a1,-64(s0)
	ld	a0,-56(s0)
	call	fuzzy_match_recurse
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-36(s0)
.L3:
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	fuzzy_match, .-fuzzy_match
	.align	1
	.type	fuzzy_match_recurse, @function
fuzzy_match_recurse:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	sd	s1,72(sp)
	sd	s2,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	sd	a1,-80(s0)
	mv	a5,a2
	mv	a4,a3
	sw	a5,-84(s0)
	mv	a5,a4
	sw	a5,-88(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -40(s0)
	li	a4, 0
	ld	a5,-72(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L6
	lw	a5,-84(s0)
	j	.L12
.L6:
	ld	a5,-80(s0)
	sd	a5,-56(s0)
	ld	a5,-72(s0)
	lbu	a5,0(a5)
	sb	a5,-48(s0)
	sb	zero,-47(s0)
	li	a5,-2147483648
	sw	a5,-64(s0)
	j	.L8
.L10:
	ld	a5,-72(s0)
	addi	s1,a5,1
	ld	a5,-56(s0)
	addi	s2,a5,1
	ld	a4,-56(s0)
	ld	a5,-80(s0)
	sub	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-88(s0)
	ld	a2,-56(s0)
	mv	a1,a4
	mv	a0,a5
	call	compute_score
	mv	a5,a0
	li	a3,0
	mv	a2,a5
	mv	a1,s2
	mv	a0,s1
	call	fuzzy_match_recurse
	mv	a5,a0
	sw	a5,-60(s0)
	lw	a5,-64(s0)
	mv	a2,a5
	lw	a5,-60(s0)
	sext.w	a3,a5
	sext.w	a4,a2
	bge	a3,a4,.L9
	mv	a5,a2
.L9:
	sw	a5,-64(s0)
	ld	a5,-56(s0)
	addi	a5,a5,1
	sd	a5,-56(s0)
.L8:
	addi	a5,s0,-48
	mv	a1,a5
	ld	a0,-56(s0)
	call	libmin_strcasestr@plt
	sd	a0,-56(s0)
	ld	a5,-56(s0)
	bne	a5,zero,.L10
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,-2147483648
	bne	a4,a5,.L11
	li	a5,-2147483648
	j	.L12
.L11:
	lw	a5,-84(s0)
	mv	a4,a5
	lw	a5,-64(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
.L12:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -40(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L13
	call	__stack_chk_fail@plt
.L13:
	mv	a0,a4
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	ld	s1,72(sp)
	.cfi_restore 9
	ld	s2,64(sp)
	.cfi_restore 18
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	fuzzy_match_recurse, .-fuzzy_match_recurse
	.align	1
	.type	compute_score, @function
compute_score:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sd	a2,-64(s0)
	sw	a5,-52(s0)
	mv	a5,a4
	sw	a5,-56(s0)
	li	a5,15
	sw	a5,-40(s0)
	li	a5,30
	sw	a5,-36(s0)
	li	a5,30
	sw	a5,-32(s0)
	li	a5,15
	sw	a5,-28(s0)
	li	a5,-5
	sw	a5,-24(s0)
	li	a5,-15
	sw	a5,-20(s0)
	sw	zero,-44(s0)
	lw	a5,-56(s0)
	sext.w	a5,a5
	bne	a5,zero,.L15
	lw	a5,-52(s0)
	sext.w	a5,a5
	bne	a5,zero,.L15
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	addw	a5,a4,a5
	sw	a5,-44(s0)
.L15:
	lw	a5,-56(s0)
	sext.w	a5,a5
	beq	a5,zero,.L16
	lw	a5,-52(s0)
	sext.w	a5,a5
	ble	a5,zero,.L17
.L16:
	la	a5,_pctype
	ld	a4,0(a5)
	ld	a5,-64(s0)
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L18
	la	a5,_pctype
	ld	a4,0(a5)
	ld	a5,-64(s0)
	addi	a5,a5,-1
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,2
	sext.w	a5,a5
	beq	a5,zero,.L18
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-32(s0)
	addw	a5,a4,a5
	sw	a5,-44(s0)
.L18:
	la	a5,_pctype
	ld	a4,0(a5)
	ld	a5,-64(s0)
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,7
	sext.w	a5,a5
	beq	a5,zero,.L17
	la	a5,_pctype
	ld	a4,0(a5)
	ld	a5,-64(s0)
	addi	a5,a5,-1
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,7
	sext.w	a5,a5
	bne	a5,zero,.L17
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	addw	a5,a4,a5
	sw	a5,-44(s0)
.L17:
	lw	a5,-56(s0)
	sext.w	a5,a5
	beq	a5,zero,.L19
	lw	a5,-52(s0)
	sext.w	a5,a5
	bne	a5,zero,.L19
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	addw	a5,a4,a5
	sw	a5,-44(s0)
.L19:
	lw	a5,-56(s0)
	sext.w	a5,a5
	beq	a5,zero,.L20
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	mulw	a5,a4,a5
	sext.w	a5,a5
	mv	a2,a5
	lw	a5,-20(s0)
	mv	a3,a5
	sext.w	a4,a3
	sext.w	a5,a2
	bge	a4,a5,.L21
	mv	a3,a2
.L21:
	sext.w	a5,a3
	lw	a4,-44(s0)
	addw	a5,a4,a5
	sw	a5,-44(s0)
.L20:
	lw	a5,-44(s0)
	mv	a0,a5
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	compute_score, .-compute_score
	.globl	entries
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
	.type	entries, @object
	.size	entries, 1240
entries:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC5
	.dword	.LC6
	.dword	.LC7
	.dword	.LC8
	.dword	.LC9
	.dword	.LC10
	.dword	.LC11
	.dword	.LC12
	.dword	.LC13
	.dword	.LC14
	.dword	.LC15
	.dword	.LC16
	.dword	.LC17
	.dword	.LC18
	.dword	.LC19
	.dword	.LC20
	.dword	.LC21
	.dword	.LC22
	.dword	.LC23
	.dword	.LC24
	.dword	.LC25
	.dword	.LC26
	.dword	.LC27
	.dword	.LC28
	.dword	.LC29
	.dword	.LC30
	.dword	.LC31
	.dword	.LC32
	.dword	.LC33
	.dword	.LC34
	.dword	.LC35
	.dword	.LC36
	.dword	.LC37
	.dword	.LC38
	.dword	.LC39
	.dword	.LC40
	.dword	.LC41
	.dword	.LC42
	.dword	.LC43
	.dword	.LC44
	.dword	.LC45
	.dword	.LC46
	.dword	.LC47
	.dword	.LC48
	.dword	.LC49
	.dword	.LC50
	.dword	.LC51
	.dword	.LC52
	.dword	.LC53
	.dword	.LC54
	.dword	.LC55
	.dword	.LC56
	.dword	.LC57
	.dword	.LC58
	.dword	.LC59
	.dword	.LC60
	.dword	.LC61
	.dword	.LC62
	.dword	.LC63
	.dword	.LC64
	.dword	.LC65
	.dword	.LC66
	.dword	.LC67
	.dword	.LC68
	.dword	.LC69
	.dword	.LC70
	.dword	.LC71
	.dword	.LC72
	.dword	.LC73
	.dword	.LC74
	.dword	.LC75
	.dword	.LC76
	.dword	.LC77
	.dword	.LC78
	.dword	.LC79
	.dword	.LC80
	.dword	.LC81
	.dword	.LC82
	.dword	.LC83
	.dword	.LC84
	.dword	.LC85
	.dword	.LC86
	.dword	.LC87
	.dword	.LC88
	.dword	.LC89
	.dword	.LC90
	.dword	.LC91
	.dword	.LC92
	.dword	.LC93
	.dword	.LC94
	.dword	.LC95
	.dword	.LC96
	.dword	.LC97
	.dword	.LC98
	.dword	.LC99
	.dword	.LC100
	.dword	.LC101
	.dword	.LC102
	.dword	.LC103
	.dword	.LC104
	.dword	.LC105
	.dword	.LC106
	.dword	.LC107
	.dword	.LC108
	.dword	.LC109
	.dword	.LC110
	.dword	.LC111
	.dword	.LC112
	.dword	.LC113
	.dword	.LC114
	.dword	.LC115
	.dword	.LC116
	.dword	.LC117
	.dword	.LC118
	.dword	.LC119
	.dword	.LC120
	.dword	.LC121
	.dword	.LC122
	.dword	.LC123
	.dword	.LC124
	.dword	.LC125
	.dword	.LC126
	.dword	.LC127
	.dword	.LC128
	.dword	.LC129
	.dword	.LC130
	.dword	.LC131
	.dword	.LC132
	.dword	.LC133
	.dword	.LC134
	.dword	.LC135
	.dword	.LC136
	.dword	.LC137
	.dword	.LC138
	.dword	.LC139
	.dword	.LC140
	.dword	.LC141
	.dword	.LC142
	.dword	.LC143
	.dword	.LC144
	.dword	.LC145
	.dword	.LC146
	.dword	.LC147
	.dword	.LC148
	.dword	.LC149
	.dword	.LC150
	.dword	.LC151
	.dword	.LC152
	.dword	.LC153
	.dword	0
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
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	lla	a5,.LC154
	sd	a5,-40(s0)
	ld	a1,-40(s0)
	lla	a0,.LC155
	call	libmin_printf@plt
	sw	zero,-64(s0)
	j	.L24
.L26:
	lla	a4,entries
	lw	a5,-64(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	ld	a0,-40(s0)
	call	fuzzy_match
	mv	a5,a0
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,-2147483648
	beq	a4,a5,.L25
	lla	a4,entries
	lw	a5,-64(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-44(s0)
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC156
	call	libmin_printf@plt
.L25:
	lw	a5,-64(s0)
	addiw	a5,a5,1
	sw	a5,-64(s0)
.L24:
	lla	a4,entries
	lw	a5,-64(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	bne	a5,zero,.L26
	lla	a0,.LC157
	call	libmin_printf@plt
	lla	a5,.LC158
	sd	a5,-32(s0)
	ld	a1,-32(s0)
	lla	a0,.LC155
	call	libmin_printf@plt
	sw	zero,-60(s0)
	j	.L27
.L29:
	lla	a4,entries
	lw	a5,-60(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	ld	a0,-32(s0)
	call	fuzzy_match
	mv	a5,a0
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	sext.w	a4,a5
	li	a5,-2147483648
	beq	a4,a5,.L28
	lla	a4,entries
	lw	a5,-60(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-48(s0)
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC156
	call	libmin_printf@plt
.L28:
	lw	a5,-60(s0)
	addiw	a5,a5,1
	sw	a5,-60(s0)
.L27:
	lla	a4,entries
	lw	a5,-60(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	bne	a5,zero,.L29
	lla	a0,.LC157
	call	libmin_printf@plt
	lla	a5,.LC159
	sd	a5,-24(s0)
	ld	a1,-24(s0)
	lla	a0,.LC155
	call	libmin_printf@plt
	sw	zero,-56(s0)
	j	.L30
.L32:
	lla	a4,entries
	lw	a5,-56(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	ld	a0,-24(s0)
	call	fuzzy_match
	mv	a5,a0
	sw	a5,-52(s0)
	lw	a5,-52(s0)
	sext.w	a4,a5
	li	a5,-2147483648
	beq	a4,a5,.L31
	lla	a4,entries
	lw	a5,-56(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-52(s0)
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC156
	call	libmin_printf@plt
.L31:
	lw	a5,-56(s0)
	addiw	a5,a5,1
	sw	a5,-56(s0)
.L30:
	lla	a4,entries
	lw	a5,-56(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	bne	a5,zero,.L32
	lla	a0,.LC157
	call	libmin_printf@plt
	call	libmin_success@plt
	li	a5,0
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
