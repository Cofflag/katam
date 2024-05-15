	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08144864
sub_08144864: @ 0x08144864
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r0, #0x19
	bl m4aSongNumStop
	ldr r0, _08144984 @ =0x0000FFFF
	strh r0, [r5, #0x30]
	ldr r1, _08144988 @ =gUnk_08386664
	ldr r0, _0814498C @ =gLanguage
	ldrh r2, [r0]
	movs r0, #0x4e
	muls r0, r2, r0
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _08144990 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r4, [r1, #2]
	ldr r7, _08144994 @ =0x0600F340
	ldr r2, _08144998 @ =gBgScrollRegs
	movs r1, #0
	strh r1, [r2, #4]
	strh r1, [r2, #6]
	ldr r1, _0814499C @ =0x06004000
	bl LZ77UnCompVram
	movs r1, #0
	cmp r1, r4
	bhs _081448D0
	ldr r2, _081449A0 @ =0x040000D4
	ldr r3, _081449A4 @ =0x80000020
_081448B2:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	str r0, [r2]
	lsls r0, r1, #6
	adds r0, r7, r0
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r4
	blo _081448B2
_081448D0:
	movs r1, #0
	adds r7, r5, #0
	adds r7, #0x37
	movs r0, #0x36
	adds r0, r0, r5
	mov r8, r0
	adds r3, r5, #2
	mov sb, r3
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r0, r0, r5
	mov sl, r0
	ldr r6, _081449A8 @ =gKeysContinuedRepeatIntervals
	movs r4, #2
	ldr r3, _081449AC @ =gKeysFirstRepeatIntervals
	movs r2, #0xa
_081448F0:
	adds r0, r1, r6
	strb r4, [r0]
	adds r0, r1, r3
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _081448F0
	adds r4, r7, #0
	ldrb r1, [r4]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08144936
	ldr r3, _081449B0 @ =0x00000838
	adds r1, r5, r3
	ldr r2, _081449B4 @ =gUnk_083868C8
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	adds r3, #2
	adds r0, r2, r3
	ldrh r0, [r0]
	strb r0, [r1, #0x1a]
	ldr r0, _081449B8 @ =gUnk_08386A12
	adds r0, #0x34
	ldrb r0, [r0]
	strb r0, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
_08144936:
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08144968
	movs r0, #0x8b
	lsls r0, r0, #4
	adds r1, r5, r0
	ldr r2, _081449B4 @ =gUnk_083868C8
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	adds r3, #2
	adds r0, r2, r3
	ldrh r0, [r0]
	strb r0, [r1, #0x1a]
	ldr r0, _081449B8 @ =gUnk_08386A12
	adds r0, #0x34
	ldrb r0, [r0]
	strb r0, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
_08144968:
	ldrb r1, [r7]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08144976
	mov r0, r8
	strb r6, [r0]
_08144976:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _081449C0
	ldr r0, _081449BC @ =sub_08145A50
	b _081449C6
	.align 2, 0
_08144984: .4byte 0x0000FFFF
_08144988: .4byte gUnk_08386664
_0814498C: .4byte gLanguage
_08144990: .4byte gUnk_082D7850
_08144994: .4byte 0x0600F340
_08144998: .4byte gBgScrollRegs
_0814499C: .4byte 0x06004000
_081449A0: .4byte 0x040000D4
_081449A4: .4byte 0x80000020
_081449A8: .4byte gKeysContinuedRepeatIntervals
_081449AC: .4byte gKeysFirstRepeatIntervals
_081449B0: .4byte 0x00000838
_081449B4: .4byte gUnk_083868C8
_081449B8: .4byte gUnk_08386A12
_081449BC: .4byte sub_08145A50
_081449C0:
	cmp r0, #1
	bne _081449C8
	ldr r0, _08144A08 @ =sub_08145AA8
_081449C6:
	str r0, [r5, #0x38]
_081449C8:
	movs r4, #0
_081449CA:
	mov r3, sb
	adds r0, r3, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _081449E2
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_081449E2:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _081449CA
	mov r0, sl
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145324
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08144A08: .4byte sub_08145AA8

	thumb_func_start sub_08144A0C
sub_08144A0C: @ 0x08144A0C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_08144C1C
	cmp r0, #0
	beq _08144A1E
	adds r0, r5, #0
	bl sub_0814514C
_08144A1E:
	adds r0, r5, #0
	bl sub_08145490
	ldr r2, _08144A98 @ =gPressedKeys
	ldrh r1, [r2]
	movs r3, #2
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08144A36
	ldr r0, _08144A9C @ =sub_08144B38
	str r0, [r5, #0x38]
_08144A36:
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08144A5A
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08144A5A
	adds r1, r5, #0
	adds r1, #0x36
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08144AA0 @ =sub_08145AA8
	str r0, [r5, #0x38]
_08144A5A:
	movs r4, #0
	adds r6, r5, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r5, r0
_08144A64:
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144A7A
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08144A7A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08144A64
	adds r0, r7, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145324
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08144A98: .4byte gPressedKeys
_08144A9C: .4byte sub_08144B38
_08144AA0: .4byte sub_08145AA8

	thumb_func_start sub_08144AA4
sub_08144AA4: @ 0x08144AA4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_08144EB4
	cmp r0, #0
	beq _08144AB6
	adds r0, r5, #0
	bl sub_0814514C
_08144AB6:
	adds r0, r5, #0
	bl sub_08145574
	ldr r2, _08144B2C @ =gPressedKeys
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08144ACC
	ldr r0, _08144B30 @ =sub_08144B38
	str r0, [r5, #0x38]
_08144ACC:
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08144AF0
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08144AF0
	adds r1, r5, #0
	adds r1, #0x36
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08144B34 @ =sub_08145A50
	str r0, [r5, #0x38]
_08144AF0:
	movs r4, #0
	adds r6, r5, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r5, r0
_08144AFA:
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144B10
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08144B10:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08144AFA
	adds r0, r7, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145324
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08144B2C: .4byte gPressedKeys
_08144B30: .4byte sub_08144B38
_08144B34: .4byte sub_08145A50

	thumb_func_start sub_08144B38
sub_08144B38: @ 0x08144B38
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl m4aMPlayAllStop
	ldr r0, _08144BF0 @ =0x0000021F
	bl m4aSongNumStart
	movs r0, #0x19
	bl m4aSongNumStart
	ldr r1, _08144BF4 @ =gUnk_08386664
	ldr r0, _08144BF8 @ =gLanguage
	ldrh r2, [r0]
	movs r0, #0x4e
	muls r0, r2, r0
	adds r1, #0x36
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _08144BFC @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r4, [r1, #2]
	ldr r7, _08144C00 @ =0x0600F340
	ldr r2, _08144C04 @ =gBgScrollRegs
	movs r1, #0
	strh r1, [r2, #4]
	strh r1, [r2, #6]
	ldr r1, _08144C08 @ =0x06004000
	bl LZ77UnCompVram
	movs r1, #0
	cmp r1, r4
	bhs _08144BA2
	ldr r2, _08144C0C @ =0x040000D4
	ldr r3, _08144C10 @ =0x80000020
_08144B84:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	str r0, [r2]
	lsls r0, r1, #6
	adds r0, r7, r0
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r4
	blo _08144B84
_08144BA2:
	movs r1, #0
	ldr r4, _08144C14 @ =sub_08143F88
	adds r6, r5, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r5, r0
	ldr r3, _08144C18 @ =gKeysContinuedRepeatIntervals
	movs r2, #5
_08144BB2:
	adds r0, r1, r3
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _08144BB2
	str r4, [r5, #0x38]
	movs r4, #0
_08144BC4:
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144BDA
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08144BDA:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08144BC4
	adds r0, r7, #0
	bl sub_0815604C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08144BF0: .4byte 0x0000021F
_08144BF4: .4byte gUnk_08386664
_08144BF8: .4byte gLanguage
_08144BFC: .4byte gUnk_082D7850
_08144C00: .4byte 0x0600F340
_08144C04: .4byte gBgScrollRegs
_08144C08: .4byte 0x06004000
_08144C0C: .4byte 0x040000D4
_08144C10: .4byte 0x80000020
_08144C14: .4byte sub_08143F88
_08144C18: .4byte gKeysContinuedRepeatIntervals

	thumb_func_start sub_08144C1C
sub_08144C1C: @ 0x08144C1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	ldrh r4, [r0, #0x2e]
	adds r6, r4, #0
	movs r0, #0x2a
	mov ip, r0
	movs r5, #0
	ldr r2, _08144CA0 @ =gUnk_08386A50
	ldr r3, _08144CA4 @ =gUnk_08386B28
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	adds r1, r3, #2
	adds r1, r0, r1
	ldrh r0, [r2]
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _08144CA8 @ =gPressedKeys
	mov sb, r2
	ldrh r3, [r1]
	cmp r0, r3
	beq _08144C66
	adds r2, r7, #0
_08144C50:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x27
	bhi _08144C66
	lsls r0, r5, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r3, [r1]
	cmp r0, r3
	bne _08144C50
_08144C66:
	mov r0, sl
	adds r0, #2
	adds r1, r0, r5
	ldrb r1, [r1]
	adds r3, r0, #0
	cmp r1, #0
	beq _08144D20
	mov r5, sb
	ldrh r2, [r5]
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08144CAC
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	lsls r6, r6, #0x10
	cmp r0, r1
	bgt _08144C9A
	b _08144E90
_08144C9A:
	movs r4, #0
	b _08144E90
	.align 2, 0
_08144CA0: .4byte gUnk_08386A50
_08144CA4: .4byte gUnk_08386B28
_08144CA8: .4byte gPressedKeys
_08144CAC:
	ldr r0, _08144CD4 @ =gRepeatedKeys
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08144CD8
	lsls r0, r4, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	lsls r6, r6, #0x10
	cmp r0, r1
	bgt _08144CD0
	b _08144E90
_08144CD0:
	b _08144E3C
	.align 2, 0
_08144CD4: .4byte gRepeatedKeys
_08144CD8:
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08144D00
	lsls r0, r4, #0x10
	ldr r3, _08144CFC @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r4, r0, #0x10
	lsls r6, r6, #0x10
	cmp r0, #0
	blt _08144CF2
	b _08144E90
_08144CF2:
	mov r0, ip
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08144E90
	.align 2, 0
_08144CFC: .4byte 0xFFFF0000
_08144D00:
	adds r0, r3, #0
	ands r0, r1
	lsls r6, r6, #0x10
	cmp r0, #0
	bne _08144D0C
	b _08144E90
_08144D0C:
	lsls r0, r4, #0x10
	ldr r5, _08144D1C @ =0xFFFF0000
	adds r0, r0, r5
	lsrs r4, r0, #0x10
	cmp r0, #0
	blt _08144D1A
	b _08144E90
_08144D1A:
	b _08144C9A
	.align 2, 0
_08144D1C: .4byte 0xFFFF0000
_08144D20:
	mov r0, sb
	ldrh r5, [r0]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _08144D7E
	lsls r6, r6, #0x10
	b _08144D48
_08144D32:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	cmp r0, r1
	ble _08144D48
	movs r4, #0
_08144D48:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _08144D74
	mov sb, r7
_08144D5E:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08144D74
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _08144D5E
_08144D74:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144D32
	b _08144E90
_08144D7E:
	ldr r0, _08144D90 @ =gRepeatedKeys
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08144DDE
	lsls r6, r6, #0x10
	b _08144DA8
	.align 2, 0
_08144D90: .4byte gRepeatedKeys
_08144D94:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	cmp r0, r1
	bgt _08144E3C
_08144DA8:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _08144DD4
	mov sb, r7
_08144DBE:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08144DD4
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _08144DBE
_08144DD4:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144D94
	b _08144E90
_08144DDE:
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _08144E42
	lsls r6, r6, #0x10
	b _08144E00
_08144DEC:
	lsls r0, r4, #0x10
	ldr r1, _08144E38 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _08144E00
	mov r0, ip
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08144E00:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _08144E2C
	mov sb, r7
_08144E16:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08144E2C
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _08144E16
_08144E2C:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144DEC
	b _08144E90
	.align 2, 0
_08144E38: .4byte 0xFFFF0000
_08144E3C:
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	b _08144E90
_08144E42:
	adds r0, r2, #0
	ands r0, r1
	lsls r6, r6, #0x10
	cmp r0, #0
	beq _08144E90
	b _08144E5C
_08144E4E:
	lsls r0, r4, #0x10
	ldr r1, _08144EA0 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _08144E5C
	b _08144C9A
_08144E5C:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _08144E88
	mov sb, r7
_08144E72:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08144E88
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _08144E72
_08144E88:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144E4E
_08144E90:
	lsls r0, r4, #0x10
	cmp r0, r6
	beq _08144EA4
	mov r0, sl
	strh r4, [r0, #0x2e]
	movs r0, #1
	b _08144EA6
	.align 2, 0
_08144EA0: .4byte 0xFFFF0000
_08144EA4:
	movs r0, #0
_08144EA6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08144EB4
sub_08144EB4: @ 0x08144EB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	ldrh r4, [r0, #0x32]
	adds r6, r4, #0
	movs r0, #0xbd
	lsls r0, r0, #1
	mov ip, r0
	movs r5, #0
	ldr r2, _08144F38 @ =gUnk_08386A50
	ldr r3, _08144F3C @ =gUnk_08386BD0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	adds r1, r3, #2
	adds r1, r0, r1
	ldrh r0, [r2]
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _08144F40 @ =gPressedKeys
	mov sb, r2
	ldrh r3, [r1]
	cmp r0, r3
	beq _08144F00
	adds r2, r7, #0
_08144EEA:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x27
	bhi _08144F00
	lsls r0, r5, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r3, [r1]
	cmp r0, r3
	bne _08144EEA
_08144F00:
	mov r0, sl
	adds r0, #2
	adds r1, r0, r5
	ldrb r1, [r1]
	adds r3, r0, #0
	cmp r1, #0
	beq _08144FB8
	mov r5, sb
	ldrh r2, [r5]
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08144F44
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	lsls r6, r6, #0x10
	cmp r0, r1
	bgt _08144F34
	b _08145128
_08144F34:
	movs r4, #0
	b _08145128
	.align 2, 0
_08144F38: .4byte gUnk_08386A50
_08144F3C: .4byte gUnk_08386BD0
_08144F40: .4byte gPressedKeys
_08144F44:
	ldr r0, _08144F6C @ =gRepeatedKeys
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08144F70
	lsls r0, r4, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	lsls r6, r6, #0x10
	cmp r0, r1
	bgt _08144F68
	b _08145128
_08144F68:
	b _081450D4
	.align 2, 0
_08144F6C: .4byte gRepeatedKeys
_08144F70:
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08144F98
	lsls r0, r4, #0x10
	ldr r3, _08144F94 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r4, r0, #0x10
	lsls r6, r6, #0x10
	cmp r0, #0
	blt _08144F8A
	b _08145128
_08144F8A:
	mov r0, ip
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08145128
	.align 2, 0
_08144F94: .4byte 0xFFFF0000
_08144F98:
	adds r0, r3, #0
	ands r0, r1
	lsls r6, r6, #0x10
	cmp r0, #0
	bne _08144FA4
	b _08145128
_08144FA4:
	lsls r0, r4, #0x10
	ldr r5, _08144FB4 @ =0xFFFF0000
	adds r0, r0, r5
	lsrs r4, r0, #0x10
	cmp r0, #0
	blt _08144FB2
	b _08145128
_08144FB2:
	b _08144F34
	.align 2, 0
_08144FB4: .4byte 0xFFFF0000
_08144FB8:
	mov r0, sb
	ldrh r5, [r0]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _08145016
	lsls r6, r6, #0x10
	b _08144FE0
_08144FCA:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	cmp r0, r1
	ble _08144FE0
	movs r4, #0
_08144FE0:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _0814500C
	mov sb, r7
_08144FF6:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _0814500C
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _08144FF6
_0814500C:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144FCA
	b _08145128
_08145016:
	ldr r0, _08145028 @ =gRepeatedKeys
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08145076
	lsls r6, r6, #0x10
	b _08145040
	.align 2, 0
_08145028: .4byte gRepeatedKeys
_0814502C:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	cmp r0, r1
	bgt _081450D4
_08145040:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _0814506C
	mov sb, r7
_08145056:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _0814506C
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _08145056
_0814506C:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0814502C
	b _08145128
_08145076:
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _081450DA
	lsls r6, r6, #0x10
	b _08145098
_08145084:
	lsls r0, r4, #0x10
	ldr r1, _081450D0 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _08145098
	mov r0, ip
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08145098:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _081450C4
	mov sb, r7
_081450AE:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _081450C4
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _081450AE
_081450C4:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145084
	b _08145128
	.align 2, 0
_081450D0: .4byte 0xFFFF0000
_081450D4:
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	b _08145128
_081450DA:
	adds r0, r2, #0
	ands r0, r1
	lsls r6, r6, #0x10
	cmp r0, #0
	beq _08145128
	b _081450F4
_081450E6:
	lsls r0, r4, #0x10
	ldr r1, _08145138 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _081450F4
	b _08144F34
_081450F4:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _08145120
	mov sb, r7
_0814510A:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08145120
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _0814510A
_08145120:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _081450E6
_08145128:
	lsls r0, r4, #0x10
	cmp r0, r6
	beq _0814513C
	mov r0, sl
	strh r4, [r0, #0x32]
	movs r0, #1
	b _0814513E
	.align 2, 0
_08145138: .4byte 0xFFFF0000
_0814513C:
	movs r0, #0
_0814513E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0814514C
sub_0814514C: @ 0x0814514C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	bne _081451A8
	movs r0, #0x31
	mov sb, r0
	movs r2, #0
	ldr r5, _08145184 @ =gUnk_08386A50
	ldr r0, _08145188 @ =gUnk_08386B28
	ldrh r4, [r6, #0x2e]
	movs r3, #0x2e
	ldrsh r1, [r6, r3]
	lsls r1, r1, #2
	adds r0, #2
	adds r1, r1, r0
	ldrh r0, [r5]
	adds r3, r6, #2
	ldr r7, _0814518C @ =gUnk_08386A12
	mov r8, r7
	b _081451A0
	.align 2, 0
_08145184: .4byte gUnk_08386A50
_08145188: .4byte gUnk_08386B28
_0814518C: .4byte gUnk_08386A12
_08145190:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _081451EA
	lsls r0, r2, #2
	adds r0, r0, r5
	ldrh r0, [r0]
_081451A0:
	ldrh r7, [r1]
	cmp r0, r7
	bne _08145190
	b _081451EA
_081451A8:
	movs r0, #0x34
	mov sb, r0
	movs r2, #0
	ldr r5, _081451C8 @ =gUnk_08386A50
	ldr r0, _081451CC @ =gUnk_08386BD0
	ldrh r4, [r6, #0x32]
	movs r3, #0x32
	ldrsh r1, [r6, r3]
	lsls r1, r1, #2
	adds r0, #2
	adds r1, r1, r0
	ldrh r0, [r5]
	adds r3, r6, #2
	ldr r7, _081451D0 @ =gUnk_08386A12
	mov r8, r7
	b _081451E4
	.align 2, 0
_081451C8: .4byte gUnk_08386A50
_081451CC: .4byte gUnk_08386BD0
_081451D0: .4byte gUnk_08386A12
_081451D4:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _081451EA
	lsls r0, r2, #2
	adds r0, r0, r5
	ldrh r0, [r0]
_081451E4:
	ldrh r7, [r1]
	cmp r0, r7
	bne _081451D4
_081451EA:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _081452E0
	mov r5, sp
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0x64
	bl __divsi3
	strb r0, [r5]
	mov r5, sp
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa
	bl __modsi3
	strb r0, [r5, #1]
	mov r5, sp
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	strb r0, [r5, #2]
	movs r5, #0
	ldr r0, _08145268 @ =gUnk_08386838
	mov r8, r0
	ldr r7, _0814526C @ =gUnk_083868C8
	adds r1, r7, #2
	mov sl, r1
_08145230:
	mov r2, sb
	adds r0, r2, r5
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x40
	adds r3, r6, r1
	mov r1, sp
	adds r0, r1, r5
	ldrb r1, [r0]
	adds r2, r1, #0
	adds r2, #0x2a
	adds r4, r0, #0
	cmp r2, #3
	bhi _08145274
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	ldr r0, _08145270 @ =gLanguage
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	add r1, r8
	ldrh r0, [r1]
	b _08145280
	.align 2, 0
_08145268: .4byte gUnk_08386838
_0814526C: .4byte gUnk_083868C8
_08145270: .4byte gLanguage
_08145274:
	adds r1, #0x26
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
_08145280:
	strh r0, [r3, #0xc]
	ldrb r1, [r4]
	adds r0, r1, #0
	adds r0, #0x2a
	cmp r0, #3
	bhi _081452B0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, _081452A8 @ =gLanguage
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r2, _081452AC @ =gUnk_08386838 + 2
	adds r1, r1, r2
	ldrb r0, [r1]
	b _081452BC
	.align 2, 0
_081452A8: .4byte gLanguage
_081452AC: .4byte gUnk_08386838 + 2
_081452B0:
	adds r1, #0x26
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, sl
	ldrb r0, [r0]
_081452BC:
	strb r0, [r3, #0x1a]
	ldr r1, _081452DC @ =gUnk_08386A12
	ldrb r0, [r4]
	adds r0, #0x2a
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3, #0x1f]
	adds r0, r3, #0
	bl sub_08155128
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08145230
	b _08145310
	.align 2, 0
_081452DC: .4byte gUnk_08386A12
_081452E0:
	mov r3, sb
	lsls r0, r3, #2
	add r0, sb
	lsls r0, r0, #3
	adds r0, #0x90
	adds r3, r6, r0
	ldr r1, _08145320 @ =gUnk_083868C8
	movs r7, #0x90
	lsls r7, r7, #1
	adds r0, r1, r7
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrh r0, [r0]
	strb r0, [r3, #0x1a]
	mov r0, r8
	adds r0, #0x34
	ldrb r0, [r0]
	strb r0, [r3, #0x1f]
	adds r0, r3, #0
	bl sub_08155128
_08145310:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08145320: .4byte gUnk_083868C8

	thumb_func_start sub_08145324
sub_08145324: @ 0x08145324
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x40
	movs r1, #0xe9
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	movs r3, #0xee
	lsls r3, r3, #3
	adds r0, r5, r3
	bl sub_0815604C
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r4, [r0]
	cmp r4, #0
	bne _08145374
	ldr r7, _08145370 @ =0x000008D8
	adds r0, r5, r7
	bl sub_0815604C
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08145398
	movs r1, #0xf8
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	b _08145398
	.align 2, 0
_08145370: .4byte 0x000008D8
_08145374:
	cmp r4, #1
	bne _08145398
	movs r3, #0x90
	lsls r3, r3, #4
	adds r0, r5, r3
	bl sub_0815604C
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r0, [r0]
	ands r4, r0
	cmp r4, #0
	beq _08145398
	movs r7, #0xf3
	lsls r7, r7, #3
	adds r0, r5, r7
	bl sub_0815604C
_08145398:
	movs r2, #0
	ldr r4, _081453B0 @ =gUnk_08386A50
	ldr r0, _081453B4 @ =gUnk_08386B28
	movs r3, #0x2e
	ldrsh r1, [r5, r3]
	lsls r1, r1, #2
	adds r3, r0, #2
	adds r1, r1, r3
	ldrh r0, [r4]
	adds r7, r5, #2
	mov r8, r7
	b _081453D0
	.align 2, 0
_081453B0: .4byte gUnk_08386A50
_081453B4: .4byte gUnk_08386B28
_081453B8:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _081453D6
	lsls r0, r2, #2
	adds r0, r0, r4
	movs r7, #0x2e
	ldrsh r1, [r5, r7]
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrh r0, [r0]
_081453D0:
	ldrh r1, [r1]
	cmp r0, r1
	bne _081453B8
_081453D6:
	mov r1, r8
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145404
	movs r3, #0x2e
	ldrsh r0, [r5, r3]
	cmp r0, #0x63
	ble _081453F2
	movs r7, #0xf5
	lsls r7, r7, #3
	adds r0, r6, r7
	bl sub_0815604C
_081453F2:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	cmp r0, #9
	ble _08145404
	movs r3, #0xfa
	lsls r3, r3, #3
	adds r0, r6, r3
	bl sub_0815604C
_08145404:
	movs r7, #0xff
	lsls r7, r7, #3
	adds r0, r6, r7
	bl sub_0815604C
	movs r2, #0
	ldr r4, _08145484 @ =gUnk_08386A50
	ldr r1, _08145488 @ =gUnk_08386BD0
	movs r3, #0x32
	ldrsh r0, [r5, r3]
	lsls r0, r0, #2
	adds r3, r1, #2
	adds r0, r0, r3
	ldrh r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	beq _08145444
_08145426:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08145444
	lsls r0, r2, #2
	adds r0, r0, r4
	movs r7, #0x32
	ldrsh r1, [r5, r7]
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08145426
_08145444:
	mov r1, r8
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145470
	movs r3, #0x32
	ldrsh r0, [r5, r3]
	cmp r0, #0x63
	ble _08145460
	movs r7, #0x82
	lsls r7, r7, #4
	adds r0, r6, r7
	bl sub_0815604C
_08145460:
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	cmp r0, #9
	ble _08145470
	ldr r3, _0814548C @ =0x00000848
	adds r0, r6, r3
	bl sub_0815604C
_08145470:
	movs r7, #0x87
	lsls r7, r7, #4
	adds r0, r6, r7
	bl sub_0815604C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08145484: .4byte gUnk_08386A50
_08145488: .4byte gUnk_08386BD0
_0814548C: .4byte 0x00000848

	thumb_func_start sub_08145490
sub_08145490: @ 0x08145490
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, _081454A8 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _081454AC
	movs r0, #0
	b _08145564
	.align 2, 0
_081454A8: .4byte gPressedKeys
_081454AC:
	movs r3, #0
	ldr r7, _08145520 @ =gUnk_08386A50
	ldr r0, _08145524 @ =gUnk_08386B28
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	lsls r1, r1, #2
	adds r5, r0, #2
	adds r1, r1, r5
	ldrh r2, [r7]
	mov r8, r0
	adds r0, r4, #2
	mov ip, r0
	ldr r6, _08145528 @ =gUnk_030016A0
	ldrh r1, [r1]
	cmp r2, r1
	beq _081454EC
	adds r2, r5, #0
_081454CE:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x27
	bhi _081454EC
	lsls r0, r3, #2
	adds r0, r0, r7
	movs r5, #0x2e
	ldrsh r1, [r4, r5]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081454CE
_081454EC:
	mov r1, ip
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145558
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r5, #0x30
	ldrsh r0, [r4, r5]
	cmp r1, r0
	beq _08145530
	ldr r1, _0814552C @ =gSongTable
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl MPlayStart
	ldrh r0, [r4, #0x2e]
	b _08145560
	.align 2, 0
_08145520: .4byte gUnk_08386A50
_08145524: .4byte gUnk_08386B28
_08145528: .4byte gUnk_030016A0
_0814552C: .4byte gSongTable
_08145530:
	ldr r0, [r6, #4]
	cmp r0, #0
	bge _08145558
	ldr r1, _08145554 @ =gSongTable
	movs r5, #0x2e
	ldrsh r0, [r4, r5]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl MPlayStart
	ldrh r0, [r4, #0x2e]
	b _08145560
	.align 2, 0
_08145554: .4byte gSongTable
_08145558:
	adds r0, r6, #0
	bl MPlayStop
	ldr r0, _08145570 @ =0x0000FFFF
_08145560:
	strh r0, [r4, #0x30]
	movs r0, #1
_08145564:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08145570: .4byte 0x0000FFFF

	thumb_func_start sub_08145574
sub_08145574: @ 0x08145574
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, _0814558C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08145590
	movs r0, #0
	b _08145610
	.align 2, 0
_0814558C: .4byte gPressedKeys
_08145590:
	movs r3, #0
	ldr r6, _081455F4 @ =gUnk_08386A50
	ldr r0, _081455F8 @ =gUnk_08386BD0
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	lsls r1, r1, #2
	adds r5, r0, #2
	adds r1, r1, r5
	ldrh r2, [r6]
	mov r8, r0
	adds r7, r4, #2
	ldr r0, _081455FC @ =gUnk_030016E0
	mov ip, r0
	ldrh r1, [r1]
	cmp r2, r1
	beq _081455D0
	adds r2, r5, #0
_081455B2:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x27
	bhi _081455D0
	lsls r0, r3, #2
	adds r0, r0, r6
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081455B2
_081455D0:
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145604
	ldr r1, _08145600 @ =gSongTable
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	mov r0, ip
	bl MPlayStart
	ldrh r0, [r4, #0x32]
	b _0814560C
	.align 2, 0
_081455F4: .4byte gUnk_08386A50
_081455F8: .4byte gUnk_08386BD0
_081455FC: .4byte gUnk_030016E0
_08145600: .4byte gSongTable
_08145604:
	mov r0, ip
	bl MPlayStop
	ldr r0, _0814561C @ =0x0000FFFF
_0814560C:
	strh r0, [r4, #0x34]
	movs r0, #1
_08145610:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0814561C: .4byte 0x0000FFFF

	thumb_func_start sub_08145620
sub_08145620: @ 0x08145620
	push {r4, lr}
	ldr r0, _0814563C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08145640
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08145648
	.align 2, 0
_0814563C: .4byte gCurTask
_08145640:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08145648:
	adds r0, r4, #0
	bl sub_081436D8
	ldr r1, [r4, #0x38]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0814565C
sub_0814565C: @ 0x0814565C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_08145662:
	adds r0, r4, #0
	bl sub_08145B00
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08145662
	movs r4, #0
_08145674:
	adds r0, r4, #0
	bl sub_08145B2C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08145674
	ldr r0, _08145690 @ =sub_08145694
	str r0, [r5, #0x38]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145690: .4byte sub_08145694

	thumb_func_start sub_08145694
sub_08145694: @ 0x08145694
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _081456CC @ =gUnk_08386664
	ldr r0, _081456D0 @ =gLanguage
	ldrh r1, [r0]
	movs r0, #0x4e
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r4, [r0]
	ldr r5, _081456D4 @ =gMainFlags
	ldr r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _081456DC
	ldr r1, _081456D8 @ =gUnk_082D7850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl LoadBgPaletteWithTransformation
	b _081456FA
	.align 2, 0
_081456CC: .4byte gUnk_08386664
_081456D0: .4byte gLanguage
_081456D4: .4byte gMainFlags
_081456D8: .4byte gUnk_082D7850
_081456DC:
	ldr r2, _08145704 @ =0x040000D4
	ldr r1, _08145708 @ =gUnk_082D7850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	str r0, [r2]
	ldr r0, _0814570C @ =gBgPalette
	str r0, [r2, #4]
	ldr r0, _08145710 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r5]
_081456FA:
	ldr r0, _08145714 @ =sub_08143E6C
	str r0, [r6, #0x38]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08145704: .4byte 0x040000D4
_08145708: .4byte gUnk_082D7850
_0814570C: .4byte gBgPalette
_08145710: .4byte 0x80000100
_08145714: .4byte sub_08143E6C

	thumb_func_start sub_08145718
sub_08145718: @ 0x08145718
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0814571E:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0814389C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1e
	bls _0814571E
	ldr r0, _0814573C @ =sub_08145740
	str r0, [r5, #0x38]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814573C: .4byte sub_08145740

	thumb_func_start sub_08145740
sub_08145740: @ 0x08145740
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0x1f
_08145746:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0814389C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08145746
	adds r0, r5, #0
	bl sub_08143AF8
	adds r0, r5, #0
	bl sub_081439D8
	ldr r0, _08145770 @ =sub_08145774
	str r0, [r5, #0x38]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145770: .4byte sub_08145774

	thumb_func_start sub_08145774
sub_08145774: @ 0x08145774
	movs r1, #0
	strh r1, [r0, #0x3c]
	ldr r1, _08145780 @ =sub_08145784
	str r1, [r0, #0x38]
	bx lr
	.align 2, 0
_08145780: .4byte sub_08145784

	thumb_func_start sub_08145784
sub_08145784: @ 0x08145784
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r4, [r6, #0x3c]
	adds r4, #1
	strh r4, [r6, #0x3c]
	ldr r5, _081457EC @ =gBldRegs
	movs r1, #0x3c
	ldrsh r0, [r6, r1]
	lsls r0, r0, #4
	movs r1, #0xa
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #9
	ble _081457AE
	ldr r0, _081457F0 @ =sub_081457F4
	str r0, [r6, #0x38]
_081457AE:
	movs r4, #0
	adds r5, r6, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r6, r0
_081457B8:
	adds r0, r5, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _081457CE
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r6, r0
	bl sub_0815604C
_081457CE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _081457B8
	adds r0, r7, #0
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_08145974
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081457EC: .4byte gBldRegs
_081457F0: .4byte sub_081457F4

	thumb_func_start sub_081457F4
sub_081457F4: @ 0x081457F4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08145840 @ =gBldRegs
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, _08145844 @ =sub_08143F88
	str r0, [r5, #0x38]
	movs r4, #0
_08145808:
	adds r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145820
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08145820:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08145808
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145974
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145840: .4byte gBldRegs
_08145844: .4byte sub_08143F88

	thumb_func_start sub_08145848
sub_08145848: @ 0x08145848
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08145898 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	strh r2, [r5, #0x3c]
	ldr r0, _0814589C @ =sub_081458A0
	str r0, [r5, #0x38]
	movs r4, #0
_08145860:
	adds r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145878
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08145878:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08145860
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145974
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145898: .4byte gBldRegs
_0814589C: .4byte sub_081458A0

	thumb_func_start sub_081458A0
sub_081458A0: @ 0x081458A0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r4, [r6, #0x3c]
	adds r4, #1
	strh r4, [r6, #0x3c]
	ldr r5, _08145904 @ =gBldRegs
	movs r1, #0x3c
	ldrsh r0, [r6, r1]
	lsls r0, r0, #4
	movs r1, #5
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #4
	ble _081458C6
	ldr r0, _08145908 @ =sub_0814590C
	str r0, [r6, #0x38]
_081458C6:
	movs r4, #0
	adds r5, r6, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r6, r0
_081458D0:
	adds r0, r5, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _081458E6
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r6, r0
	bl sub_0815604C
_081458E6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _081458D0
	adds r0, r7, #0
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_08145974
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08145904: .4byte gBldRegs
_08145908: .4byte sub_0814590C

	thumb_func_start sub_0814590C
sub_0814590C: @ 0x0814590C
	push {lr}
	sub sp, #4
	bl m4aMPlayAllStop
	mov r0, sp
	ldr r1, _08145958 @ =0x00007FFF
	adds r3, r1, #0
	strh r3, [r0]
	ldr r0, _0814595C @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08145960 @ =gBgPalette
	str r1, [r0, #4]
	ldr r2, _08145964 @ =0x81000100
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	ldr r1, _08145968 @ =gObjPalette
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r2, _0814596C @ =gMainFlags
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08145970 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl sub_08138F68
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08145958: .4byte 0x00007FFF
_0814595C: .4byte 0x040000D4
_08145960: .4byte gBgPalette
_08145964: .4byte 0x81000100
_08145968: .4byte gObjPalette
_0814596C: .4byte gMainFlags
_08145970: .4byte gCurTask

	thumb_func_start sub_08145974
sub_08145974: @ 0x08145974
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x2a
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r0, r4, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _081459E6
	ldr r6, _081459A0 @ =gUnk_08386A50
	lsls r0, r1, #2
	adds r0, r0, r6
	ldrh r0, [r0]
	lsrs r0, r0, #8
	cmp r0, #1
	beq _081459A4
	cmp r0, #0x10
	beq _081459D2
	b _081459E6
	.align 2, 0
_081459A0: .4byte gUnk_08386A50
_081459A4:
	movs r1, #0xda
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _081459E6
	movs r1, #0xdf
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	b _081459E6
_081459D2:
	adds r0, r4, #0
	adds r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0
	beq _081459E6
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
_081459E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_081459EC
sub_081459EC: @ 0x081459EC
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r1, #0x67
	strh r1, [r0, #0x10]
	movs r1, #0x81
	strh r1, [r0, #0x12]
	bx lr

	thumb_func_start sub_081459FC
sub_081459FC: @ 0x081459FC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r6, r4, r0
	ldr r5, _08145A48 @ =gSineTable
	movs r1, #0x3c
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0xb
	movs r1, #0x1e
	bl __udivsi3
	ldr r1, _08145A4C @ =0x000003FF
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r1, r0, #3
	adds r1, r1, r0
	asrs r1, r1, #0xe
	movs r0, #0x70
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	movs r0, #0x3c
	ldrsh r1, [r4, r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x1e
	bl __divsi3
	adds r0, #0x81
	strh r0, [r6, #0x12]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08145A48: .4byte gSineTable
_08145A4C: .4byte 0x000003FF

	thumb_func_start sub_08145A50
sub_08145A50: @ 0x08145A50
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xeb
	lsls r1, r1, #3
	adds r0, r5, r1
	movs r1, #0x60
	strh r1, [r0]
	movs r2, #0xf0
	lsls r2, r2, #3
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, _08145AA4 @ =sub_08144A0C
	str r0, [r5, #0x38]
	movs r4, #0
_08145A6C:
	adds r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145A84
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08145A84:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08145A6C
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145324
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145AA4: .4byte sub_08144A0C

	thumb_func_start sub_08145AA8
sub_08145AA8: @ 0x08145AA8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xeb
	lsls r1, r1, #3
	adds r0, r5, r1
	movs r1, #0x90
	strh r1, [r0]
	movs r2, #0xf0
	lsls r2, r2, #3
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, _08145AFC @ =sub_08144AA4
	str r0, [r5, #0x38]
	movs r4, #0
_08145AC4:
	adds r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145ADC
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08145ADC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08145AC4
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145324
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145AFC: .4byte sub_08144AA4

	thumb_func_start sub_08145B00
sub_08145B00: @ 0x08145B00
	sub sp, #4
	lsls r0, r0, #0x18
	mov r2, sp
	movs r1, #0
	strh r1, [r2]
	ldr r2, _08145B24 @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	lsrs r0, r0, #0xa
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08145B28 @ =0x81002000
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08145B24: .4byte 0x040000D4
_08145B28: .4byte 0x81002000

	thumb_func_start sub_08145B2C
sub_08145B2C: @ 0x08145B2C
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sp
	ldr r3, _08145B58 @ =0x000001FF
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08145B5C @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	movs r1, #0x1f
	subs r1, r1, r0
	lsls r1, r1, #0xb
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r1, r1, r3
	str r1, [r2, #4]
	ldr r0, _08145B60 @ =0x81000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08145B58: .4byte 0x000001FF
_08145B5C: .4byte 0x040000D4
_08145B60: .4byte 0x81000400
