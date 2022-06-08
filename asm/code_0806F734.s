	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	@ IDK if these are also part of kirby.c. 

	thumb_func_start sub_0806F734
sub_0806F734: @ 0x0806F734
	push {lr}
	sub sp, #0x28
	ldr r0, _0806F77C @ =0x06012000
	str r0, [sp]
	mov r1, sp
	movs r3, #0
	movs r2, #0
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1, #0x14]
	adds r0, #0xc
	strh r0, [r1, #0xc]
	mov r0, sp
	strb r3, [r0, #0x1a]
	strh r2, [r0, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	movs r0, #0xf
	strb r0, [r1, #0x1f]
	mov r0, sp
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	movs r0, #0x84
	lsls r0, r0, #0xb
	str r0, [sp, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x20]
	mov r0, sp
	bl sub_08155128
	add sp, #0x28
	pop {r0}
	bx r0
	.align 2, 0
_0806F77C: .4byte 0x06012000

	thumb_func_start sub_0806F780
sub_0806F780: @ 0x0806F780
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r6, #0x80
	lsls r6, r6, #5
	ands r0, r6
	cmp r0, #0
	beq _0806F7A0
	ldr r0, _0806F79C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #1
	b _0806F8B6
	.align 2, 0
_0806F79C: .4byte gCurTask
_0806F7A0:
	adds r0, r4, #0
	bl sub_0803D80C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806F7B2
	ldr r0, [r4, #8]
	orrs r0, r6
	b _0806F812
_0806F7B2:
	ldr r2, _0806F7E4 @ =gKirbys
	adds r3, r4, #0
	adds r3, #0x56
	ldrb r1, [r3]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r5, r3, #0
	ldrh r1, [r1]
	cmp r0, r1
	beq _0806F7E8
	adds r0, r4, #0
	bl sub_0803E324
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806F7E8
	ldr r0, [r4, #8]
	orrs r0, r6
	b _0806F812
	.align 2, 0
_0806F7E4: .4byte gKirbys
_0806F7E8:
	ldr r2, _0806F818 @ =gUnk_02026D50
	ldr r1, _0806F81C @ =gCurLevelInfo
	ldrb r3, [r5]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	adds r0, r0, r1
	ldr r1, _0806F820 @ =0x0000065E
	adds r0, r0, r1
	ldrb r6, [r0]
	lsls r0, r6, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0806F824
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
_0806F812:
	str r0, [r4, #8]
	movs r0, #1
	b _0806F8B6
	.align 2, 0
_0806F818: .4byte gUnk_02026D50
_0806F81C: .4byte gCurLevelInfo
_0806F820: .4byte 0x0000065E
_0806F824:
	ldr r0, _0806F8A4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0806F8B4
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r2
	cmp r0, #0
	bne _0806F8B4
	ldr r0, _0806F8A8 @ =gUnk_03002440
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0806F8B4
	movs r5, #0x90
	lsls r5, r5, #5
	ands r5, r2
	cmp r5, #0
	bne _0806F898
	adds r1, r6, #0
	cmp r3, #0xff
	bne _0806F862
	movs r1, #0xff
_0806F862:
	cmp r1, #0xff
	beq _0806F898
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _0806F8AC @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0806F8B0 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	str r5, [r0]
_0806F898:
	adds r0, r4, #0
	bl sub_0803D9A8
	movs r0, #1
	b _0806F8B6
	.align 2, 0
_0806F8A4: .4byte gUnk_03000510
_0806F8A8: .4byte gUnk_03002440
_0806F8AC: .4byte gUnk_02022EB0
_0806F8B0: .4byte gUnk_02022F50
_0806F8B4:
	movs r0, #0
_0806F8B6:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0806F8BC
sub_0806F8BC: @ 0x0806F8BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _0806F932
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0806F8F8
	ldr r2, _0806F8F0 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _0806F8F4 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _0806F8FA
	.align 2, 0
_0806F8F0: .4byte gCurLevelInfo
_0806F8F4: .4byte 0x0000065E
_0806F8F8:
	movs r1, #0xff
_0806F8FA:
	cmp r1, #0xff
	beq _0806F932
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _0806F94C @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0806F950 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0806F932:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0806F954
	adds r0, r5, #0
	adds r0, #0x10
	ldr r1, [r5, #0x18]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _0806F95E
	.align 2, 0
_0806F94C: .4byte gUnk_02022EB0
_0806F950: .4byte gUnk_02022F50
_0806F954:
	adds r0, r5, #0
	adds r0, #0x10
	ldr r1, [r5, #0x18]
	ldr r2, _0806F9E4 @ =0xFFFFFBFF
	ands r1, r2
_0806F95E:
	str r1, [r0, #8]
	mov sb, r0
	ldr r3, [r5, #8]
	movs r4, #8
	ands r4, r3
	movs r0, #0x2c
	adds r0, r0, r5
	mov r8, r0
	cmp r4, #0
	bne _0806FA00
	adds r0, r5, #0
	adds r0, #0x2b
	adds r2, r5, #0
	adds r2, #0x2a
	ldrb r1, [r0]
	adds r6, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _0806F98C
	ldrh r0, [r5, #0x28]
	ldrh r1, [r5, #0x1c]
	cmp r0, r1
	beq _0806F9A4
_0806F98C:
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _0806F9A4
	strb r4, [r5, #1]
	strh r4, [r5, #2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r5, #8]
_0806F9A4:
	mov r0, sb
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _0806F9E8
	ldr r0, [r5, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #8]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0806FA00
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0806FA00
	movs r0, #0xff
	strb r0, [r6]
	ldr r0, [r5, #8]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	strb r2, [r5, #1]
	strh r2, [r5, #2]
	mov r0, sb
	bl sub_08155128
	b _0806FA00
	.align 2, 0
_0806F9E4: .4byte 0xFFFFFBFF
_0806F9E8:
	mov r2, r8
	ldrb r1, [r2]
	ldrh r0, [r5, #2]
	adds r0, r0, r1
	strh r0, [r5, #2]
	lsrs r0, r0, #4
	strb r0, [r5, #1]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
_0806FA00:
	ldr r2, [r5, #0x40]
	asrs r2, r2, #8
	ldr r3, _0806FAA4 @ =gCurLevelInfo
	ldr r7, _0806FAA8 @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r6, r5, #0
	adds r6, #0x54
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r0, r0, r2
	movs r1, #0
	mov ip, r1
	strh r0, [r5, #0x20]
	ldr r1, [r5, #0x44]
	asrs r1, r1, #8
	ldrb r0, [r7]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r2, r5, #0
	adds r2, #0x55
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	strh r0, [r5, #0x22]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0806FA58
	mov r0, ip
	strb r0, [r6]
	strb r0, [r2]
_0806FA58:
	ldr r3, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _0806FABA
	ldr r2, _0806FAAC @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0806FABA
	ldr r1, _0806FAB0 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r5, #0x20]
	adds r0, r0, r2
	strh r0, [r5, #0x20]
	ldrh r0, [r1, #2]
	ldrh r1, [r5, #0x22]
	adds r0, r0, r1
	strh r0, [r5, #0x22]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _0806FAB4
	mov r0, sb
	bl sub_081564D8
	b _0806FABA
	.align 2, 0
_0806FAA4: .4byte gCurLevelInfo
_0806FAA8: .4byte gUnk_0203AD3C
_0806FAAC: .4byte gKirbys
_0806FAB0: .4byte gUnk_0203AD18
_0806FAB4:
	mov r0, sb
	bl sub_0815604C
_0806FABA:
	movs r0, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0806FAC8
sub_0806FAC8: @ 0x0806FAC8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0806FAE2
	b _0806FC62
_0806FAE2:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806FAF8
	adds r1, r5, #0
	adds r1, #0xc
	ldr r0, [r5, #0x14]
	orrs r0, r2
	str r0, [r1, #8]
	mov sb, r1
	b _0806FB06
_0806FAF8:
	adds r0, r5, #0
	adds r0, #0xc
	ldr r1, [r5, #0x14]
	ldr r2, _0806FB88 @ =0xFFFFFBFF
	ands r1, r2
	str r1, [r0, #8]
	mov sb, r0
_0806FB06:
	ldrh r4, [r5, #6]
	movs r0, #8
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0x28
	adds r0, r0, r5
	mov r8, r0
	cmp r3, #0
	bne _0806FBA6
	adds r0, r5, #0
	adds r0, #0x27
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r1, [r0]
	adds r6, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _0806FB34
	ldrh r0, [r5, #0x24]
	ldrh r1, [r5, #0x18]
	cmp r0, r1
	beq _0806FB4A
_0806FB34:
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _0806FB4A
	strb r3, [r5, #1]
	strh r3, [r5, #2]
	ldr r0, _0806FB8C @ =0x0000FFFB
	ands r0, r4
	strh r0, [r5, #6]
_0806FB4A:
	mov r0, sb
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _0806FB90
	ldrh r0, [r5, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r5, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0806FBA6
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0806FBA6
	movs r0, #0xff
	strb r0, [r6]
	ldrh r1, [r5, #6]
	ldr r0, _0806FB8C @ =0x0000FFFB
	ands r0, r1
	strh r0, [r5, #6]
	strb r3, [r5, #1]
	strh r2, [r5, #2]
	mov r0, sb
	bl sub_08155128
	b _0806FBA6
	.align 2, 0
_0806FB88: .4byte 0xFFFFFBFF
_0806FB8C: .4byte 0x0000FFFB
_0806FB90:
	mov r2, r8
	ldrb r1, [r2]
	ldrh r0, [r5, #2]
	adds r0, r0, r1
	strh r0, [r5, #2]
	lsrs r0, r0, #4
	strb r0, [r5, #1]
	ldrh r1, [r5, #6]
	ldr r0, _0806FC48 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r5, #6]
_0806FBA6:
	ldr r2, [r5, #0x34]
	asrs r2, r2, #8
	ldr r3, _0806FC4C @ =gCurLevelInfo
	ldr r7, _0806FC50 @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r6, r5, #0
	adds r6, #0x40
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r0, r0, r2
	movs r1, #0
	mov ip, r1
	strh r0, [r5, #0x1c]
	ldr r1, [r5, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r7]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r2, r5, #0
	adds r2, #0x41
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	strh r0, [r5, #0x1e]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0806FBFE
	mov r0, ip
	strb r0, [r6]
	strb r0, [r2]
_0806FBFE:
	ldrh r3, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _0806FC62
	ldr r2, _0806FC54 @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0806FC62
	ldr r1, _0806FC58 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r5, #0x1c]
	adds r0, r0, r2
	strh r0, [r5, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r1, [r5, #0x1e]
	adds r0, r0, r1
	strh r0, [r5, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0806FC5C
	mov r0, sb
	bl sub_081564D8
	b _0806FC62
	.align 2, 0
_0806FC48: .4byte 0x0000FFFD
_0806FC4C: .4byte gCurLevelInfo
_0806FC50: .4byte gUnk_0203AD3C
_0806FC54: .4byte gKirbys
_0806FC58: .4byte gUnk_0203AD18
_0806FC5C:
	mov r0, sb
	bl sub_0815604C
_0806FC62:
	movs r0, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0806FC70
sub_0806FC70: @ 0x0806FC70
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x62
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0806FC8A
	b _0806FDE4
_0806FC8A:
	adds r4, r5, #0
	adds r4, #0x57
	ldrb r7, [r4]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldr r1, [r5, #0x40]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	ldr r2, [r5, #0x44]
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	bl sub_080023E4
	strb r0, [r4]
	ldr r3, _0806FD18 @ =gUnk_082D88B8
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r5, #0x58]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #2
	ands r2, r1
	adds r6, r4, #0
	cmp r2, #0
	bne _0806FCDC
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0806FCD2
	b _0806FDC6
_0806FCD2:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _0806FDC6
_0806FCDC:
	lsls r0, r7, #2
	adds r0, r0, r3
	ldr r0, [r0]
	lsrs r4, r0, #0x1c
	cmp r4, #0
	beq _0806FDB8
	movs r0, #0xc
	ands r1, r0
	cmp r1, #0
	beq _0806FD2A
	adds r0, r5, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _0806FD00
	cmp r4, #6
	bls _0806FDE4
_0806FD00:
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _0806FD1C
	subs r0, r4, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _0806FDE4
	b _0806FD2A
	.align 2, 0
_0806FD18: .4byte gUnk_082D88B8
_0806FD1C:
	cmp r0, #0
	ble _0806FD2A
	subs r0, r4, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _0806FDE4
_0806FD2A:
	strb r7, [r6]
	ldr r0, [r5, #0x48]
	asrs r0, r0, #0xc
	ldr r2, [r5, #0x40]
	asrs r1, r2, #0xc
	cmp r0, r1
	beq _0806FD66
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0806FD5C
	ldr r0, _0806FD58 @ =0xFFFFF000
	ands r2, r0
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r2, r1
	b _0806FD62
	.align 2, 0
_0806FD58: .4byte 0xFFFFF000
_0806FD5C:
	ldr r0, _0806FD8C @ =0xFFFFF000
	ands r2, r0
	subs r0, r2, #1
_0806FD62:
	str r0, [r5, #0x40]
	str r0, [r5, #0x48]
_0806FD66:
	ldr r0, [r5, #0x4c]
	asrs r0, r0, #0xc
	ldr r2, [r5, #0x44]
	asrs r1, r2, #0xc
	cmp r0, r1
	beq _0806FD9E
	adds r0, r5, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0806FD90
	ldr r0, _0806FD8C @ =0xFFFFF000
	ands r2, r0
	subs r0, r2, #1
	b _0806FD9A
	.align 2, 0
_0806FD8C: .4byte 0xFFFFF000
_0806FD90:
	ldr r0, _0806FDB0 @ =0xFFFFF000
	ands r2, r0
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r2, r1
_0806FD9A:
	str r0, [r5, #0x44]
	str r0, [r5, #0x4c]
_0806FD9E:
	ldr r0, _0806FDB4 @ =gUnk_08350C38
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _0806FDBC
	.align 2, 0
_0806FDB0: .4byte 0xFFFFF000
_0806FDB4: .4byte gUnk_08350C38
_0806FDB8:
	cmp r2, #0
	beq _0806FDE4
_0806FDBC:
	adds r1, r5, #0
	adds r1, #0x62
	movs r0, #0xff
	strb r0, [r1]
	b _0806FDE4
_0806FDC6:
	ldr r0, _0806FDEC @ =gUnk_082D88B8
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	lsrs r4, r0, #0x1c
	cmp r4, #0
	beq _0806FDE4
	ldr r0, _0806FDF0 @ =gUnk_08350C38
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
_0806FDE4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FDEC: .4byte gUnk_082D88B8
_0806FDF0: .4byte gUnk_08350C38

	thumb_func_start sub_0806FDF4
sub_0806FDF4: @ 0x0806FDF4
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _0806FE24 @ =sub_08070404
	ldr r2, _0806FE28 @ =0x0000FFEF
	ldr r1, _0806FE2C @ =sub_08070B50
	str r1, [sp]
	movs r1, #0x20
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldr r0, _0806FE30 @ =gUnk_03000518
	str r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0806FE34
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _0806FE3C
	.align 2, 0
_0806FE24: .4byte sub_08070404
_0806FE28: .4byte 0x0000FFEF
_0806FE2C: .4byte sub_08070B50
_0806FE30: .4byte gUnk_03000518
_0806FE34:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_0806FE3C:
	add r0, sp, #4
	movs r4, #0
	strh r4, [r0]
	ldr r2, _0806FE5C @ =0x01000010
	adds r1, r5, #0
	bl CpuSet
	ldr r0, _0806FE60 @ =0x0000FFFE
	strh r0, [r5, #2]
	strh r0, [r5, #0xa]
	strh r0, [r5, #0x12]
	strh r0, [r5, #0x1a]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806FE5C: .4byte 0x01000010
_0806FE60: .4byte 0x0000FFFE

	thumb_func_start sub_0806FE64
sub_0806FE64: @ 0x0806FE64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, _0806FE98 @ =gUnk_03000518
	ldr r2, [r0]
	cmp r2, #0
	bne _0806FE82
	b _080700C4
_0806FE82:
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0806FE9C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0806FEA4
	.align 2, 0
_0806FE98: .4byte gUnk_03000518
_0806FE9C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0806FEA4:
	adds r3, r0, #0
	movs r4, #0xff
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r3, #2]
	ldrh r2, [r0]
	str r0, [sp]
	cmp r1, r2
	bne _0806FEBA
	movs r4, #0
	b _0806FED6
_0806FEBA:
	ldrh r0, [r3, #0xa]
	cmp r0, r2
	bne _0806FEC4
	movs r4, #1
	b _0806FED6
_0806FEC4:
	ldrh r0, [r3, #0x12]
	cmp r0, r2
	bne _0806FECE
	movs r4, #2
	b _0806FED6
_0806FECE:
	ldrh r0, [r3, #0x1a]
	cmp r0, r2
	bne _0806FED6
	movs r4, #3
_0806FED6:
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _0806FF2E
	lsls r0, r0, #3
	adds r2, r3, r0
	ldrh r1, [r2]
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0806FEF6
	strh r0, [r2, #4]
_0806FEF6:
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	movs r4, #0
	orrs r1, r0
	strh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	mov r0, sb
	ands r0, r3
	cmp r0, #0
	beq _0806FF14
	orrs r1, r3
	strh r1, [r2]
_0806FF14:
	movs r1, #0xff
	ldrb r0, [r2, #6]
	mov r4, sb
	ands r1, r4
	cmp r0, r1
	bhi _0806FF22
	strb r4, [r2, #6]
_0806FF22:
	cmp r1, #3
	bhi _0806FF28
	b _080700C4
_0806FF28:
	ldrh r1, [r2]
	adds r0, r5, #0
	b _080700C0
_0806FF2E:
	movs r7, #0xff
	ldrh r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0806FF42
	movs r7, #0
	b _0806FF6A
_0806FF42:
	ldrh r1, [r3, #8]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0806FF50
	movs r7, #1
	b _0806FF6A
_0806FF50:
	ldrh r1, [r3, #0x10]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0806FF5E
	movs r7, #2
	b _0806FF6A
_0806FF5E:
	ldrh r1, [r3, #0x18]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0806FF6A
	movs r7, #3
_0806FF6A:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _0806FF74
	b _08070082
_0806FF74:
	movs r5, #0
	movs r1, #0
	ldr r0, _0806FFB4 @ =gUnk_0203AD44
	ldrb r2, [r0]
	mov sl, r0
	cmp r5, r2
	bhs _0806FFAC
	ldr r0, _0806FFB8 @ =gCurLevelInfo
	mov r8, r0
	ldrh r4, [r3, #2]
	movs r0, #0xcd
	lsls r0, r0, #3
	mov ip, r0
	movs r6, #0xbf
	lsls r6, r6, #3
_0806FF92:
	mov r0, ip
	muls r0, r1, r0
	add r0, r8
	adds r0, r0, r6
	ldrh r0, [r0]
	cmp r4, r0
	bne _0806FFA2
	movs r5, #1
_0806FFA2:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _0806FF92
_0806FFAC:
	cmp r5, #0
	bne _0806FFBC
	movs r7, #0
	b _08070082
	.align 2, 0
_0806FFB4: .4byte gUnk_0203AD44
_0806FFB8: .4byte gCurLevelInfo
_0806FFBC:
	movs r4, #0
	movs r1, #0
	mov r2, sl
	ldrb r0, [r2]
	cmp r4, r0
	bhs _0806FFF4
	ldr r2, _0806FFFC @ =gCurLevelInfo
	mov r8, r2
	ldrh r5, [r3, #0xa]
	adds r2, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov ip, r0
	movs r6, #0xbf
	lsls r6, r6, #3
_0806FFDA:
	mov r0, ip
	muls r0, r1, r0
	add r0, r8
	adds r0, r0, r6
	ldrh r0, [r0]
	cmp r5, r0
	bne _0806FFEA
	movs r4, #1
_0806FFEA:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _0806FFDA
_0806FFF4:
	cmp r4, #0
	bne _08070000
	movs r7, #1
	b _08070082
	.align 2, 0
_0806FFFC: .4byte gCurLevelInfo
_08070000:
	movs r4, #0
	movs r1, #0
	mov r2, sl
	ldrb r0, [r2]
	cmp r4, r0
	bhs _08070038
	ldr r2, _08070040 @ =gCurLevelInfo
	mov r8, r2
	ldrh r5, [r3, #0x12]
	adds r2, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov ip, r0
	movs r6, #0xbf
	lsls r6, r6, #3
_0807001E:
	mov r0, ip
	muls r0, r1, r0
	add r0, r8
	adds r0, r0, r6
	ldrh r0, [r0]
	cmp r5, r0
	bne _0807002E
	movs r4, #1
_0807002E:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _0807001E
_08070038:
	cmp r4, #0
	bne _08070044
	movs r7, #2
	b _08070082
	.align 2, 0
_08070040: .4byte gCurLevelInfo
_08070044:
	movs r4, #0
	movs r1, #0
	mov r2, sl
	ldrb r0, [r2]
	cmp r4, r0
	bhs _0807007C
	ldr r2, _080700D4 @ =gCurLevelInfo
	mov r8, r2
	ldrh r5, [r3, #0x1a]
	adds r2, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov ip, r0
	movs r6, #0xbf
	lsls r6, r6, #3
_08070062:
	mov r0, ip
	muls r0, r1, r0
	add r0, r8
	adds r0, r0, r6
	ldrh r0, [r0]
	cmp r5, r0
	bne _08070072
	movs r4, #1
_08070072:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _08070062
_0807007C:
	cmp r4, #0
	bne _08070082
	movs r7, #3
_08070082:
	lsls r0, r7, #0x18
	asrs r0, r0, #0x15
	adds r2, r3, r0
	movs r1, #0
	mov r3, sb
	strb r3, [r2, #6]
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r2]
	ldr r4, [sp]
	ldrh r0, [r4]
	strh r0, [r2, #2]
	strh r1, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _080700AE
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
_080700AE:
	movs r0, #0xff
	mov r1, sb
	ands r0, r1
	cmp r0, #3
	bls _080700C4
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
_080700C0:
	orrs r0, r1
	strh r0, [r2]
_080700C4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080700D4: .4byte gCurLevelInfo

	thumb_func_start sub_080700D8
sub_080700D8: @ 0x080700D8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080700FC @ =gUnk_03000518
	ldr r2, [r0]
	cmp r2, #0
	beq _08070156
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08070100
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08070108
	.align 2, 0
_080700FC: .4byte gUnk_03000518
_08070100:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08070108:
	adds r3, r0, #0
	movs r4, #0xff
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r3, #2]
	ldrh r2, [r0]
	cmp r1, r2
	bne _0807011C
	movs r4, #0
	b _08070138
_0807011C:
	ldrh r0, [r3, #0xa]
	cmp r0, r2
	bne _08070126
	movs r4, #1
	b _08070138
_08070126:
	ldrh r0, [r3, #0x12]
	cmp r0, r2
	bne _08070130
	movs r4, #2
	b _08070138
_08070130:
	ldrh r0, [r3, #0x1a]
	cmp r0, r2
	bne _08070138
	movs r4, #3
_08070138:
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _08070156
	lsls r1, r0, #3
	adds r1, r3, r1
	movs r0, #0
	movs r2, #0
	strh r2, [r1]
	strb r0, [r1, #6]
	ldr r0, _0807015C @ =0x0000FFFE
	strh r0, [r1, #2]
	ldr r0, _08070160 @ =gUnk_0203AD18
	strh r2, [r0]
	strh r2, [r0, #2]
_08070156:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807015C: .4byte 0x0000FFFE
_08070160: .4byte gUnk_0203AD18

	thumb_func_start sub_08070164
sub_08070164: @ 0x08070164
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	mov ip, r0
	mov sl, r0
	ldr r0, _080701F0 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _080701D4
	ldr r1, _080701F4 @ =gCurLevelInfo
	mov sb, r1
	ldrh r6, [r4, #2]
	ldr r7, _080701F8 @ =gUnk_02026D50
_08070188:
	subs r1, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	mov r2, sb
	adds r3, r0, r2
	movs r2, #0xbf
	lsls r2, r2, #3
	adds r0, r3, r2
	ldrh r0, [r0]
	adds r5, r1, #0
	cmp r0, r6
	bne _080701CC
	ldr r0, _080701FC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r5
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080701B8
	movs r0, #1
	mov sl, r0
_080701B8:
	ldr r1, _08070200 @ =0x0000065E
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0807020C
_080701CC:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08070188
_080701D4:
	movs r0, #1
	cmp r0, #0
	beq _0807020C
	movs r0, #0
	movs r1, #0
	strh r1, [r4]
	strb r0, [r4, #6]
	ldr r0, _08070204 @ =0x0000FFFE
	strh r0, [r4, #2]
	ldr r0, _08070208 @ =gUnk_0203AD18
	strh r1, [r0]
	strh r1, [r0, #2]
	b _080703F4
	.align 2, 0
_080701F0: .4byte gUnk_0203AD44
_080701F4: .4byte gCurLevelInfo
_080701F8: .4byte gUnk_02026D50
_080701FC: .4byte gUnk_03000510
_08070200: .4byte 0x0000065E
_08070204: .4byte 0x0000FFFE
_08070208: .4byte gUnk_0203AD18
_0807020C:
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807021A
	b _080703F4
_0807021A:
	ldrb r0, [r4, #6]
	subs r0, #1
	cmp r0, #5
	bls _08070224
	b _08070350
_08070224:
	lsls r0, r0, #2
	ldr r1, _08070230 @ =_08070234
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08070230: .4byte _08070234
_08070234: @ jump table
	.4byte _0807024C @ case 0
	.4byte _08070280 @ case 1
	.4byte _080702B4 @ case 2
	.4byte _080702F8 @ case 3
	.4byte _0807030C @ case 4
	.4byte _08070320 @ case 5
_0807024C:
	ldr r2, _0807027C @ =gUnk_08350BB0
	movs r0, #4
	ldrsh r1, [r4, r0]
	lsls r1, r1, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r2, #1
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0xd
	ble _08070350
	b _080702E0
	.align 2, 0
_0807027C: .4byte gUnk_08350BB0
_08070280:
	ldr r2, _080702B0 @ =gUnk_08350BCC
	movs r0, #4
	ldrsh r1, [r4, r0]
	lsls r1, r1, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r2, #1
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0x11
	ble _08070350
	b _080702E0
	.align 2, 0
_080702B0: .4byte gUnk_08350BCC
_080702B4:
	ldr r2, _080702F0 @ =gUnk_08350BF0
	movs r0, #4
	ldrsh r1, [r4, r0]
	lsls r1, r1, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r2, #1
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0x17
	ble _08070350
_080702E0:
	movs r0, #0
	movs r1, #0
	strh r1, [r4]
	strb r0, [r4, #6]
	ldr r0, _080702F4 @ =0x0000FFFE
	strh r0, [r4, #2]
	b _08070350
	.align 2, 0
_080702F0: .4byte gUnk_08350BF0
_080702F4: .4byte 0x0000FFFE
_080702F8:
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0x11
	ble _08070304
	movs r0, #0
	strh r0, [r4, #4]
_08070304:
	ldr r2, _08070308 @ =gUnk_08350BCC
	b _0807032E
	.align 2, 0
_08070308: .4byte gUnk_08350BCC
_0807030C:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0xb
	ble _08070318
	movs r0, #0
	strh r0, [r4, #4]
_08070318:
	ldr r2, _0807031C @ =gUnk_08350C20
	b _0807032E
	.align 2, 0
_0807031C: .4byte gUnk_08350C20
_08070320:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0x17
	ble _0807032C
	movs r0, #0
	strh r0, [r4, #4]
_0807032C:
	ldr r2, _080703A8 @ =gUnk_08350BF0
_0807032E:
	movs r0, #4
	ldrsh r1, [r4, r0]
	lsls r1, r1, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r2, #1
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
_08070350:
	ldr r7, _080703AC @ =gCurLevelInfo
	ldr r0, _080703B0 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	movs r6, #0xcd
	lsls r6, r6, #3
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r1, [r4, #2]
	ldrh r0, [r0]
	cmp r1, r0
	bne _080703E8
	ldr r5, _080703B4 @ =gUnk_0203AD18
	mov r2, r8
	strh r2, [r5]
	mov r0, ip
	strh r0, [r5, #2]
	ldr r0, _080703B8 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080703BC
	bl sub_08002374
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r1, [r5]
	adds r0, #0x44
	strh r1, [r0]
	bl sub_08002374
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r1, [r5, #2]
	adds r0, #0x46
	strh r1, [r0]
	b _080703E8
	.align 2, 0
_080703A8: .4byte gUnk_08350BF0
_080703AC: .4byte gCurLevelInfo
_080703B0: .4byte gUnk_0203AD3C
_080703B4: .4byte gUnk_0203AD18
_080703B8: .4byte gUnk_0203AD20
_080703BC:
	bl sub_08002374
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r7
	ldrh r0, [r5]
	rsbs r0, r0, #0
	adds r1, #0x44
	strh r0, [r1]
	bl sub_08002374
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r7
	ldrh r0, [r5, #2]
	rsbs r0, r0, #0
	adds r1, #0x46
	strh r0, [r1]
_080703E8:
	mov r1, sl
	cmp r1, #0
	bne _080703F4
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080703F4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08070404
sub_08070404: @ 0x08070404
	push {r4, r5, lr}
	ldr r0, _08070420 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08070424
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0807042C
	.align 2, 0
_08070420: .4byte gCurTask
_08070424:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0807042C:
	ldr r1, _08070484 @ =gUnk_0203AD18
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	ldrh r1, [r4]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08070448
	adds r0, r4, #0
	bl sub_08070164
_08070448:
	ldrh r1, [r4, #8]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0807045A
	adds r0, r4, #0
	adds r0, #8
	bl sub_08070164
_0807045A:
	ldrh r1, [r4, #0x10]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0807046C
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_08070164
_0807046C:
	ldrh r1, [r4, #0x18]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0807047E
	adds r0, r4, #0
	adds r0, #0x18
	bl sub_08070164
_0807047E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08070484: .4byte gUnk_0203AD18

	thumb_func_start sub_08070488
sub_08070488: @ 0x08070488
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	movs r6, #0
	ldr r0, _0807049C @ =gUnk_03000518
	ldr r2, [r0]
	cmp r2, #0
	bne _080704A0
	movs r0, #0
	b _080704F8
	.align 2, 0
_0807049C: .4byte gUnk_03000518
_080704A0:
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080704B6
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080704BE
_080704B6:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080704BE:
	adds r5, r0, #0
	movs r2, #0
	ldr r0, _08070500 @ =gUnk_0203AD44
	ldrb r1, [r0]
	cmp r2, r1
	bhs _080704F6
	adds r0, r3, #0
	adds r0, #0x60
	ldrh r4, [r0]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r3, r1, #0
_080704D6:
	lsls r0, r2, #3
	adds r1, r5, r0
	ldrh r0, [r1, #2]
	cmp r0, r4
	bne _080704EC
	ldrh r1, [r1]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080704EC
	movs r6, #1
_080704EC:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r3
	blo _080704D6
_080704F6:
	adds r0, r6, #0
_080704F8:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08070500: .4byte gUnk_0203AD44

	thumb_func_start sub_08070504
sub_08070504: @ 0x08070504
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	movs r6, #0
	ldr r0, _08070518 @ =gUnk_03000518
	ldr r2, [r0]
	cmp r2, #0
	bne _0807051C
	movs r0, #0
	b _08070574
	.align 2, 0
_08070518: .4byte gUnk_03000518
_0807051C:
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08070532
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807053A
_08070532:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807053A:
	adds r5, r0, #0
	movs r2, #0
	ldr r0, _0807057C @ =gUnk_0203AD44
	ldrb r1, [r0]
	cmp r2, r1
	bhs _08070572
	adds r0, r3, #0
	adds r0, #0x60
	ldrh r4, [r0]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r3, r1, #0
_08070552:
	lsls r0, r2, #3
	adds r1, r5, r0
	ldrh r0, [r1, #2]
	cmp r0, r4
	bne _08070568
	ldrh r1, [r1]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08070568
	movs r6, #1
_08070568:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r3
	blo _08070552
_08070572:
	adds r0, r6, #0
_08070574:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807057C: .4byte gUnk_0203AD44

	thumb_func_start sub_08070580
sub_08070580: @ 0x08070580
	push {r4, r5, lr}
	ldr r0, _0807059C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080705A0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080705A8
	.align 2, 0
_0807059C: .4byte gCurTask
_080705A0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080705A8:
	adds r4, r0, #0
	adds r0, #0x84
	ldr r1, [r0]
	cmp r1, #0
	beq _080705B8
	adds r0, r4, #0
	bl _call_via_r1
_080705B8:
	adds r0, r4, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08070696
	ldr r1, [r4, #0x78]
	cmp r1, #0
	beq _080705D6
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08070696
_080705D6:
	ldr r0, [r4, #8]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080705F4
	ldr r1, [r4, #0x7c]
	cmp r1, #0
	beq _080705F4
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08070696
_080705F4:
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r3
	cmp r0, #0
	bne _08070620
	ldr r1, [r4, #0x40]
	str r1, [r4, #0x48]
	ldr r2, [r4, #0x44]
	str r2, [r4, #0x4c]
	adds r0, r4, #0
	adds r0, #0x50
	movs r5, #0
	ldrsh r0, [r0, r5]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	adds r0, r4, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r2, r2, r0
	str r2, [r4, #0x44]
_08070620:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r3, r0
	cmp r3, #0
	bne _08070672
	ldr r2, _0807069C @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r3, [r4, #0x40]
	ldr r0, [r0]
	cmp r3, r0
	bgt _08070672
	adds r0, r2, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _08070672
	adds r0, r2, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r3, [r4, #0x44]
	ldr r0, [r0]
	cmp r3, r0
	bgt _08070672
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _08070672
	adds r0, r4, #0
	bl sub_0806FC70
_08070672:
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0]
	cmp r1, #0
	beq _08070690
	subs r0, #0x1e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08070690
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08070696
_08070690:
	adds r0, r4, #0
	bl sub_0806F8BC
_08070696:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807069C: .4byte gCurLevelInfo

	thumb_func_start sub_080706A0
sub_080706A0: @ 0x080706A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	adds r7, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	ldr r0, _080706E8 @ =sub_08070808
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080706EC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080706F0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080706F8
	.align 2, 0
_080706E8: .4byte sub_08070808
_080706EC: .4byte sub_0803DCCC
_080706F0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080706F8:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r4, #6]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r2, #0
	movs r6, #0
	mov r3, sp
	strh r6, [r3, #8]
	adds r3, r0, #0
	orrs r3, r1
	strh r3, [r4, #6]
	ldr r0, _080707B0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #0x56
	adds r0, r0, r5
	mov r8, r0
	movs r1, #1
	mov ip, r1
	mov r0, ip
	mov r6, r8
	ldrb r6, [r6]
	lsls r0, r6
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08070756
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	orrs r3, r0
	strh r3, [r4, #6]
_08070756:
	ldr r0, [r5, #8]
	mov r2, ip
	ands r0, r2
	cmp r0, #0
	beq _08070768
	ldrh r0, [r4, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #6]
_08070768:
	ldr r3, [sp, #0x2c]
	str r3, [r4, #0x48]
	ldr r0, [sp, #0x30]
	str r0, [r4, #0x4c]
	ldrh r0, [r4, #6]
	movs r1, #2
	orrs r0, r1
	strh r0, [r4, #6]
	adds r0, r4, #0
	bl _call_via_r3
	cmp r7, #0
	beq _080707D0
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r7, r0
	bls _080707B8
	mov r6, r8
	ldrb r0, [r6]
	lsls r0, r0, #0xb
	ldr r1, _080707B4 @ =0x06010600
	adds r0, r0, r1
	cmp r7, r0
	beq _080707A4
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_080707A4:
	adds r1, r4, #0
	adds r1, #0xc
	mov r3, sb
	str r3, [sp]
	b _080707C0
	.align 2, 0
_080707B0: .4byte gUnk_03000510
_080707B4: .4byte 0x06010600
_080707B8:
	adds r1, r4, #0
	adds r1, #0xc
	mov r6, sb
	str r6, [sp]
_080707C0:
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r7, #0
	mov r3, sl
	bl sub_080709F8
	b _080707F2
_080707D0:
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _08070804 @ =0x06012000
	mov r3, sb
	str r3, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	mov r3, sl
	bl sub_080709F8
_080707F2:
	adds r0, r4, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08070804: .4byte 0x06012000

	thumb_func_start sub_08070808
sub_08070808: @ 0x08070808
	push {r4, r5, lr}
	ldr r2, _08070824 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08070828
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08070830
	.align 2, 0
_08070824: .4byte gCurTask
_08070828:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08070830:
	adds r4, r0, #0
	ldr r5, [r4, #0x44]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08070848
	ldr r0, [r2]
	bl TaskDestroy
	b _080708D6
_08070848:
	ldr r1, [r4, #0x4c]
	cmp r1, #0
	beq _08070854
	adds r0, r4, #0
	bl _call_via_r1
_08070854:
	ldr r0, _08070880 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08070884
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08070884
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080708D6
	.align 2, 0
_08070880: .4byte gUnk_03000510
_08070884:
	ldr r1, [r4, #0x48]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080708A0
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _080708D6
_080708A0:
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #0x3c]
	adds r0, r0, r1
	strh r0, [r4, #0x3c]
	ldrh r0, [r4, #8]
	ldrh r2, [r4, #0x3e]
	adds r0, r0, r2
	strh r0, [r4, #0x3e]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080708D0
	movs r0, #0x3c
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r4, r2]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x38]
_080708D0:
	adds r0, r4, #0
	bl sub_0806FAC8
_080708D6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080708DC
sub_080708DC: @ 0x080708DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	movs r3, #0
	movs r6, #0xc0
	lsls r6, r6, #0xc
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r5, r0
	bls _08070920
	adds r3, r5, #0
	ldr r0, _0807091C @ =0x06012000
	cmp r3, r0
	beq _0807096C
	b _08070968
	.align 2, 0
_0807091C: .4byte 0x06012000
_08070920:
	ldr r2, _08070958 @ =gKirbys
	ldr r0, _0807095C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807096C
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08070960
	adds r0, r5, #0
	mov r1, sb
	mov r2, r8
	bl sub_0803DE54
	adds r3, r0, #0
	b _0807096C
	.align 2, 0
_08070958: .4byte gKirbys
_0807095C: .4byte gUnk_0203AD3C
_08070960:
	adds r0, r5, #0
	bl sub_081570B0
	adds r3, r0, #0
_08070968:
	ldr r0, _08070980 @ =0xFFF7FFFF
	ands r6, r0
_0807096C:
	ldr r0, [r7, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08070984
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r6, r0
	b _08070988
	.align 2, 0
_08070980: .4byte 0xFFF7FFFF
_08070984:
	ldr r0, _080709F0 @ =0xFFFFFBFF
	ands r6, r0
_08070988:
	str r3, [r4]
	mov r1, sl
	lsls r0, r1, #6
	movs r2, #0
	movs r1, #0
	strh r0, [r4, #0x14]
	mov r0, sb
	strh r0, [r4, #0xc]
	mov r0, r8
	strb r0, [r4, #0x1a]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	strb r2, [r4, #0x1c]
	movs r0, #0xf
	strb r0, [r4, #0x1f]
	ldr r0, [r7, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r7, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r6, r0
	str r6, [r4, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	adds r0, r4, #0
	str r3, [sp]
	bl sub_08155128
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	ldr r3, [sp]
	cmp r0, #0
	beq _080709DE
	ldr r0, _080709F4 @ =0x06012000
_080709DE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080709F0: .4byte 0xFFFFFBFF
_080709F4: .4byte 0x06012000

	thumb_func_start sub_080709F8
sub_080709F8: @ 0x080709F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	movs r3, #0
	movs r6, #0xc0
	lsls r6, r6, #0xc
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r5, r0
	bls _08070A3C
	adds r3, r5, #0
	ldr r0, _08070A38 @ =0x06012000
	cmp r3, r0
	beq _08070A88
	b _08070A84
	.align 2, 0
_08070A38: .4byte 0x06012000
_08070A3C:
	ldr r2, _08070A74 @ =gKirbys
	ldr r0, _08070A78 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08070A88
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08070A7C
	adds r0, r5, #0
	mov r1, sb
	mov r2, r8
	bl sub_0803DE54
	adds r3, r0, #0
	b _08070A88
	.align 2, 0
_08070A74: .4byte gKirbys
_08070A78: .4byte gUnk_0203AD3C
_08070A7C:
	adds r0, r5, #0
	bl sub_081570B0
	adds r3, r0, #0
_08070A84:
	ldr r0, _08070A9C @ =0xFFF7FFFF
	ands r6, r0
_08070A88:
	ldrh r1, [r7, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08070AA0
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r6, r0
	b _08070AA4
	.align 2, 0
_08070A9C: .4byte 0xFFF7FFFF
_08070AA0:
	ldr r0, _08070B0C @ =0xFFFFFBFF
	ands r6, r0
_08070AA4:
	str r3, [r4]
	mov r1, sl
	lsls r0, r1, #6
	movs r2, #0
	movs r1, #0
	strh r0, [r4, #0x14]
	mov r0, sb
	strh r0, [r4, #0xc]
	mov r0, r8
	strb r0, [r4, #0x1a]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	strb r2, [r4, #0x1c]
	movs r0, #0xf
	strb r0, [r4, #0x1f]
	ldr r0, [r7, #0x34]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r7, #0x38]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r6, r0
	str r6, [r4, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	adds r0, r4, #0
	str r3, [sp]
	bl sub_08155128
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	ldr r3, [sp]
	cmp r0, #0
	beq _08070AFA
	ldr r0, _08070B10 @ =0x06012000
_08070AFA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070B0C: .4byte 0xFFFFFBFF
_08070B10: .4byte 0x06012000

	thumb_func_start sub_08070B14
sub_08070B14: @ 0x08070B14
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08070B44
	ldr r1, [r3, #0x40]
	str r1, [r3, #0x48]
	ldr r2, [r3, #0x44]
	str r2, [r3, #0x4c]
	adds r0, r3, #0
	adds r0, #0x50
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r1, r1, r0
	str r1, [r3, #0x40]
	adds r0, r3, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r2, r2, r0
	str r2, [r3, #0x44]
_08070B44:
	adds r0, r3, #0
	bl sub_0806F8BC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08070B50
sub_08070B50: @ 0x08070B50
	ldr r0, _08070B60 @ =gUnk_0203AD18
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r0, _08070B64 @ =gUnk_03000518
	str r1, [r0]
	bx lr
	.align 2, 0
_08070B60: .4byte gUnk_0203AD18
_08070B64: .4byte gUnk_03000518

	thumb_func_start sub_08070B68
sub_08070B68: @ 0x08070B68
	push {r4, lr}
	ldr r0, _08070B84 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08070B88
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08070B90
	.align 2, 0
_08070B84: .4byte gCurTask
_08070B88:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08070B90:
	adds r0, r4, #0
	bl sub_0806F780
	adds r0, r4, #0
	bl sub_0806F8BC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start nullsub_122
nullsub_122: @ 0x08070BA4
	bx lr
	.align 2, 0

	thumb_func_start sub_08070BA8
sub_08070BA8: @ 0x08070BA8
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r1, _08070C0C @ =gUnk_082D88B8
	adds r0, #0x57
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08070BD8
	adds r0, r2, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _08070C1E
	adds r0, r2, #0
	adds r0, #0x52
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	bgt _08070C1E
_08070BD8:
	ldr r5, [r2, #0x40]
	movs r0, #0xf0
	lsls r0, r0, #4
	adds r1, r5, #0
	ands r1, r0
	asrs r1, r1, #9
	ldr r4, [r2, #0x44]
	bics r0, r4
	asrs r0, r0, #8
	subs r3, r1, r0
	cmp r3, #0
	blt _08070C1E
	adds r0, r2, #0
	adds r0, #0x50
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r0, #2
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmn r1, r0
	ble _08070C10
	lsls r0, r3, #8
	subs r0, r5, r0
	str r0, [r2, #0x40]
	b _08070C16
	.align 2, 0
_08070C0C: .4byte gUnk_082D88B8
_08070C10:
	lsls r0, r3, #8
	subs r0, r4, r0
	str r0, [r2, #0x44]
_08070C16:
	adds r1, r2, #0
	adds r1, #0x62
	movs r0, #0xff
	strb r0, [r1]
_08070C1E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08070C24
sub_08070C24: @ 0x08070C24
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r1, _08070C88 @ =gUnk_082D88B8
	adds r0, #0x57
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08070C54
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _08070C9A
	adds r0, r3, #0
	adds r0, #0x52
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	bgt _08070C9A
_08070C54:
	ldr r5, [r3, #0x40]
	movs r0, #0xf0
	lsls r0, r0, #4
	adds r1, r5, #0
	ands r1, r0
	asrs r1, r1, #9
	ldr r4, [r3, #0x44]
	bics r0, r4
	asrs r0, r0, #8
	subs r0, #7
	subs r2, r1, r0
	cmp r2, #0
	blt _08070C9A
	adds r0, r3, #0
	adds r0, #0x50
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r0, #2
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmn r1, r0
	ble _08070C8C
	lsls r0, r2, #8
	subs r0, r5, r0
	str r0, [r3, #0x40]
	b _08070C92
	.align 2, 0
_08070C88: .4byte gUnk_082D88B8
_08070C8C:
	lsls r0, r2, #8
	subs r0, r4, r0
	str r0, [r3, #0x44]
_08070C92:
	adds r1, r3, #0
	adds r1, #0x62
	movs r0, #0xff
	strb r0, [r1]
_08070C9A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08070CA0
sub_08070CA0: @ 0x08070CA0
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r1, _08070D08 @ =gUnk_082D88B8
	adds r0, #0x57
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08070CD0
	adds r0, r2, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _08070D1A
	adds r0, r2, #0
	adds r0, #0x52
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	bgt _08070D1A
_08070CD0:
	ldr r5, [r2, #0x40]
	movs r0, #0xf0
	lsls r0, r0, #4
	adds r1, r0, #0
	bics r1, r5
	asrs r1, r1, #9
	ldr r4, [r2, #0x44]
	bics r0, r4
	asrs r0, r0, #8
	subs r3, r1, r0
	cmp r3, #0
	blt _08070D1A
	adds r0, r2, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	rsbs r0, r0, #0
	adds r1, r2, #0
	adds r1, #0x52
	movs r6, #0
	ldrsh r1, [r1, r6]
	cmn r0, r1
	ble _08070D0C
	lsls r0, r3, #8
	adds r0, r5, r0
	str r0, [r2, #0x40]
	b _08070D12
	.align 2, 0
_08070D08: .4byte gUnk_082D88B8
_08070D0C:
	lsls r0, r3, #8
	subs r0, r4, r0
	str r0, [r2, #0x44]
_08070D12:
	adds r1, r2, #0
	adds r1, #0x62
	movs r0, #0xff
	strb r0, [r1]
_08070D1A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08070D20
sub_08070D20: @ 0x08070D20
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r1, _08070D88 @ =gUnk_082D88B8
	adds r0, #0x57
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08070D50
	adds r0, r2, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _08070D9A
	adds r0, r2, #0
	adds r0, #0x52
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	bgt _08070D9A
_08070D50:
	ldr r5, [r2, #0x40]
	movs r0, #0xf0
	lsls r0, r0, #4
	adds r1, r0, #0
	bics r1, r5
	asrs r1, r1, #9
	ldr r4, [r2, #0x44]
	bics r0, r4
	asrs r0, r0, #8
	subs r0, #7
	subs r3, r1, r0
	cmp r3, #0
	blt _08070D9A
	adds r0, r2, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	rsbs r0, r0, #0
	adds r1, r2, #0
	adds r1, #0x52
	movs r6, #0
	ldrsh r1, [r1, r6]
	cmn r0, r1
	ble _08070D8C
	lsls r0, r3, #8
	adds r0, r5, r0
	str r0, [r2, #0x40]
	b _08070D92
	.align 2, 0
_08070D88: .4byte gUnk_082D88B8
_08070D8C:
	lsls r0, r3, #8
	subs r0, r4, r0
	str r0, [r2, #0x44]
_08070D92:
	adds r1, r2, #0
	adds r1, #0x62
	movs r0, #0xff
	strb r0, [r1]
_08070D9A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08070DA0
sub_08070DA0: @ 0x08070DA0
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldr r1, _08070E08 @ =gUnk_082D88B8
	adds r0, #0x57
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08070DD0
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _08070E1A
	adds r0, r3, #0
	adds r0, #0x52
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0
	blt _08070E1A
_08070DD0:
	ldr r6, [r3, #0x40]
	movs r2, #0xf0
	lsls r2, r2, #4
	adds r1, r6, #0
	ands r1, r2
	asrs r1, r1, #9
	ldr r5, [r3, #0x44]
	adds r0, r5, #0
	ands r0, r2
	asrs r0, r0, #8
	subs r4, r1, r0
	cmp r4, #0
	blt _08070E1A
	adds r0, r3, #0
	adds r0, #0x50
	adds r2, r3, #0
	adds r2, #0x52
	movs r7, #0
	ldrsh r1, [r0, r7]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r1, r0
	ble _08070E0C
	lsls r0, r4, #8
	subs r0, r6, r0
	str r0, [r3, #0x40]
	b _08070E12
	.align 2, 0
_08070E08: .4byte gUnk_082D88B8
_08070E0C:
	lsls r0, r4, #8
	adds r0, r5, r0
	str r0, [r3, #0x44]
_08070E12:
	adds r1, r3, #0
	adds r1, #0x62
	movs r0, #0xff
	strb r0, [r1]
_08070E1A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08070E20
sub_08070E20: @ 0x08070E20
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldr r1, _08070E88 @ =gUnk_082D88B8
	adds r0, #0x57
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08070E50
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _08070E9A
	adds r0, r3, #0
	adds r0, #0x52
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0
	blt _08070E9A
_08070E50:
	ldr r6, [r3, #0x40]
	movs r2, #0xf0
	lsls r2, r2, #4
	adds r1, r6, #0
	ands r1, r2
	asrs r1, r1, #9
	ldr r5, [r3, #0x44]
	adds r0, r5, #0
	ands r0, r2
	asrs r0, r0, #8
	subs r0, #7
	subs r4, r1, r0
	cmp r4, #0
	blt _08070E9A
	adds r0, r3, #0
	adds r0, #0x50
	adds r2, r3, #0
	adds r2, #0x52
	movs r7, #0
	ldrsh r1, [r0, r7]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r1, r0
	ble _08070E8C
	lsls r0, r4, #8
	subs r0, r6, r0
	str r0, [r3, #0x40]
	b _08070E92
	.align 2, 0
_08070E88: .4byte gUnk_082D88B8
_08070E8C:
	lsls r0, r4, #8
	adds r0, r5, r0
	str r0, [r3, #0x44]
_08070E92:
	adds r1, r3, #0
	adds r1, #0x62
	movs r0, #0xff
	strb r0, [r1]
_08070E9A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08070EA0
sub_08070EA0: @ 0x08070EA0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r1, _08070F0C @ =gUnk_082D88B8
	adds r0, #0x57
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08070ED0
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _08070F1E
	adds r0, r3, #0
	adds r0, #0x52
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	blt _08070F1E
_08070ED0:
	ldr r5, [r3, #0x40]
	movs r2, #0xf0
	lsls r2, r2, #4
	adds r1, r2, #0
	bics r1, r5
	asrs r1, r1, #9
	ldr r4, [r3, #0x44]
	adds r0, r4, #0
	ands r0, r2
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	ble _08070F1E
	adds r2, #1
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	rsbs r0, r0, #0
	adds r1, r3, #0
	adds r1, #0x52
	movs r6, #0
	ldrsh r1, [r1, r6]
	cmp r0, r1
	ble _08070F10
	lsls r0, r2, #8
	adds r0, r5, r0
	str r0, [r3, #0x40]
	b _08070F16
	.align 2, 0
_08070F0C: .4byte gUnk_082D88B8
_08070F10:
	lsls r0, r2, #8
	adds r0, r4, r0
	str r0, [r3, #0x44]
_08070F16:
	adds r1, r3, #0
	adds r1, #0x62
	movs r0, #0xff
	strb r0, [r1]
_08070F1E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08070F24
sub_08070F24: @ 0x08070F24
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r1, _08070F90 @ =gUnk_082D88B8
	adds r0, #0x57
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08070F54
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _08070FA2
	adds r0, r3, #0
	adds r0, #0x52
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	blt _08070FA2
_08070F54:
	ldr r5, [r3, #0x40]
	movs r2, #0xf0
	lsls r2, r2, #4
	adds r1, r2, #0
	bics r1, r5
	asrs r1, r1, #9
	ldr r4, [r3, #0x44]
	adds r0, r4, #0
	ands r0, r2
	asrs r0, r0, #8
	subs r0, #7
	subs r2, r1, r0
	cmp r2, #0
	blt _08070FA2
	adds r2, #1
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	rsbs r0, r0, #0
	adds r1, r3, #0
	adds r1, #0x52
	movs r6, #0
	ldrsh r1, [r1, r6]
	cmp r0, r1
	ble _08070F94
	lsls r0, r2, #8
	adds r0, r5, r0
	str r0, [r3, #0x40]
	b _08070F9A
	.align 2, 0
_08070F90: .4byte gUnk_082D88B8
_08070F94:
	lsls r0, r2, #8
	adds r0, r4, r0
	str r0, [r3, #0x44]
_08070F9A:
	adds r1, r3, #0
	adds r1, #0x62
	movs r0, #0xff
	strb r0, [r1]
_08070FA2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08070FA8
sub_08070FA8: @ 0x08070FA8
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r1, _0807100C @ =gUnk_082D88B8
	adds r0, #0x57
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08070FD8
	adds r0, r2, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _0807101E
	adds r0, r2, #0
	adds r0, #0x52
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	bgt _0807101E
_08070FD8:
	ldr r5, [r2, #0x40]
	movs r0, #0xf0
	lsls r0, r0, #4
	adds r1, r5, #0
	ands r1, r0
	asrs r1, r1, #8
	ldr r4, [r2, #0x44]
	bics r0, r4
	asrs r0, r0, #8
	subs r3, r1, r0
	cmp r3, #0
	blt _0807101E
	adds r0, r2, #0
	adds r0, #0x50
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r0, #2
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmn r1, r0
	ble _08071010
	lsls r0, r3, #8
	subs r0, r5, r0
	str r0, [r2, #0x40]
	b _08071016
	.align 2, 0
_0807100C: .4byte gUnk_082D88B8
_08071010:
	lsls r0, r3, #8
	subs r0, r4, r0
	str r0, [r2, #0x44]
_08071016:
	adds r1, r2, #0
	adds r1, #0x62
	movs r0, #0xff
	strb r0, [r1]
_0807101E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08071024
sub_08071024: @ 0x08071024
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r1, _0807108C @ =gUnk_082D88B8
	adds r0, #0x57
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08071054
	adds r0, r2, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _0807109E
	adds r0, r2, #0
	adds r0, #0x52
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	bgt _0807109E
_08071054:
	ldr r5, [r2, #0x40]
	movs r0, #0xf0
	lsls r0, r0, #4
	adds r1, r0, #0
	bics r1, r5
	asrs r1, r1, #8
	ldr r4, [r2, #0x44]
	bics r0, r4
	asrs r0, r0, #8
	subs r3, r1, r0
	cmp r3, #0
	blt _0807109E
	adds r0, r2, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	rsbs r0, r0, #0
	adds r1, r2, #0
	adds r1, #0x52
	movs r6, #0
	ldrsh r1, [r1, r6]
	cmn r0, r1
	ble _08071090
	lsls r0, r3, #8
	adds r0, r5, r0
	str r0, [r2, #0x40]
	b _08071096
	.align 2, 0
_0807108C: .4byte gUnk_082D88B8
_08071090:
	lsls r0, r3, #8
	subs r0, r4, r0
	str r0, [r2, #0x44]
_08071096:
	adds r1, r2, #0
	adds r1, #0x62
	movs r0, #0xff
	strb r0, [r1]
_0807109E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080710A4
sub_080710A4: @ 0x080710A4
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r1, _0807110C @ =gUnk_082D88B8
	adds r0, #0x57
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080710D4
	adds r0, r2, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _0807111E
	adds r0, r2, #0
	adds r0, #0x52
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	blt _0807111E
_080710D4:
	ldr r5, [r2, #0x40]
	movs r0, #0xf0
	lsls r0, r0, #4
	adds r1, r5, #0
	ands r1, r0
	asrs r1, r1, #8
	ldr r4, [r2, #0x44]
	bics r0, r4
	asrs r0, r0, #8
	subs r3, r1, r0
	cmp r3, #1
	bgt _0807111E
	adds r0, r2, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	rsbs r0, r0, #0
	adds r1, r2, #0
	adds r1, #0x52
	movs r6, #0
	ldrsh r1, [r1, r6]
	cmp r0, r1
	ble _08071110
	lsls r0, r3, #8
	subs r0, r5, r0
	str r0, [r2, #0x40]
	b _08071116
	.align 2, 0
_0807110C: .4byte gUnk_082D88B8
_08071110:
	lsls r0, r3, #8
	subs r0, r4, r0
	str r0, [r2, #0x44]
_08071116:
	adds r1, r2, #0
	adds r1, #0x62
	movs r0, #0xff
	strb r0, [r1]
_0807111E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08071124
sub_08071124: @ 0x08071124
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldr r1, _08071188 @ =gUnk_082D88B8
	adds r0, #0x57
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08071154
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _0807119A
	adds r0, r3, #0
	adds r0, #0x52
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0
	blt _0807119A
_08071154:
	ldr r6, [r3, #0x40]
	movs r0, #0xf0
	lsls r0, r0, #4
	adds r1, r0, #0
	bics r1, r6
	asrs r1, r1, #8
	ldr r5, [r3, #0x44]
	bics r0, r5
	asrs r0, r0, #8
	subs r4, r1, r0
	cmp r4, #0
	bge _0807119A
	adds r0, r3, #0
	adds r0, #0x50
	adds r2, r3, #0
	adds r2, #0x52
	movs r7, #0
	ldrsh r1, [r0, r7]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r1, r0
	ble _0807118C
	lsls r0, r4, #8
	adds r0, r6, r0
	str r0, [r3, #0x40]
	b _08071192
	.align 2, 0
_08071188: .4byte gUnk_082D88B8
_0807118C:
	lsls r0, r4, #8
	subs r0, r5, r0
	str r0, [r3, #0x44]
_08071192:
	adds r1, r3, #0
	adds r1, #0x62
	movs r0, #0xff
	strb r0, [r1]
_0807119A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080711A0
sub_080711A0: @ 0x080711A0
	adds r0, #0x62
	movs r1, #0xff
	strb r1, [r0]
	bx lr

	thumb_func_start sub_080711A8
sub_080711A8: @ 0x080711A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _080711E0 @ =sub_080714A0
	ldr r2, _080711E4 @ =0x00002FFF
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080711E8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080711F0
	.align 2, 0
_080711E0: .4byte sub_080714A0
_080711E4: .4byte 0x00002FFF
_080711E8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080711F0:
	adds r5, r0, #0
	bl sub_0803E380
	movs r0, #0
	mov r8, r0
	movs r1, #2
	mov sb, r1
	mov r2, sb
	strb r2, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	str r6, [r5, #0x70]
	mov r3, r8
	strh r3, [r5, #4]
	adds r4, r6, #0
	adds r4, #0x60
	ldrh r1, [r4]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r3, r6, #0
	adds r3, #0x56
	ldrb r0, [r3]
	adds r1, r5, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08071334 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	mov sl, r4
	str r3, [sp, #4]
	cmp r2, #0
	beq _0807124A
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_0807124A:
	adds r4, r5, #0
	adds r4, #0x64
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r4]
	adds r2, r5, #0
	adds r2, #0x66
	mov r0, r8
	strh r0, [r2]
	adds r1, r5, #0
	adds r1, #0x63
	mov r3, sb
	strb r3, [r1]
	ldr r0, [r5, #8]
	movs r7, #0x80
	lsls r7, r7, #0x12
	orrs r0, r7
	str r0, [r5, #8]
	ldr r0, _08071338 @ =0x00000103
	adds r0, r0, r6
	mov ip, r0
	ldrb r0, [r0]
	adds r3, r1, #0
	cmp r0, #0x1a
	bne _08071294
	mov r1, r8
	strh r1, [r4]
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r2]
	mov r2, sb
	strb r2, [r3]
	ldr r0, [r5, #0x68]
	ldr r1, _0807133C @ =0x30007103
	orrs r0, r1
	orrs r0, r7
	str r0, [r5, #0x68]
_08071294:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0x68]
	ldr r1, _08071340 @ =0x10400042
	orrs r0, r1
	str r0, [r5, #0x68]
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0x14
	beq _080712BC
	cmp r0, #0x1a
	beq _080712BC
	cmp r0, #0x12
	bne _080712EA
_080712BC:
	ldr r0, [r5, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r2, #3
	orrs r0, r2
	str r0, [r5, #0x68]
	ldr r0, _08071338 @ =0x00000103
	adds r1, r6, r0
	ldrb r0, [r1]
	cmp r0, #0x14
	bne _080712D6
	strb r2, [r3]
_080712D6:
	ldrb r0, [r1]
	cmp r0, #0x12
	bne _080712EA
	movs r0, #4
	strb r0, [r3]
	ldr r0, [r5, #0x68]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #0x68]
_080712EA:
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080712FA
	ldr r0, [r5, #8]
	orrs r0, r1
	str r0, [r5, #8]
_080712FA:
	ldr r1, _08071338 @ =0x00000103
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0x1a
	bne _08071344
	movs r2, #0xa
	rsbs r2, r2, #0
	movs r4, #0xe
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #1
	movs r3, #0x2e
	bl sub_0803E2B0
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	str r4, [sp]
	adds r0, r5, #0
	movs r3, #0x28
	bl sub_0803E308
	ldr r0, [r5, #0x68]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #0x68]
	b _0807139C
	.align 2, 0
_08071334: .4byte gUnk_03000510
_08071338: .4byte 0x00000103
_0807133C: .4byte 0x30007103
_08071340: .4byte 0x10400042
_08071344:
	cmp r0, #0x12
	beq _08071352
	ldr r0, [r6, #0xc]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08071378
_08071352:
	movs r2, #8
	rsbs r2, r2, #0
	movs r4, #0xe
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #1
	movs r3, #0x20
	bl sub_0803E2B0
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	str r4, [sp]
	adds r0, r5, #0
	movs r3, #0x20
	bl sub_0803E308
	b _0807139C
_08071378:
	movs r2, #6
	rsbs r2, r2, #0
	movs r4, #0xe
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #1
	movs r3, #0x10
	bl sub_0803E2B0
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	str r4, [sp]
	adds r0, r5, #0
	movs r3, #0x10
	bl sub_0803E308
_0807139C:
	ldr r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _0807140A
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080713D0
	ldr r2, _080713C8 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080713CC @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080713D2
	.align 2, 0
_080713C8: .4byte gCurLevelInfo
_080713CC: .4byte 0x0000065E
_080713D0:
	movs r1, #0xff
_080713D2:
	cmp r1, #0xff
	beq _0807140A
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08071484 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08071488 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0807140A:
	ldr r1, _0807148C @ =gKirbys
	ldr r0, _08071490 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	mov r3, sl
	ldrh r3, [r3]
	cmp r0, r3
	bne _08071472
	ldrb r0, [r6]
	cmp r0, #0
	bne _08071432
	ldr r1, [sp, #4]
	ldrb r0, [r1]
	cmp r0, r2
	bne _08071472
_08071432:
	ldr r1, _08071494 @ =gUnk_08D60FA4
	ldr r3, _08071498 @ =gSongTable
	movs r2, #0xe7
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrh r4, [r0]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807145A
	movs r1, #0xe6
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08071472
_0807145A:
	cmp r4, #0
	beq _0807146C
	ldr r0, _0807149C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08071472
_0807146C:
	movs r0, #0x73
	bl m4aSongNumStart
_08071472:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08071484: .4byte gUnk_02022EB0
_08071488: .4byte gUnk_02022F50
_0807148C: .4byte gKirbys
_08071490: .4byte gUnk_0203AD3C
_08071494: .4byte gUnk_08D60FA4
_08071498: .4byte gSongTable
_0807149C: .4byte gUnk_0203AD10

	thumb_func_start sub_080714A0
sub_080714A0: @ 0x080714A0
	push {r4, r5, lr}
	ldr r0, _080714BC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080714C0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080714C8
	.align 2, 0
_080714BC: .4byte gCurTask
_080714C0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080714C8:
	adds r4, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080714D6
	b _080716B6
_080714D6:
	ldr r5, [r4, #0x70]
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080714F4
	ldr r0, [r4, #8]
	ldr r1, _080714F0 @ =0xDFFFFFFF
	ands r0, r1
	b _080714FC
	.align 2, 0
_080714F0: .4byte 0xDFFFFFFF
_080714F4:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
_080714FC:
	str r0, [r4, #8]
	adds r0, r5, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0xd
	beq _0807152C
	adds r0, r5, #0
	adds r0, #0x56
	ldr r1, _08071528 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0807151C
	movs r0, #0x73
	bl m4aSongNumStop
_0807151C:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	b _080716B4
	.align 2, 0
_08071528: .4byte gUnk_0203AD3C
_0807152C:
	ldr r1, _08071590 @ =0x00000103
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0x1a
	beq _08071598
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _08071598
	ldr r1, [r4, #0x6c]
	cmp r1, #0
	beq _0807155E
	ldrb r0, [r1]
	cmp r0, #1
	bne _0807155E
	adds r0, r1, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #6
	bne _0807155E
	ldr r0, _08071594 @ =0xFFFBFFFF
	ands r2, r0
	str r2, [r4, #8]
_0807155E:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08071598
	ldr r0, [r5, #0xc]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0807160A
	adds r0, r5, #0
	movs r1, #0
	bl sub_08074240
	ldr r0, [r5, #0xc]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0xc]
	adds r0, r5, #0
	bl sub_0806EB74
	b _0807160A
	.align 2, 0
_08071590: .4byte 0x00000103
_08071594: .4byte 0xFFFBFFFF
_08071598:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080715C6
	ldr r0, [r5, #0xc]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080715C6
	adds r0, r5, #0
	movs r1, #0
	bl sub_08074240
	ldr r0, [r5, #0xc]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0xc]
	adds r0, r5, #0
	bl sub_0806EB74
_080715C6:
	ldr r2, _08071614 @ =0x00000103
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0x1a
	bne _0807161C
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _0807161C
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r1, r0
	cmp r1, #0
	bne _08071604
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08071604
	ldr r0, _08071618 @ =0xFFFBFFFF
	ands r2, r0
	str r2, [r4, #8]
	strh r1, [r4, #4]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
_08071604:
	ldrb r0, [r4, #1]
	cmp r0, #4
	bls _0807161C
_0807160A:
	adds r0, r5, #0
	bl sub_0804323C
	b _080716B6
	.align 2, 0
_08071614: .4byte 0x00000103
_08071618: .4byte 0xFFFBFFFF
_0807161C:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _0807168A
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08071650
	ldr r2, _08071648 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _0807164C @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _08071652
	.align 2, 0
_08071648: .4byte gCurLevelInfo
_0807164C: .4byte 0x0000065E
_08071650:
	movs r1, #0xff
_08071652:
	cmp r1, #0xff
	beq _0807168A
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080716A4 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080716A8 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0807168A:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080716AC
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080716B4
	.align 2, 0
_080716A4: .4byte gUnk_02022EB0
_080716A8: .4byte gUnk_02022F50
_080716AC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080716B4:
	str r0, [r4, #8]
_080716B6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080716BC
sub_080716BC: @ 0x080716BC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080716EC @ =sub_080717AC
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080716F0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _080716F8
	.align 2, 0
_080716EC: .4byte sub_080717AC
_080716F0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_080716F8:
	adds r0, r6, #0
	bl sub_0803E380
	movs r3, #0
	movs r5, #2
	strb r5, [r6]
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r6, #0x44]
	str r4, [r6, #0x70]
	strh r3, [r6, #4]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080717A4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08071746
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r6, #8]
_08071746:
	adds r1, r6, #0
	adds r1, #0x64
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x66
	strh r3, [r0]
	subs r0, #3
	strb r5, [r0]
	ldr r0, [r6, #8]
	movs r1, #0xa0
	lsls r1, r1, #0x18
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r6, #0x68]
	ldr r1, _080717A8 @ =0x30400042
	orrs r0, r1
	str r0, [r6, #0x68]
	movs r5, #0xa
	rsbs r5, r5, #0
	movs r4, #0xd
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #6
	movs r3, #0xc
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #6
	movs r3, #0xc
	bl sub_0803E308
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080717A4: .4byte gUnk_03000510
_080717A8: .4byte 0x30400042

	thumb_func_start sub_080717AC
sub_080717AC: @ 0x080717AC
	push {r4, r5, lr}
	ldr r0, _080717C8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080717CC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080717D4
	.align 2, 0
_080717C8: .4byte gCurTask
_080717CC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080717D4:
	adds r4, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080717E2
	b _0807198E
_080717E2:
	ldr r5, [r4, #0x70]
	adds r0, r5, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x12
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080717FE
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	b _0807198C
_080717FE:
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _08071826
	ldr r1, [r4, #0x6c]
	cmp r1, #0
	beq _08071826
	ldrb r0, [r1]
	cmp r0, #1
	bne _08071826
	adds r0, r1, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #6
	bne _08071826
	ldr r0, _080718DC @ =0xFFFBFFFF
	ands r2, r0
	str r2, [r4, #8]
_08071826:
	ldr r3, [r4, #8]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r3
	cmp r0, #0
	beq _080718F8
	ldr r1, [r4, #0x6c]
	cmp r1, #0
	beq _080718D2
	ldrb r0, [r1]
	cmp r0, #1
	bne _080718D2
	ldr r2, [r1, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	ldr r0, _080718E0 @ =0x003FFFF8
	bics r0, r1
	ldr r1, [r4, #0x68]
	ands r0, r1
	cmp r0, #0
	beq _08071866
	movs r0, #7
	ands r1, r0
	ands r2, r0
	cmp r1, r2
	blo _08071866
	movs r0, #0x80
	lsls r0, r0, #8
	ands r3, r0
	cmp r3, #0
	beq _080718D2
_08071866:
	ldr r1, _080718E4 @ =gKirbys
	ldr r0, _080718E8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080718D2
	ldrb r0, [r5]
	cmp r0, #0
	bne _08071892
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080718D2
_08071892:
	ldr r1, _080718EC @ =gUnk_08D60FA4
	ldr r3, _080718F0 @ =gSongTable
	movs r2, #0xe3
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrh r4, [r0]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080718BA
	movs r1, #0xe2
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080718D2
_080718BA:
	cmp r4, #0
	beq _080718CC
	ldr r0, _080718F4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080718D2
_080718CC:
	movs r0, #0x71
	bl m4aSongNumStart
_080718D2:
	adds r0, r5, #0
	bl sub_080459B8
	b _0807198E
	.align 2, 0
_080718DC: .4byte 0xFFFBFFFF
_080718E0: .4byte 0x003FFFF8
_080718E4: .4byte gKirbys
_080718E8: .4byte gUnk_0203AD3C
_080718EC: .4byte gUnk_08D60FA4
_080718F0: .4byte gSongTable
_080718F4: .4byte gUnk_0203AD10
_080718F8:
	movs r0, #0x90
	lsls r0, r0, #5
	ands r3, r0
	cmp r3, #0
	bne _08071962
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08071928
	ldr r2, _08071920 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _08071924 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _0807192A
	.align 2, 0
_08071920: .4byte gCurLevelInfo
_08071924: .4byte 0x0000065E
_08071928:
	movs r1, #0xff
_0807192A:
	cmp r1, #0xff
	beq _08071962
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _0807197C @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08071980 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08071962:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08071984
	ldr r0, [r4, #8]
	orrs r0, r1
	b _0807198C
	.align 2, 0
_0807197C: .4byte gUnk_02022EB0
_08071980: .4byte gUnk_02022F50
_08071984:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0807198C:
	str r0, [r4, #8]
_0807198E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08071994
sub_08071994: @ 0x08071994
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080719C4 @ =sub_08071B0C
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080719C8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080719D0
	.align 2, 0
_080719C4: .4byte sub_08071B0C
_080719C8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080719D0:
	adds r6, r0, #0
	bl sub_0803E380
	movs r5, #0
	movs r0, #2
	mov ip, r0
	mov r1, ip
	strb r1, [r6]
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r6, #0x44]
	str r4, [r6, #0x70]
	strh r5, [r6, #4]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r7, r6, #0
	adds r7, #0x56
	strb r0, [r7]
	ldr r0, _08071AB0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r7]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08071A24
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r6, #8]
_08071A24:
	adds r1, r6, #0
	adds r1, #0x64
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x66
	strh r5, [r0]
	subs r0, #3
	mov r2, ip
	strb r2, [r0]
	ldr r2, [r6, #8]
	movs r0, #0xa0
	lsls r0, r0, #0x18
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r6, #8]
	ldr r0, [r6, #0x68]
	ldr r1, _08071AB4 @ =0x10400042
	orrs r0, r1
	str r0, [r6, #0x68]
	ldr r0, [r4, #8]
	ands r0, r3
	cmp r0, #0
	beq _08071A64
	orrs r2, r3
	str r2, [r6, #8]
_08071A64:
	movs r1, #0xa
	rsbs r1, r1, #0
	movs r5, #8
	rsbs r5, r5, #0
	movs r4, #8
	str r4, [sp]
	adds r0, r6, #0
	adds r2, r5, #0
	movs r3, #0x10
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #1
	adds r2, r5, #0
	movs r3, #0x10
	bl sub_0803E308
	ldr r0, [r6, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08071AFA
	ldrb r0, [r7]
	cmp r0, #0xff
	beq _08071AC0
	ldr r2, _08071AB8 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _08071ABC @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _08071AC2
	.align 2, 0
_08071AB0: .4byte gUnk_03000510
_08071AB4: .4byte 0x10400042
_08071AB8: .4byte gCurLevelInfo
_08071ABC: .4byte 0x0000065E
_08071AC0:
	movs r1, #0xff
_08071AC2:
	cmp r1, #0xff
	beq _08071AFA
	lsls r3, r1, #6
	ldrb r0, [r6]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08071B04 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r6]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08071B08 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r6, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08071AFA:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08071B04: .4byte gUnk_02022EB0
_08071B08: .4byte gUnk_02022F50

	thumb_func_start sub_08071B0C
sub_08071B0C: @ 0x08071B0C
	push {r4, r5, lr}
	ldr r0, _08071B28 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08071B2C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08071B34
	.align 2, 0
_08071B28: .4byte gCurTask
_08071B2C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08071B34:
	adds r4, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08071B42
	b _08071C96
_08071B42:
	ldr r5, [r4, #0x70]
	adds r0, r5, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x4a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08071B5E
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	b _08071C94
_08071B5E:
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _08071BD0
	ldr r1, [r4, #0x6c]
	cmp r1, #0
	beq _08071B86
	ldrb r0, [r1]
	cmp r0, #1
	bne _08071B86
	adds r0, r1, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #6
	bne _08071B86
	ldr r0, _08071BCC @ =0xFFFBFFFF
	ands r2, r0
	str r2, [r4, #8]
_08071B86:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08071BD0
	ldr r0, [r5, #0xc]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08071BB4
	adds r0, r5, #0
	movs r1, #0
	bl sub_08074240
	ldr r0, [r5, #0xc]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0xc]
	adds r0, r5, #0
	bl sub_0806EB74
_08071BB4:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r5, #0
	bl sub_0804323C
	b _08071C96
	.align 2, 0
_08071BCC: .4byte 0xFFFBFFFF
_08071BD0:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08071BFE
	ldr r0, [r5, #0xc]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08071BFE
	adds r0, r5, #0
	movs r1, #0
	bl sub_08074240
	ldr r0, [r5, #0xc]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0xc]
	adds r0, r5, #0
	bl sub_0806EB74
_08071BFE:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08071C6A
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08071C30
	ldr r2, _08071C28 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _08071C2C @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _08071C32
	.align 2, 0
_08071C28: .4byte gCurLevelInfo
_08071C2C: .4byte 0x0000065E
_08071C30:
	movs r1, #0xff
_08071C32:
	cmp r1, #0xff
	beq _08071C6A
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08071C84 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08071C88 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08071C6A:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08071C8C
	ldr r0, [r4, #8]
	orrs r0, r1
	b _08071C94
	.align 2, 0
_08071C84: .4byte gUnk_02022EB0
_08071C88: .4byte gUnk_02022F50
_08071C8C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08071C94:
	str r0, [r4, #8]
_08071C96:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08071C9C
sub_08071C9C: @ 0x08071C9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, _08071CD0 @ =sub_08071E34
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08071CD4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08071CDC
	.align 2, 0
_08071CD0: .4byte sub_08071E34
_08071CD4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08071CDC:
	adds r6, r0, #0
	bl sub_0803E380
	movs r4, #0
	movs r0, #2
	mov ip, r0
	mov r1, ip
	strb r1, [r6]
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r6, #0x44]
	str r7, [r6, #0x70]
	strh r4, [r6, #4]
	adds r0, r7, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0x56
	adds r2, r2, r6
	mov r8, r2
	strb r0, [r2]
	ldr r0, _08071DC4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	mov r5, r8
	ldrb r5, [r5]
	lsls r0, r5
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08071D34
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r6, #8]
_08071D34:
	adds r1, r6, #0
	adds r1, #0x64
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x66
	strh r4, [r0]
	subs r0, #3
	mov r1, ip
	strb r1, [r0]
	ldr r2, [r6, #8]
	movs r0, #0xa0
	lsls r0, r0, #0x18
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r6, #8]
	ldr r0, [r6, #0x68]
	ldr r1, _08071DC8 @ =0x10000042
	orrs r0, r1
	str r0, [r6, #0x68]
	ldr r0, [r7, #8]
	ands r0, r3
	cmp r0, #0
	beq _08071D74
	orrs r2, r3
	str r2, [r6, #8]
_08071D74:
	movs r5, #6
	rsbs r5, r5, #0
	movs r2, #8
	rsbs r2, r2, #0
	movs r4, #4
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #6
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0xa
	adds r2, r5, #0
	movs r3, #0xc
	bl sub_0803E308
	ldr r0, [r6, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08071E0E
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _08071DD4
	ldr r2, _08071DCC @ =gCurLevelInfo
	mov r5, r8
	ldrb r1, [r5]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _08071DD0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _08071DD6
	.align 2, 0
_08071DC4: .4byte gUnk_03000510
_08071DC8: .4byte 0x10000042
_08071DCC: .4byte gCurLevelInfo
_08071DD0: .4byte 0x0000065E
_08071DD4:
	movs r1, #0xff
_08071DD6:
	cmp r1, #0xff
	beq _08071E0E
	lsls r3, r1, #6
	ldrb r0, [r6]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08071E28 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r6]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08071E2C @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r6, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08071E0E:
	ldr r2, _08071E30 @ =0x000002B1
	adds r0, r7, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08071E28: .4byte gUnk_02022EB0
_08071E2C: .4byte gUnk_02022F50
_08071E30: .4byte 0x000002B1

	thumb_func_start sub_08071E34
sub_08071E34: @ 0x08071E34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08071E54 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08071E58
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08071E60
	.align 2, 0
_08071E54: .4byte gCurTask
_08071E58:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08071E60:
	adds r7, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08071E6E
	b _08071FB6
_08071E6E:
	ldr r0, [r7, #0x70]
	mov r8, r0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0xf
	beq _08071E84
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	b _08071FB4
_08071E84:
	ldr r1, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08071EA0
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r7, #8]
	b _08071FB6
_08071EA0:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	movs r1, #3
	ands r0, r1
	cmp r0, #3
	bne _08071F0A
	ldr r2, _08071F34 @ =0x000002B1
	mov r0, r8
	movs r1, #0
	movs r3, #1
	bl sub_0808AE30
	ldr r4, _08071F38 @ =gRngVal
	ldr r1, [r4]
	ldr r6, _08071F3C @ =0x00196225
	adds r3, r1, #0
	muls r3, r6, r3
	ldr r5, _08071F40 @ =0x3C6EF35F
	adds r3, r3, r5
	str r3, [r4]
	lsrs r1, r3, #0x10
	movs r2, #0x1f
	ands r1, r2
	movs r2, #0x10
	subs r2, r2, r1
	lsls r2, r2, #8
	ldr r1, [r0, #0x34]
	adds r1, r1, r2
	str r1, [r0, #0x34]
	muls r3, r6, r3
	adds r3, r3, r5
	str r3, [r4]
	lsrs r1, r3, #0x10
	movs r2, #7
	ands r1, r2
	adds r1, #4
	lsls r1, r1, #8
	ldr r2, [r0, #0x38]
	adds r2, r2, r1
	str r2, [r0, #0x38]
	ldr r1, _08071F44 @ =0x0000FFC0
	strh r1, [r0, #0x3e]
	adds r2, r3, #0
	muls r2, r6, r2
	adds r2, r2, r5
	str r2, [r4]
	lsrs r2, r2, #0x10
	movs r1, #0x7f
	ands r2, r1
	movs r1, #0x40
	subs r1, r1, r2
	strh r1, [r0, #0x3c]
_08071F0A:
	ldr r0, [r7, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08071F8A
	adds r1, r7, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08071F50
	ldr r2, _08071F48 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _08071F4C @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _08071F52
	.align 2, 0
_08071F34: .4byte 0x000002B1
_08071F38: .4byte gRngVal
_08071F3C: .4byte 0x00196225
_08071F40: .4byte 0x3C6EF35F
_08071F44: .4byte 0x0000FFC0
_08071F48: .4byte gCurLevelInfo
_08071F4C: .4byte 0x0000065E
_08071F50:
	movs r1, #0xff
_08071F52:
	cmp r1, #0xff
	beq _08071F8A
	lsls r3, r1, #6
	ldrb r0, [r7]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08071FA4 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r7]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08071FA8 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r7, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08071F8A:
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x44]
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08071FAC
	ldr r0, [r7, #8]
	orrs r0, r1
	b _08071FB4
	.align 2, 0
_08071FA4: .4byte gUnk_02022EB0
_08071FA8: .4byte gUnk_02022F50
_08071FAC:
	ldr r0, [r7, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08071FB4:
	str r0, [r7, #8]
_08071FB6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08071FC0
sub_08071FC0: @ 0x08071FC0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08071FF0 @ =sub_080720F8
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08071FF4 @ =sub_08084AC4
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08071FF8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08072000
	.align 2, 0
_08071FF0: .4byte sub_080720F8
_08071FF4: .4byte sub_08084AC4
_08071FF8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08072000:
	adds r6, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r6]
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r6, #0x44]
	str r4, [r6, #0x70]
	strh r1, [r6, #4]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	ldrb r0, [r3]
	adds r1, r6, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807208C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r5, #1
	adds r0, r5, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	adds r7, r3, #0
	cmp r2, #0
	beq _08072052
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r6, #8]
_08072052:
	ldr r2, [r6, #8]
	ldr r0, _08072090 @ =0xA0100000
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	ldr r0, [r6, #0x68]
	ldr r1, _08072094 @ =0x20000021
	orrs r0, r1
	str r0, [r6, #0x68]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r6, #8]
	ldr r0, [r6, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #0x5c]
	ldr r0, [r4, #8]
	ands r0, r5
	cmp r0, #0
	beq _0807209C
	orrs r2, r5
	str r2, [r6, #8]
	ldr r0, [r6, #0x40]
	ldr r1, _08072098 @ =0xFFFFFC00
	b _080720A2
	.align 2, 0
_0807208C: .4byte gUnk_03000510
_08072090: .4byte 0xA0100000
_08072094: .4byte 0x20000021
_08072098: .4byte 0xFFFFFC00
_0807209C:
	ldr r0, [r6, #0x40]
	movs r1, #0x80
	lsls r1, r1, #3
_080720A2:
	adds r0, r0, r1
	str r0, [r6, #0x40]
	movs r5, #0x12
	rsbs r5, r5, #0
	movs r4, #0x10
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0x2c
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0x2c
	bl sub_0803E308
	adds r1, r6, #0
	adds r1, #0x10
	ldrb r2, [r7]
	lsls r2, r2, #0xb
	ldr r0, _080720F4 @ =0x06010400
	adds r2, r2, r0
	movs r0, #0
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r3, #0x13
	bl sub_080708DC
	ldrb r1, [r7]
	adds r0, r6, #0
	adds r0, #0x2f
	strb r1, [r0]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080720F4: .4byte 0x06010400

	thumb_func_start sub_080720F8
sub_080720F8: @ 0x080720F8
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08072118 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807211C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08072124
	.align 2, 0
_08072118: .4byte gCurTask
_0807211C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08072124:
	adds r6, r0, #0
	ldr r4, [r6, #0x70]
	adds r0, r4, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	adds r1, r0, #0
	cmp r1, #0x1d
	bne _08072136
	b _080722EA
_08072136:
	subs r0, #0x1a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08072150
	cmp r1, #0x6a
	beq _08072150
	cmp r1, #0x6b
	beq _08072150
	adds r1, r6, #0
	adds r1, #0x60
	ldr r0, _08072178 @ =0x0000FFFF
	strh r0, [r1]
_08072150:
	adds r0, r6, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807215E
	b _080722EA
_0807215E:
	ldr r0, [r6, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08072180
	ldr r0, [r4, #0x40]
	ldr r1, _0807217C @ =0xFFFFFC00
	adds r0, r0, r1
	b _08072188
	.align 2, 0
_08072178: .4byte 0x0000FFFF
_0807217C: .4byte 0xFFFFFC00
_08072180:
	ldr r0, [r4, #0x40]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
_08072188:
	str r0, [r6, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r6, #0x44]
	ldrh r1, [r6, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080721BA
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	str r1, [r6, #8]
	adds r0, r4, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x6a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080721C8
	movs r0, #8
	orrs r1, r0
	str r1, [r6, #8]
	b _080721C8
_080721BA:
	ldr r0, [r6, #8]
	ldr r1, _080722F4 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #8]
_080721C8:
	ldr r1, [r6, #8]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08072238
	ldr r3, [r6, #0x6c]
	movs r2, #0x80
	lsls r2, r2, #2
	orrs r2, r1
	str r2, [r6, #8]
	cmp r3, #0
	beq _080721FE
	ldrb r0, [r3]
	cmp r0, #1
	bne _080721FE
	adds r0, r3, #0
	adds r0, #0x82
	ldrb r0, [r0]
	subs r0, #0x5e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bhi _080721FE
	ldr r0, _080722F8 @ =0xFFFFFDFF
	ands r2, r0
	str r2, [r6, #8]
_080721FE:
	adds r0, r4, #0
	adds r0, #0x56
	ldr r5, _080722FC @ =gUnk_0203AD30
	ldrb r0, [r0]
	ldrb r1, [r5]
	cmp r0, r1
	blo _08072238
	adds r2, r3, #0
	adds r2, #0x82
	ldrb r0, [r2]
	cmp r0, #0xa4
	bne _0807221E
	ldr r0, [r6, #8]
	ldr r1, _080722F8 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r6, #8]
_0807221E:
	ldrb r0, [r2]
	cmp r0, #0xa3
	bne _08072238
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrb r5, [r5]
	cmp r0, r5
	bhs _08072238
	ldr r0, [r6, #8]
	ldr r1, _080722F8 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r6, #8]
_08072238:
	movs r2, #4
	ldrsh r0, [r6, r2]
	cmp r0, #5
	ble _080722B6
	cmp r0, #6
	bne _08072256
	adds r0, r4, #0
	bl sub_08088AC8
	adds r0, r4, #0
	bl sub_08088AC8
	adds r0, r4, #0
	bl sub_08088AC8
_08072256:
	ldr r1, _08072300 @ =gKirbys
	ldr r0, _08072304 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080722B0
	ldrb r0, [r4]
	cmp r0, #0
	bne _08072282
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080722B0
_08072282:
	ldr r1, _08072308 @ =gUnk_08D60FA4
	ldr r3, _0807230C @ =gSongTable
	movs r2, #0xcb
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080722AA
	movs r1, #0xca
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhs _080722B0
_080722AA:
	movs r0, #0x65
	bl m4aSongNumStart
_080722B0:
	adds r0, r6, #0
	bl sub_0806F8BC
_080722B6:
	ldrh r0, [r6, #4]
	adds r0, #1
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x30
	bne _080722EA
	movs r5, #0x17
	rsbs r5, r5, #0
	movs r4, #0x15
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0x37
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0x37
	bl sub_0803E308
	ldr r0, _08072310 @ =0x20000023
	str r0, [r6, #0x68]
_080722EA:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080722F4: .4byte 0xFFFFFBFF
_080722F8: .4byte 0xFFFFFDFF
_080722FC: .4byte gUnk_0203AD30
_08072300: .4byte gKirbys
_08072304: .4byte gUnk_0203AD3C
_08072308: .4byte gUnk_08D60FA4
_0807230C: .4byte gSongTable
_08072310: .4byte 0x20000023

	thumb_func_start sub_08072314
sub_08072314: @ 0x08072314
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, _0807234C @ =sub_080724C4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08072350 @ =sub_08084AC4
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08072354
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807235C
	.align 2, 0
_0807234C: .4byte sub_080724C4
_08072350: .4byte sub_08084AC4
_08072354:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807235C:
	adds r6, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r6]
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r6, #0x44]
	str r7, [r6, #0x70]
	strh r1, [r6, #4]
	adds r4, r7, #0
	adds r4, #0x60
	ldrh r1, [r4]
	adds r0, r6, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r3, r7, #0
	adds r3, #0x56
	ldrb r0, [r3]
	adds r1, r6, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080723E4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r5, #1
	adds r0, r5, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	mov r8, r4
	mov sb, r3
	cmp r2, #0
	beq _080723B0
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r6, #8]
_080723B0:
	ldr r2, [r6, #8]
	ldr r0, _080723E8 @ =0xA0100000
	orrs r2, r0
	ldr r0, [r6, #0x68]
	ldr r1, _080723EC @ =0x20200023
	orrs r0, r1
	str r0, [r6, #0x68]
	ldr r0, [r6, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r6, #8]
	ldr r0, [r7, #8]
	ands r0, r5
	cmp r0, #0
	beq _080723F4
	ldr r0, [r6, #0x40]
	ldr r1, _080723F0 @ =0xFFFFFC00
	adds r0, r0, r1
	str r0, [r6, #0x40]
	orrs r2, r5
	b _08072404
	.align 2, 0
_080723E4: .4byte gUnk_03000510
_080723E8: .4byte 0xA0100000
_080723EC: .4byte 0x20200023
_080723F0: .4byte 0xFFFFFC00
_080723F4:
	ldr r0, [r6, #0x40]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	str r0, [r6, #0x40]
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_08072404:
	str r2, [r6, #8]
	movs r5, #0x12
	rsbs r5, r5, #0
	movs r4, #0x10
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0x32
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0x32
	bl sub_0803E308
	adds r0, r7, #0
	bl sub_0808C6F4
	adds r0, r7, #0
	bl sub_0808C6F4
	adds r0, r7, #0
	bl sub_0808C6F4
	ldr r1, _080724B0 @ =gKirbys
	ldr r0, _080724B4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, r8
	ldrh r1, [r1]
	cmp r0, r1
	bne _080724A2
	ldrb r0, [r7]
	cmp r0, #0
	bne _08072462
	mov r3, sb
	ldrb r0, [r3]
	cmp r0, r2
	bne _080724A2
_08072462:
	ldr r1, _080724B8 @ =gUnk_08D60FA4
	ldr r3, _080724BC @ =gSongTable
	movs r2, #0xcb
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrh r4, [r0]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807248A
	movs r1, #0xca
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080724A2
_0807248A:
	cmp r4, #0
	beq _0807249C
	ldr r0, _080724C0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080724A2
_0807249C:
	movs r0, #0x65
	bl m4aSongNumStart
_080724A2:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080724B0: .4byte gKirbys
_080724B4: .4byte gUnk_0203AD3C
_080724B8: .4byte gUnk_08D60FA4
_080724BC: .4byte gSongTable
_080724C0: .4byte gUnk_0203AD10

	thumb_func_start sub_080724C4
sub_080724C4: @ 0x080724C4
	push {r4, lr}
	ldr r0, _080724E0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080724E4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080724EC
	.align 2, 0
_080724E0: .4byte gCurTask
_080724E4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080724EC:
	adds r4, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080725D2
	ldr r2, [r4, #0x70]
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x1a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08072516
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _080725D2
_08072516:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807252C
	ldr r0, [r2, #0x40]
	ldr r1, _08072528 @ =0xFFFFFC00
	b _08072532
	.align 2, 0
_08072528: .4byte 0xFFFFFC00
_0807252C:
	ldr r0, [r2, #0x40]
	movs r1, #0x80
	lsls r1, r1, #3
_08072532:
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r2, #0x44]
	str r0, [r4, #0x44]
	ldr r1, [r4, #8]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08072566
	ldr r2, [r4, #0x6c]
	ldrb r0, [r2]
	cmp r0, #1
	bne _0807255E
	adds r0, r2, #0
	adds r0, #0x82
	ldrb r0, [r0]
	adds r0, #0x5d
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08072566
_0807255E:
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	str r1, [r4, #8]
_08072566:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080725D2
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08072598
	ldr r2, _08072590 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _08072594 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _0807259A
	.align 2, 0
_08072590: .4byte gCurLevelInfo
_08072594: .4byte 0x0000065E
_08072598:
	movs r1, #0xff
_0807259A:
	cmp r1, #0xff
	beq _080725D2
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080725D8 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080725DC @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080725D2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080725D8: .4byte gUnk_02022EB0
_080725DC: .4byte gUnk_02022F50

	thumb_func_start sub_080725E0
sub_080725E0: @ 0x080725E0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _08072618 @ =sub_080728B0
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807261C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08072620
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08072628
	.align 2, 0
_08072618: .4byte sub_080728B0
_0807261C: .4byte sub_0803DCCC
_08072620:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08072628:
	adds r5, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	str r6, [r5, #0x70]
	strh r1, [r5, #4]
	adds r4, r6, #0
	adds r4, #0x60
	ldrh r1, [r4]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r3, r6, #0
	adds r3, #0x56
	ldrb r0, [r3]
	adds r1, r5, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080726CC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	mov r8, r4
	mov sb, r3
	cmp r2, #0
	beq _0807267A
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_0807267A:
	ldr r0, [r5, #8]
	movs r1, #0xa0
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0x68]
	ldr r3, _080726D0 @ =0x20000043
	orrs r0, r3
	str r0, [r5, #0x68]
	adds r0, r5, #0
	adds r0, #0x64
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _080726AE
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	str r1, [r5, #8]
_080726AE:
	adds r2, r6, #0
	adds r2, #0xdd
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _080726D4
	adds r1, r5, #0
	adds r1, #0x63
	movs r0, #0x19
	strb r0, [r1]
	str r3, [r5, #0x68]
	b _080726DC
	.align 2, 0
_080726CC: .4byte gUnk_03000510
_080726D0: .4byte 0x20000043
_080726D4:
	adds r1, r5, #0
	adds r1, #0x63
	movs r0, #0xa
	strb r0, [r1]
_080726DC:
	adds r0, r5, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r0, #2
	strh r7, [r0]
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #0xc
	bl sub_0803E2B0
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #2
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #2
	bl sub_0803E308
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _080727E0
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x10
	ldr r2, _080727BC @ =0x06012000
	ldr r4, _080727C0 @ =0x000002A1
	str r7, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r3, r4, #0
	bl sub_080708DC
	ldr r0, _080727C4 @ =sub_08072B98
	str r0, [sp]
	ldr r0, _080727C8 @ =sub_08084AA0
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_080706A0
	ldr r1, _080727CC @ =gKirbys
	ldr r0, _080727D0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, r8
	ldrh r1, [r1]
	cmp r0, r1
	beq _0807276A
	b _0807287C
_0807276A:
	ldrb r0, [r6]
	cmp r0, #0
	bne _0807277A
	mov r3, sb
	ldrb r0, [r3]
	cmp r0, r2
	beq _0807277A
	b _0807287C
_0807277A:
	ldr r1, _080727D4 @ =gUnk_08D60FA4
	ldr r3, _080727D8 @ =gSongTable
	movs r2, #0xd1
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrh r4, [r0]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080727A2
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807287C
_080727A2:
	cmp r4, #0
	beq _080727B4
	ldr r0, _080727DC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807287C
_080727B4:
	movs r0, #0x68
	bl m4aSongNumStart
	b _0807287C
	.align 2, 0
_080727BC: .4byte 0x06012000
_080727C0: .4byte 0x000002A1
_080727C4: .4byte sub_08072B98
_080727C8: .4byte sub_08084AA0
_080727CC: .4byte gKirbys
_080727D0: .4byte gUnk_0203AD3C
_080727D4: .4byte gUnk_08D60FA4
_080727D8: .4byte gSongTable
_080727DC: .4byte gUnk_0203AD10
_080727E0:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x10
	ldr r2, _0807288C @ =0x06012000
	ldr r4, _08072890 @ =0x00000295
	str r3, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r3, r4, #0
	bl sub_080708DC
	ldr r0, _08072894 @ =sub_08072B98
	str r0, [sp]
	ldr r0, _08072898 @ =sub_08084AA0
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #2
	bl sub_080706A0
	ldr r1, _0807289C @ =gKirbys
	ldr r0, _080728A0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	mov r3, r8
	ldrh r3, [r3]
	cmp r0, r3
	bne _0807287C
	ldrb r0, [r6]
	cmp r0, #0
	bne _0807283C
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, r2
	bne _0807287C
_0807283C:
	ldr r1, _080728A4 @ =gUnk_08D60FA4
	ldr r3, _080728A8 @ =gSongTable
	movs r2, #0xcf
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrh r4, [r0]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08072864
	movs r1, #0xce
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807287C
_08072864:
	cmp r4, #0
	beq _08072876
	ldr r0, _080728AC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807287C
_08072876:
	movs r0, #0x67
	bl m4aSongNumStart
_0807287C:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807288C: .4byte 0x06012000
_08072890: .4byte 0x00000295
_08072894: .4byte sub_08072B98
_08072898: .4byte sub_08084AA0
_0807289C: .4byte gKirbys
_080728A0: .4byte gUnk_0203AD3C
_080728A4: .4byte gUnk_08D60FA4
_080728A8: .4byte gSongTable
_080728AC: .4byte gUnk_0203AD10

	thumb_func_start sub_080728B0
sub_080728B0: @ 0x080728B0
	push {r4, r5, lr}
	ldr r0, _080728CC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080728D0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080728D8
	.align 2, 0
_080728CC: .4byte gCurTask
_080728D0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080728D8:
	adds r4, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080728E6
	b _08072B92
_080728E6:
	ldr r5, [r4, #0x70]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bgt _08072922
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _0807290A
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_0807290A:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	b _08072B92
_08072922:
	cmp r0, #2
	bne _08072A08
	ldr r1, [r4, #8]
	ldr r0, _08072968 @ =0xFFFFF9FF
	ands r1, r0
	str r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _08072940
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	str r1, [r4, #8]
_08072940:
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08072970
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r5, #0x40]
	ldr r3, _0807296C @ =0xFFFFF800
	adds r0, r0, r3
	str r0, [r4, #0x40]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xfc
	lsls r0, r0, #8
	b _08072982
	.align 2, 0
_08072968: .4byte 0xFFFFF9FF
_0807296C: .4byte 0xFFFFF800
_08072970:
	ldr r0, [r5, #0x40]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #3
_08072982:
	strh r0, [r1]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08072998
	b _08072B92
_08072998:
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080729C0
	ldr r2, _080729B8 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080729BC @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080729C2
	.align 2, 0
_080729B8: .4byte gCurLevelInfo
_080729BC: .4byte 0x0000065E
_080729C0:
	movs r1, #0xff
_080729C2:
	cmp r1, #0xff
	bne _080729C8
	b _08072B92
_080729C8:
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08072A00 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08072A04 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	b _08072B92
	.align 2, 0
_08072A00: .4byte gUnk_02022EB0
_08072A04: .4byte gUnk_02022F50
_08072A08:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08072A3A
	ldr r1, [r4, #0x40]
	str r1, [r4, #0x48]
	ldr r2, [r4, #0x44]
	str r2, [r4, #0x4c]
	adds r0, r4, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	adds r0, r4, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r2, r2, r0
	str r2, [r4, #0x44]
_08072A3A:
	adds r0, r4, #0
	adds r0, #0x63
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x19
	beq _08072A70
	ldr r0, [r4, #8]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08072A70
	ldr r2, _08072A6C @ =0x0000028E
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _08072B92
	.align 2, 0
_08072A6C: .4byte 0x0000028E
_08072A70:
	ldr r2, _08072B6C @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r3, [r4, #0x40]
	ldr r0, [r0]
	cmp r3, r0
	bgt _08072AB8
	adds r0, r2, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _08072AB8
	adds r0, r2, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r3, [r4, #0x44]
	ldr r0, [r0]
	cmp r3, r0
	bgt _08072AB8
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _08072AB8
	adds r0, r4, #0
	bl sub_0806FC70
_08072AB8:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	beq _08072B8C
	ldr r0, _08072B70 @ =gUnk_082D88B8
	adds r1, r4, #0
	adds r1, #0x57
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08072AEA
	movs r0, #0xf0
	lsls r0, r0, #0x10
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r1, r0
	bls _08072B8C
_08072AEA:
	ldr r0, [r4, #8]
	orrs r0, r2
	str r0, [r4, #8]
	ldr r2, _08072B74 @ =0x0000028E
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, _08072B78 @ =gKirbys
	ldr r0, _08072B7C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08072B92
	ldrb r0, [r5]
	cmp r0, #0
	bne _08072B28
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08072B92
_08072B28:
	ldr r1, _08072B80 @ =gUnk_08D60FA4
	ldr r3, _08072B84 @ =gSongTable
	movs r2, #0xfd
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrh r4, [r0]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08072B50
	movs r1, #0xfc
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08072B92
_08072B50:
	cmp r4, #0
	beq _08072B62
	ldr r0, _08072B88 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08072B92
_08072B62:
	movs r0, #0x7e
	bl m4aSongNumStart
	b _08072B92
	.align 2, 0
_08072B6C: .4byte gCurLevelInfo
_08072B70: .4byte gUnk_082D88B8
_08072B74: .4byte 0x0000028E
_08072B78: .4byte gKirbys
_08072B7C: .4byte gUnk_0203AD3C
_08072B80: .4byte gUnk_08D60FA4
_08072B84: .4byte gSongTable
_08072B88: .4byte gUnk_0203AD10
_08072B8C:
	adds r0, r4, #0
	bl sub_0806F8BC
_08072B92:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08072B98
sub_08072B98: @ 0x08072B98
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r4, [r2, #0x44]
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08072BAE
	movs r0, #1
	b _08072C06
_08072BAE:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	beq _08072BBE
	ldrh r1, [r2, #6]
	orrs r0, r1
	b _08072BC4
_08072BBE:
	ldrh r1, [r2, #6]
	ldr r0, _08072BFC @ =0x0000FBFF
	ands r0, r1
_08072BC4:
	strh r0, [r2, #6]
	ldrh r1, [r2, #6]
	movs r0, #4
	movs r5, #0
	orrs r1, r0
	strh r1, [r2, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08072C04
	ldr r3, [r4, #0x40]
	str r3, [r2, #0x34]
	ldr r4, [r4, #0x44]
	str r4, [r2, #0x38]
	movs r6, #0xff
	lsls r6, r6, #8
	strh r6, [r2, #0x3c]
	strh r5, [r2, #0x3e]
	strh r5, [r2, #4]
	strh r5, [r2, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08072C00
	rsbs r0, r6, #0
	strh r0, [r2, #0x3c]
	b _08072C04
	.align 2, 0
_08072BFC: .4byte 0x0000FBFF
_08072C00:
	str r3, [r2, #0x34]
	str r4, [r2, #0x38]
_08072C04:
	movs r0, #0
_08072C06:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08072C0C
sub_08072C0C: @ 0x08072C0C
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r5, [r2, #0x44]
	ldr r3, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r3, r0
	cmp r3, #0
	beq _08072C22
	movs r0, #1
	b _08072C54
_08072C22:
	ldrh r1, [r2, #6]
	movs r0, #4
	orrs r1, r0
	strh r1, [r2, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08072C52
	ldr r4, [r5, #0x40]
	str r4, [r2, #0x34]
	ldr r5, [r5, #0x44]
	str r5, [r2, #0x38]
	strh r3, [r2, #0x3c]
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r2, #0x3e]
	strh r3, [r2, #4]
	strh r3, [r2, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08072C52
	str r4, [r2, #0x34]
	str r5, [r2, #0x38]
_08072C52:
	movs r0, #0
_08072C54:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072C5C
sub_08072C5C: @ 0x08072C5C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08072C8C @ =sub_08072E40
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08072C90 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08072C94
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08072C9C
	.align 2, 0
_08072C8C: .4byte sub_08072E40
_08072C90: .4byte sub_0803DCCC
_08072C94:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08072C9C:
	adds r4, r0, #0
	bl sub_0803E380
	movs r7, #0
	movs r6, #2
	strb r6, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r7, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08072D54 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08072CEC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_08072CEC:
	ldr r2, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _08072D58 @ =0x20000042
	orrs r0, r1
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r6
	str r0, [r4, #0x68]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r2
	cmp r0, #0
	beq _08072D18
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r4, #8]
_08072D18:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x66
	strh r7, [r0]
	subs r0, #3
	strb r6, [r0]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x52
	strh r7, [r0]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _08072D64
	ldr r0, [r4, #8]
	orrs r0, r3
	str r0, [r4, #8]
	ldr r0, [r5, #0x40]
	ldr r1, _08072D5C @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _08072D60 @ =0x0000FC40
	b _08072D76
	.align 2, 0
_08072D54: .4byte gUnk_03000510
_08072D58: .4byte 0x20000042
_08072D5C: .4byte 0xFFFFF800
_08072D60: .4byte 0x0000FC40
_08072D64:
	ldr r0, [r5, #0x40]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r4, #0x40]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xf0
	lsls r0, r0, #2
_08072D76:
	strh r0, [r1]
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #5
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #2
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #2
	bl sub_0803E308
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x10
	ldr r2, _08072DE8 @ =0x06012000
	movs r3, #0xa3
	lsls r3, r3, #2
	movs r0, #0
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08072E2E
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08072DF4
	ldr r2, _08072DEC @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _08072DF0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _08072DF6
	.align 2, 0
_08072DE8: .4byte 0x06012000
_08072DEC: .4byte gCurLevelInfo
_08072DF0: .4byte 0x0000065E
_08072DF4:
	movs r1, #0xff
_08072DF6:
	cmp r1, #0xff
	beq _08072E2E
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08072E38 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08072E3C @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08072E2E:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08072E38: .4byte gUnk_02022EB0
_08072E3C: .4byte gUnk_02022F50

	thumb_func_start sub_08072E40
sub_08072E40: @ 0x08072E40
	push {r4, r5, r6, r7, lr}
	ldr r0, _08072E5C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08072E60
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08072E68
	.align 2, 0
_08072E5C: .4byte gCurTask
_08072E60:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08072E68:
	adds r4, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08072E76
	b _08072FD8
_08072E76:
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	beq _08072E94
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08072E94
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r4, #8]
	b _08072FD8
_08072E94:
	movs r1, #4
	ldrsh r0, [r4, r1]
	adds r6, r4, #0
	adds r6, #0x2a
	cmp r0, #0x10
	ble _08072EA4
	movs r0, #1
	strb r0, [r6]
_08072EA4:
	ldrb r0, [r6]
	cmp r0, #0
	bne _08072EB2
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_08072EB2:
	ldrh r1, [r4, #4]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0xf
	bgt _08072ECA
	movs r0, #7
	ands r0, r1
	cmp r0, #7
	bne _08072ECA
	adds r0, r4, #0
	bl sub_0808C464
_08072ECA:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r5, r0, #0
	cmp r1, #0
	bge _08072EE8
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08072EF8
	b _08072EF4
_08072EE8:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08072EF8
_08072EF4:
	movs r0, #0
	strh r0, [r5]
_08072EF8:
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r3
	cmp r0, #0
	bne _08072F20
	ldr r1, [r4, #0x40]
	str r1, [r4, #0x48]
	ldr r2, [r4, #0x44]
	str r2, [r4, #0x4c]
	movs r7, #0
	ldrsh r0, [r5, r7]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	adds r0, r4, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r2, r2, r0
	str r2, [r4, #0x44]
_08072F20:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r3
	cmp r0, #0
	beq _08072F3E
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r3, r0
	str r3, [r4, #8]
	movs r0, #2
	strb r0, [r6]
	ldr r0, _08072FE0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08072FE4 @ =sub_08084B1C
	str r0, [r1, #8]
_08072F3E:
	ldr r2, _08072FE8 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r3, [r4, #0x40]
	ldr r0, [r0]
	cmp r3, r0
	bgt _08072F86
	adds r0, r2, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _08072F86
	adds r0, r2, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r3, [r4, #0x44]
	ldr r0, [r0]
	cmp r3, r0
	bgt _08072F86
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _08072F86
	adds r0, r4, #0
	bl sub_0806FC70
_08072F86:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	beq _08072FCC
	ldr r0, _08072FEC @ =gUnk_082D88B8
	adds r1, r4, #0
	adds r1, #0x57
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08072FB6
	movs r0, #0xf0
	lsls r0, r0, #0x10
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r1, r0
	bls _08072FCC
_08072FB6:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #2
	strb r0, [r6]
	ldr r0, _08072FE0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08072FE4 @ =sub_08084B1C
	str r0, [r1, #8]
_08072FCC:
	adds r0, r4, #0
	bl sub_0806F8BC
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_08072FD8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08072FE0: .4byte gCurTask
_08072FE4: .4byte sub_08084B1C
_08072FE8: .4byte gCurLevelInfo
_08072FEC: .4byte gUnk_082D88B8

	thumb_func_start sub_08072FF0
sub_08072FF0: @ 0x08072FF0
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x44]
	adds r0, r3, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	beq _08073014
	ldrh r1, [r2, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08073014
	movs r4, #0xa0
	lsls r4, r4, #5
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2, #6]
_08073014:
	ldr r4, _08073064 @ =0x00000103
	adds r0, r3, r4
	ldrb r0, [r0]
	cmp r0, #1
	beq _0807302A
	ldrh r1, [r2, #6]
	movs r3, #0xa0
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
_0807302A:
	movs r3, #0
	ldr r1, [r2, #0x44]
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	beq _08073040
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807304E
_08073040:
	ldrh r1, [r2, #6]
	movs r4, #0xa0
	lsls r4, r4, #5
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2, #6]
	movs r3, #1
_0807304E:
	cmp r3, #0
	beq _0807305E
	ldrh r1, [r2, #6]
	movs r3, #0xa0
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
_0807305E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08073064: .4byte 0x00000103

	thumb_func_start sub_08073068
sub_08073068: @ 0x08073068
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x44]
	adds r0, r3, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	beq _0807308C
	ldrh r1, [r2, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807308C
	movs r4, #0xa0
	lsls r4, r4, #5
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2, #6]
_0807308C:
	ldr r4, _080730DC @ =0x00000103
	adds r0, r3, r4
	ldrb r0, [r0]
	cmp r0, #2
	beq _080730A2
	ldrh r1, [r2, #6]
	movs r3, #0xa0
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
_080730A2:
	movs r3, #0
	ldr r1, [r2, #0x44]
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	beq _080730B8
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080730C6
_080730B8:
	ldrh r1, [r2, #6]
	movs r4, #0xa0
	lsls r4, r4, #5
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2, #6]
	movs r3, #1
_080730C6:
	cmp r3, #0
	beq _080730D6
	ldrh r1, [r2, #6]
	movs r3, #0xa0
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
_080730D6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080730DC: .4byte 0x00000103

	thumb_func_start sub_080730E0
sub_080730E0: @ 0x080730E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r5, [r4, #0x44]
	ldrh r1, [r4, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080731D8
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r0, [r2]
	mvns r0, r0
	movs r1, #1
	ands r0, r1
	strb r0, [r2]
	ldrh r1, [r4, #6]
	ldr r0, _0807319C @ =0x0000FFFE
	ands r0, r1
	strh r0, [r4, #6]
	ldr r2, [r5, #8]
	movs r1, #1
	mov sb, r1
	ands r2, r1
	orrs r2, r0
	strh r2, [r4, #6]
	ldr r6, [r5, #0x40]
	str r6, [r4, #0x34]
	ldr r3, [r5, #0x44]
	str r3, [r4, #0x38]
	adds r0, r5, #0
	adds r0, #0xd6
	ldrh r0, [r0]
	movs r1, #0x80
	adds r1, r1, r0
	mov r8, r1
	strh r1, [r4, #0x3c]
	ldrh r0, [r5, #4]
	strh r0, [r4, #0x3e]
	movs r0, #0x30
	mov sl, r0
	mov r1, sl
	strh r1, [r4, #4]
	ldr r0, _080731A0 @ =gRngVal
	mov ip, r0
	ldr r0, [r0]
	ldr r7, _080731A4 @ =0x00196225
	muls r0, r7, r0
	ldr r1, _080731A8 @ =0x3C6EF35F
	adds r5, r0, r1
	mov r0, ip
	str r5, [r0]
	lsrs r1, r5, #0x10
	movs r0, #0x1f
	ands r1, r0
	movs r0, #0xb
	subs r0, r0, r1
	strh r0, [r4, #8]
	mov r1, sb
	ands r2, r1
	cmp r2, #0
	beq _080731AC
	adds r1, r5, #0
	muls r1, r7, r1
	ldr r0, _080731A8 @ =0x3C6EF35F
	adds r1, r1, r0
	lsrs r0, r1, #0x10
	movs r2, #7
	ands r0, r2
	adds r0, #0x18
	lsls r0, r0, #8
	subs r0, r6, r0
	str r0, [r4, #0x34]
	adds r0, r1, #0
	muls r0, r7, r0
	ldr r1, _080731A8 @ =0x3C6EF35F
	adds r0, r0, r1
	mov r1, ip
	str r0, [r1]
	lsrs r0, r0, #0x10
	ands r0, r2
	lsls r0, r0, #8
	subs r0, r3, r0
	str r0, [r4, #0x38]
	mov r1, r8
	rsbs r0, r1, #0
	strh r0, [r4, #0x3c]
	mov r1, sl
	rsbs r0, r1, #0
	strh r0, [r4, #4]
	b _080731D8
	.align 2, 0
_0807319C: .4byte 0x0000FFFE
_080731A0: .4byte gRngVal
_080731A4: .4byte 0x00196225
_080731A8: .4byte 0x3C6EF35F
_080731AC:
	adds r1, r5, #0
	muls r1, r7, r1
	ldr r0, _080731E8 @ =0x3C6EF35F
	adds r1, r1, r0
	lsrs r0, r1, #0x10
	movs r2, #7
	ands r0, r2
	adds r0, #0x18
	lsls r0, r0, #8
	adds r0, r6, r0
	str r0, [r4, #0x34]
	adds r0, r1, #0
	muls r0, r7, r0
	ldr r1, _080731E8 @ =0x3C6EF35F
	adds r0, r0, r1
	mov r1, ip
	str r0, [r1]
	lsrs r0, r0, #0x10
	ands r0, r2
	lsls r0, r0, #8
	subs r0, r3, r0
	str r0, [r4, #0x38]
_080731D8:
	movs r0, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080731E8: .4byte 0x3C6EF35F

	thumb_func_start sub_080731EC
sub_080731EC: @ 0x080731EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r5, [r6, #0x44]
	ldrh r1, [r6, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080732CA
	movs r0, #4
	orrs r0, r1
	ldr r3, _08073284 @ =0x0000FFFE
	ands r0, r3
	strh r0, [r6, #6]
	ldr r1, [r5, #8]
	movs r2, #1
	ands r1, r2
	orrs r1, r0
	strh r1, [r6, #6]
	ldr r0, [r5, #0x40]
	mov sb, r0
	str r0, [r6, #0x34]
	ldr r4, [r5, #0x44]
	mov ip, r4
	str r4, [r6, #0x38]
	movs r7, #0xd6
	movs r4, #0x90
	lsls r4, r4, #1
	adds r0, r4, #0
	ldrh r4, [r7, r5]
	adds r4, r4, r0
	mov r8, r4
	strh r4, [r6, #0x3c]
	ldrh r0, [r5, #4]
	strh r0, [r6, #0x3e]
	ldr r0, _08073288 @ =0x0000FFF8
	strh r0, [r6, #4]
	strh r3, [r6, #8]
	ands r1, r2
	cmp r1, #0
	beq _08073298
	ldr r5, _0807328C @ =gRngVal
	ldr r0, [r5]
	ldr r4, _08073290 @ =0x00196225
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r3, _08073294 @ =0x3C6EF35F
	adds r2, r2, r3
	lsrs r0, r2, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x10
	lsls r0, r0, #8
	mov r7, sb
	subs r0, r7, r0
	str r0, [r6, #0x34]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	str r0, [r5]
	lsrs r0, r0, #0x10
	subs r1, #0x27
	orrs r0, r1
	lsls r0, r0, #8
	mov r1, ip
	subs r0, r1, r0
	str r0, [r6, #0x38]
	mov r4, r8
	rsbs r0, r4, #0
	strh r0, [r6, #0x3c]
	movs r0, #8
	strh r0, [r6, #4]
	b _080732CA
	.align 2, 0
_08073284: .4byte 0x0000FFFE
_08073288: .4byte 0x0000FFF8
_0807328C: .4byte gRngVal
_08073290: .4byte 0x00196225
_08073294: .4byte 0x3C6EF35F
_08073298:
	ldr r5, _080732D8 @ =gRngVal
	ldr r0, [r5]
	ldr r4, _080732DC @ =0x00196225
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r3, _080732E0 @ =0x3C6EF35F
	adds r2, r2, r3
	lsrs r0, r2, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x10
	lsls r0, r0, #8
	add r0, sb
	str r0, [r6, #0x34]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	str r0, [r5]
	lsrs r0, r0, #0x10
	subs r1, #0x27
	orrs r0, r1
	lsls r0, r0, #8
	mov r7, ip
	subs r0, r7, r0
	str r0, [r6, #0x38]
_080732CA:
	movs r0, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080732D8: .4byte gRngVal
_080732DC: .4byte 0x00196225
_080732E0: .4byte 0x3C6EF35F

	thumb_func_start sub_080732E4
sub_080732E4: @ 0x080732E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r4, [r6, #0x44]
	ldrh r2, [r6, #6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080733BE
	movs r1, #4
	orrs r1, r2
	ldr r0, _0807337C @ =0x0000FFFE
	ands r1, r0
	strh r1, [r6, #6]
	ldr r2, [r4, #8]
	movs r3, #1
	ands r2, r3
	orrs r2, r1
	strh r2, [r6, #6]
	ldr r7, [r4, #0x40]
	str r7, [r6, #0x34]
	ldr r0, [r4, #0x44]
	mov ip, r0
	str r0, [r6, #0x38]
	adds r0, r4, #0
	adds r0, #0xd6
	ldrh r0, [r0]
	movs r1, #0x10
	adds r1, r1, r0
	mov r8, r1
	strh r1, [r6, #0x3c]
	ldrh r0, [r4, #4]
	strh r0, [r6, #0x3e]
	movs r0, #0x30
	mov sb, r0
	mov r1, sb
	strh r1, [r6, #4]
	movs r0, #0xf
	strh r0, [r6, #8]
	ands r2, r3
	cmp r2, #0
	beq _0807338C
	ldr r5, _08073380 @ =gRngVal
	ldr r0, [r5]
	ldr r4, _08073384 @ =0x00196225
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r3, _08073388 @ =0x3C6EF35F
	adds r2, r2, r3
	lsrs r0, r2, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x10
	lsls r0, r0, #8
	subs r0, r7, r0
	str r0, [r6, #0x34]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	str r0, [r5]
	lsrs r0, r0, #0x10
	subs r1, #0x27
	orrs r0, r1
	lsls r0, r0, #8
	mov r1, ip
	subs r0, r1, r0
	str r0, [r6, #0x38]
	mov r1, r8
	rsbs r0, r1, #0
	strh r0, [r6, #0x3c]
	mov r1, sb
	rsbs r0, r1, #0
	strh r0, [r6, #4]
	b _080733BE
	.align 2, 0
_0807337C: .4byte 0x0000FFFE
_08073380: .4byte gRngVal
_08073384: .4byte 0x00196225
_08073388: .4byte 0x3C6EF35F
_0807338C:
	ldr r5, _080733CC @ =gRngVal
	ldr r0, [r5]
	ldr r4, _080733D0 @ =0x00196225
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r3, _080733D4 @ =0x3C6EF35F
	adds r2, r2, r3
	lsrs r0, r2, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x10
	lsls r0, r0, #8
	adds r0, r7, r0
	str r0, [r6, #0x34]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	str r0, [r5]
	lsrs r0, r0, #0x10
	subs r1, #0x27
	orrs r0, r1
	lsls r0, r0, #8
	mov r1, ip
	subs r0, r1, r0
	str r0, [r6, #0x38]
_080733BE:
	movs r0, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080733CC: .4byte gRngVal
_080733D0: .4byte 0x00196225
_080733D4: .4byte 0x3C6EF35F

	thumb_func_start sub_080733D8
sub_080733D8: @ 0x080733D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r4, [r5, #0x44]
	ldrh r2, [r5, #6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080734E4
	movs r1, #4
	orrs r1, r2
	ldr r0, _08073498 @ =0x0000FFFE
	ands r1, r0
	strh r1, [r5, #6]
	ldr r2, [r4, #8]
	movs r3, #1
	ands r2, r3
	orrs r2, r1
	strh r2, [r5, #6]
	ldr r7, [r4, #0x40]
	str r7, [r5, #0x34]
	ldr r0, [r4, #0x44]
	mov ip, r0
	str r0, [r5, #0x38]
	adds r0, r4, #0
	adds r0, #0xd6
	ldrh r0, [r0]
	movs r1, #0x80
	adds r1, r1, r0
	mov sb, r1
	strh r1, [r5, #0x3c]
	ldrh r0, [r4, #4]
	adds r0, #0x80
	strh r0, [r5, #0x3e]
	movs r0, #0x20
	mov sl, r0
	mov r1, sl
	strh r1, [r5, #4]
	ldr r0, _0807349C @ =gRngVal
	mov r8, r0
	ldr r0, [r0]
	ldr r6, _080734A0 @ =0x00196225
	muls r0, r6, r0
	ldr r1, _080734A4 @ =0x3C6EF35F
	adds r4, r0, r1
	mov r0, r8
	str r4, [r0]
	lsrs r1, r4, #0x10
	movs r0, #0x1f
	ands r1, r0
	movs r0, #0xf
	subs r0, r0, r1
	strh r0, [r5, #8]
	ands r2, r3
	cmp r2, #0
	beq _080734A8
	adds r0, r4, #0
	muls r0, r6, r0
	ldr r1, _080734A4 @ =0x3C6EF35F
	adds r0, r0, r1
	adds r3, r0, #0
	muls r3, r6, r3
	adds r3, r3, r1
	lsrs r2, r3, #0x10
	movs r4, #7
	adds r0, r2, #0
	ands r0, r4
	movs r1, #3
	ands r2, r1
	adds r0, r0, r2
	adds r0, #0x14
	lsls r0, r0, #8
	subs r0, r7, r0
	str r0, [r5, #0x34]
	adds r0, r3, #0
	muls r0, r6, r0
	ldr r1, _080734A4 @ =0x3C6EF35F
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1]
	lsrs r0, r0, #0x10
	ands r0, r4
	lsls r0, r0, #8
	mov r1, ip
	subs r0, r1, r0
	str r0, [r5, #0x38]
	mov r1, sb
	rsbs r0, r1, #0
	strh r0, [r5, #0x3c]
	mov r1, sl
	rsbs r0, r1, #0
	strh r0, [r5, #4]
	b _080734E4
	.align 2, 0
_08073498: .4byte 0x0000FFFE
_0807349C: .4byte gRngVal
_080734A0: .4byte 0x00196225
_080734A4: .4byte 0x3C6EF35F
_080734A8:
	adds r0, r4, #0
	muls r0, r6, r0
	ldr r1, _080734F4 @ =0x3C6EF35F
	adds r0, r0, r1
	adds r3, r0, #0
	muls r3, r6, r3
	adds r3, r3, r1
	lsrs r2, r3, #0x10
	movs r4, #7
	adds r0, r2, #0
	ands r0, r4
	movs r1, #3
	ands r2, r1
	adds r0, r0, r2
	adds r0, #0x14
	lsls r0, r0, #8
	adds r0, r7, r0
	str r0, [r5, #0x34]
	adds r0, r3, #0
	muls r0, r6, r0
	ldr r1, _080734F4 @ =0x3C6EF35F
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1]
	lsrs r0, r0, #0x10
	ands r0, r4
	lsls r0, r0, #8
	mov r1, ip
	subs r0, r1, r0
	str r0, [r5, #0x38]
_080734E4:
	movs r0, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080734F4: .4byte 0x3C6EF35F

	thumb_func_start sub_080734F8
sub_080734F8: @ 0x080734F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r0, _08073530 @ =sub_080737D8
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08073534 @ =sub_08084D68
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08073538
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08073540
	.align 2, 0
_08073530: .4byte sub_080737D8
_08073534: .4byte sub_08084D68
_08073538:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08073540:
	adds r7, r0, #0
	bl sub_0803E380
	movs r5, #0
	movs r0, #2
	strb r0, [r7]
	mov r1, sb
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x44]
	str r1, [r7, #0x70]
	strh r5, [r7, #4]
	mov r0, sb
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x60
	strh r1, [r0]
	mov r2, sb
	adds r2, #0x56
	ldrb r0, [r2]
	adds r3, r7, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r6, _08073674 @ =gUnk_03000510
	ldrb r1, [r6, #4]
	movs r4, #1
	mov r8, r4
	mov r0, r8
	ldrb r4, [r3]
	lsls r0, r4
	movs r4, #0x10
	orrs r0, r4
	ands r1, r0
	mov sl, r2
	cmp r1, #0
	beq _08073596
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r7, #8]
_08073596:
	adds r1, r7, #0
	adds r1, #0x64
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x66
	strh r5, [r0]
	subs r1, #1
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r7, #8]
	ldr r0, _08073678 @ =0xA0000100
	orrs r2, r0
	ldr r1, [r7, #0x68]
	ldr r0, _0807367C @ =0x20000103
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	str r2, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r7, #0x68]
	ldrb r1, [r6, #4]
	mov r0, r8
	ldrb r3, [r3]
	lsls r0, r3
	orrs r0, r4
	ands r1, r0
	cmp r1, #0
	beq _080735E0
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r7, #8]
_080735E0:
	movs r1, #0xa
	rsbs r1, r1, #0
	movs r2, #0xc
	rsbs r2, r2, #0
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #0xa
	bl sub_0803E2B0
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #3
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r2, #0
	movs r3, #3
	bl sub_0803E308
	mov r1, sb
	ldr r0, [r1, #8]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq _08073616
	ldr r0, [r7, #8]
	orrs r0, r2
	str r0, [r7, #8]
_08073616:
	adds r6, r7, #0
	adds r6, #0x50
	movs r0, #0x84
	lsls r0, r0, #1
	strh r0, [r6]
	adds r0, r7, #0
	adds r0, #0x52
	strh r5, [r0]
	ldr r4, _08073680 @ =gRngVal
	ldr r0, [r4]
	ldr r5, _08073684 @ =0x00196225
	adds r3, r0, #0
	muls r3, r5, r3
	ldr r0, _08073688 @ =0x3C6EF35F
	adds r3, r3, r0
	str r3, [r4]
	lsrs r1, r3, #0x10
	movs r2, #0x1f
	ands r1, r2
	movs r0, #0x38
	subs r0, r0, r1
	str r0, [r7, #0x48]
	adds r0, r3, #0
	muls r0, r5, r0
	ldr r1, _08073688 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r4]
	lsrs r0, r0, #0x10
	bics r2, r0
	str r2, [r7, #0x4c]
	ldr r0, [r7, #8]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq _08073690
	ldr r0, [r7, #0x40]
	ldr r4, _0807368C @ =0xFFFFE800
	adds r0, r0, r4
	str r0, [r7, #0x40]
	ldrh r0, [r6]
	rsbs r0, r0, #0
	strh r0, [r6]
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	b _0807369A
	.align 2, 0
_08073674: .4byte gUnk_03000510
_08073678: .4byte 0xA0000100
_0807367C: .4byte 0x20000103
_08073680: .4byte gRngVal
_08073684: .4byte 0x00196225
_08073688: .4byte 0x3C6EF35F
_0807368C: .4byte 0xFFFFE800
_08073690:
	ldr r0, [r7, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r7, #0x40]
_0807369A:
	mov r2, sl
	ldrb r1, [r2]
	lsls r1, r1, #0xb
	ldr r4, _080737B4 @ =0x06010600
	adds r1, r1, r4
	ldr r0, _080737B8 @ =sub_080730E0
	str r0, [sp]
	ldr r0, _080737BC @ =sub_08072FF0
	mov r8, r0
	str r0, [sp, #4]
	mov r0, sb
	movs r2, #0x4e
	movs r3, #0
	bl sub_080706A0
	adds r1, r0, #0
	mov r2, sl
	ldrb r0, [r2]
	adds r0, #4
	adds r2, r1, #0
	adds r2, #0x2b
	strb r0, [r2]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r1, #0x20]
	mov r4, sl
	ldrb r1, [r4]
	lsls r1, r1, #0xb
	ldr r0, _080737C0 @ =0x06010400
	adds r1, r1, r0
	ldr r0, _080737C4 @ =sub_080731EC
	str r0, [sp]
	mov r2, r8
	str r2, [sp, #4]
	mov r0, sb
	movs r2, #0x4e
	movs r3, #2
	bl sub_080706A0
	adds r1, r0, #0
	ldrb r0, [r4]
	adds r0, #4
	adds r2, r1, #0
	adds r2, #0x2b
	strb r0, [r2]
	movs r4, #0xa0
	lsls r4, r4, #2
	strh r4, [r1, #0x20]
	mov r0, sl
	ldrb r1, [r0]
	lsls r1, r1, #0xb
	ldr r2, _080737C0 @ =0x06010400
	adds r1, r1, r2
	ldr r0, _080737C8 @ =sub_080732E4
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	mov r0, sb
	movs r2, #0x4e
	movs r3, #3
	bl sub_080706A0
	adds r1, r0, #0
	mov r2, sl
	ldrb r0, [r2]
	adds r0, #4
	adds r2, r1, #0
	adds r2, #0x2b
	strb r0, [r2]
	strh r4, [r1, #0x20]
	mov r0, sl
	ldrb r1, [r0]
	lsls r1, r1, #0xb
	ldr r2, _080737C0 @ =0x06010400
	adds r1, r1, r2
	ldr r0, _080737CC @ =sub_080733D8
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	mov r0, sb
	movs r2, #0x4e
	movs r3, #4
	bl sub_080706A0
	adds r1, r0, #0
	mov r2, sl
	ldrb r0, [r2]
	adds r0, #4
	adds r2, r1, #0
	adds r2, #0x2b
	strb r0, [r2]
	strh r4, [r1, #0x20]
	mov r0, sb
	bl sub_08073A74
	ldr r2, _080737D0 @ =0x00000293
	ldr r0, _080737D4 @ =sub_08073C98
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	mov r0, sb
	movs r1, #0
	movs r3, #2
	bl sub_080706A0
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x2b
	movs r0, #0xf
	strb r0, [r2]
	strh r4, [r1, #0x20]
	adds r1, r7, #0
	adds r1, #0x10
	mov r4, sl
	ldrb r2, [r4]
	lsls r2, r2, #0xb
	ldr r0, _080737C0 @ =0x06010400
	adds r2, r2, r0
	movs r4, #0
	str r4, [sp]
	movs r0, #0xb
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r3, #0x4d
	bl sub_080708DC
	mov r1, sl
	ldrb r0, [r1]
	adds r0, #4
	adds r1, r7, #0
	adds r1, #0x2f
	strb r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080737B4: .4byte 0x06010600
_080737B8: .4byte sub_080730E0
_080737BC: .4byte sub_08072FF0
_080737C0: .4byte 0x06010400
_080737C4: .4byte sub_080731EC
_080737C8: .4byte sub_080732E4
_080737CC: .4byte sub_080733D8
_080737D0: .4byte 0x00000293
_080737D4: .4byte sub_08073C98

	thumb_func_start sub_080737D8
sub_080737D8: @ 0x080737D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _080737FC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08073800
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08073808
	.align 2, 0
_080737FC: .4byte gCurTask
_08073800:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08073808:
	adds r7, r0, #0
	ldr r4, [r7, #0x70]
	ldr r1, [r7, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08073822
	ldr r0, [r2]
	bl TaskDestroy
	b _08073A68
_08073822:
	adds r0, r4, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	beq _0807383A
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807383A
	orrs r1, r3
	str r1, [r7, #8]
	b _08073A68
_0807383A:
	movs r2, #0
	ldr r1, [r7, #0x70]
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	beq _08073852
	ldr r3, _080738C4 @ =0x00000103
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807385E
_08073852:
	ldr r0, [r7, #8]
	movs r1, #0xa0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r7, #8]
	movs r2, #1
_0807385E:
	cmp r2, #0
	beq _08073864
	b _08073A68
_08073864:
	ldrh r0, [r7, #0x1c]
	cmp r0, #0x4d
	bne _080738DC
	ldr r1, _080738C8 @ =gKirbys
	ldr r0, _080738CC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08073934
	ldrb r0, [r4]
	cmp r0, #0
	bne _08073896
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08073934
_08073896:
	ldr r1, _080738D0 @ =gUnk_08D60FA4
	ldr r3, _080738D4 @ =gSongTable
	ldr r2, _080738D8 @ =0x00000474
	adds r0, r3, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080738BC
	movs r1, #0x8e
	lsls r1, r1, #3
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhs _08073934
_080738BC:
	movs r0, #0x8e
	bl m4aSongNumStart
	b _08073934
	.align 2, 0
_080738C4: .4byte 0x00000103
_080738C8: .4byte gKirbys
_080738CC: .4byte gUnk_0203AD3C
_080738D0: .4byte gUnk_08D60FA4
_080738D4: .4byte gSongTable
_080738D8: .4byte 0x00000474
_080738DC:
	ldr r1, _08073960 @ =gKirbys
	ldr r0, _08073964 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08073934
	ldrb r0, [r4]
	cmp r0, #0
	bne _08073908
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08073934
_08073908:
	ldr r1, _08073968 @ =gUnk_08D60FA4
	ldr r3, _0807396C @ =gSongTable
	ldr r2, _08073970 @ =0x0000047C
	adds r0, r3, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807392E
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhs _08073934
_0807392E:
	movs r0, #0x8f
	bl m4aSongNumStart
_08073934:
	ldr r0, _08073974 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r7, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	ldr r1, [r7, #8]
	cmp r2, #0
	beq _08073978
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08073978
	adds r0, r7, #0
	bl sub_0803D9A8
	b _08073A68
	.align 2, 0
_08073960: .4byte gKirbys
_08073964: .4byte gUnk_0203AD3C
_08073968: .4byte gUnk_08D60FA4
_0807396C: .4byte gSongTable
_08073970: .4byte 0x0000047C
_08073974: .4byte gUnk_03000510
_08073978:
	movs r0, #2
	ands r0, r1
	movs r2, #0x50
	adds r2, r2, r7
	mov ip, r2
	movs r3, #0x52
	adds r3, r3, r7
	mov sb, r3
	cmp r0, #0
	beq _08073A2E
	movs r2, #4
	orrs r2, r1
	str r2, [r7, #8]
	ldr r0, [r4, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r7, #0x44]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	str r1, [r7, #8]
	ldr r0, [r4, #8]
	movs r2, #1
	mov r8, r2
	ands r0, r2
	orrs r1, r0
	str r1, [r7, #8]
	adds r1, r4, #0
	adds r1, #0xd6
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r1, ip
	strh r0, [r1]
	ldrh r0, [r4, #4]
	mov r2, sb
	strh r0, [r2]
	ldr r4, _08073A14 @ =gRngVal
	ldr r0, [r4]
	ldr r6, _08073A18 @ =0x00196225
	adds r3, r0, #0
	muls r3, r6, r3
	ldr r5, _08073A1C @ =0x3C6EF35F
	adds r3, r3, r5
	str r3, [r4]
	lsrs r1, r3, #0x10
	movs r2, #0x1f
	ands r1, r2
	movs r0, #0x38
	subs r0, r0, r1
	str r0, [r7, #0x48]
	adds r0, r3, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r4]
	lsrs r0, r0, #0x10
	bics r2, r0
	str r2, [r7, #0x4c]
	ldr r0, [r7, #8]
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	beq _08073A24
	ldr r0, [r7, #0x40]
	ldr r1, _08073A20 @ =0xFFFFE800
	adds r0, r0, r1
	str r0, [r7, #0x40]
	mov r2, ip
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	b _08073A2E
	.align 2, 0
_08073A14: .4byte gRngVal
_08073A18: .4byte 0x00196225
_08073A1C: .4byte 0x3C6EF35F
_08073A20: .4byte 0xFFFFE800
_08073A24:
	ldr r0, [r7, #0x40]
	movs r3, #0xc0
	lsls r3, r3, #5
	adds r0, r0, r3
	str r0, [r7, #0x40]
_08073A2E:
	ldr r1, [r7, #0x48]
	mov r2, ip
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r1, [r7, #0x4c]
	mov r3, sb
	ldrh r0, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08073A62
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r0, [r7, #0x44]
	subs r0, r0, r1
	str r0, [r7, #0x44]
_08073A62:
	adds r0, r7, #0

	thumb_func_start sub_08073A64
sub_08073A64: @ 0x08073A64
	bl sub_0806F8BC
_08073A68:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08073A74
sub_08073A74: @ 0x08073A74
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08073AA4 @ =sub_08073B64
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08073AA8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08073AAC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08073AB4
	.align 2, 0
_08073AA4: .4byte sub_08073B64
_08073AA8: .4byte sub_0803DCCC
_08073AAC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08073AB4:
	adds r0, r4, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, _08073B58 @ =gUnk_03000510
	mov ip, r0
	ldrb r1, [r0, #4]
	movs r6, #1
	adds r0, r6, #0
	ldrb r2, [r3]
	lsls r0, r2
	movs r7, #0x10
	orrs r0, r7
	ands r1, r0
	cmp r1, #0
	beq _08073B06
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_08073B06:
	ldr r2, [r4, #8]
	ldr r0, _08073B5C @ =0x80000500
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _08073B60 @ =0x20000103
	orrs r0, r1
	str r0, [r4, #0x68]
	mov r0, ip
	ldrb r1, [r0, #4]
	adds r0, r6, #0
	ldrb r3, [r3]
	lsls r0, r3
	orrs r0, r7
	ands r1, r0
	cmp r1, #0
	beq _08073B30
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r4, #8]
_08073B30:
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0x10
	bl sub_0803E308
	ldr r0, [r5, #8]
	ands r0, r6
	cmp r0, #0
	beq _08073B50
	ldr r0, [r4, #8]
	orrs r0, r6
	str r0, [r4, #8]
_08073B50:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08073B58: .4byte gUnk_03000510
_08073B5C: .4byte 0x80000500
_08073B60: .4byte 0x20000103

	thumb_func_start sub_08073B64
sub_08073B64: @ 0x08073B64
	push {r4, lr}
	ldr r2, _08073B80 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08073B84
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08073B8C
	.align 2, 0
_08073B80: .4byte gCurTask
_08073B84:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08073B8C:
	adds r4, r0, #0
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _08073BA2
	ldr r0, [r2]
	bl TaskDestroy
	b _08073C8A
_08073BA2:
	ldr r0, _08073BCC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08073BD0
	movs r0, #0x80
	lsls r0, r0, #6
	ands r3, r0
	cmp r3, #0
	bne _08073BD0
	adds r0, r4, #0
	bl sub_0803D9A8
	b _08073C8A
	.align 2, 0
_08073BCC: .4byte gUnk_03000510
_08073BD0:
	movs r3, #0
	ldr r0, [r4, #0x70]
	adds r1, r0, #0
	adds r1, #0xd4
	ldrh r1, [r1]
	adds r2, r0, #0
	cmp r1, #0x5a
	beq _08073BEA
	ldr r1, _08073C18 @ =0x00000103
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08073BF6
_08073BEA:
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	movs r3, #1
_08073BF6:
	cmp r3, #0
	bne _08073C8A
	ldr r0, [r2, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r2, #0x44]
	str r0, [r4, #0x44]
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	beq _08073C1C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _08073C8A
	.align 2, 0
_08073C18: .4byte 0x00000103
_08073C1C:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08073C8A
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08073C50
	ldr r2, _08073C48 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _08073C4C @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _08073C52
	.align 2, 0
_08073C48: .4byte gCurLevelInfo
_08073C4C: .4byte 0x0000065E
_08073C50:
	movs r1, #0xff
_08073C52:
	cmp r1, #0xff
	beq _08073C8A
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08073C90 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08073C94 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08073C8A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08073C90: .4byte gUnk_02022EB0
_08073C94: .4byte gUnk_02022F50

	thumb_func_start sub_08073C98
sub_08073C98: @ 0x08073C98
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x44]
	adds r0, r3, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	beq _08073CB6
	ldrh r1, [r2, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08073D1E
	movs r0, #1
	b _08073D20
_08073CB6:
	ldrh r4, [r2, #6]
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08073D1E
	movs r1, #4
	orrs r1, r4
	strh r1, [r2, #6]
	ldr r4, [r3, #0x40]
	str r4, [r2, #0x34]
	ldr r3, [r3, #0x44]
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r3, r5
	str r0, [r2, #0x38]
	movs r6, #0xfd
	lsls r6, r6, #8
	strh r6, [r2, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2, #0x3e]
	movs r5, #0x60
	strh r5, [r2, #4]
	ldr r0, _08073D0C @ =0x0000FFC0
	strh r0, [r2, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08073D10
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r4, r1
	str r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r3, r1
	str r0, [r2, #0x38]
	rsbs r0, r6, #0
	strh r0, [r2, #0x3c]
	rsbs r0, r5, #0
	strh r0, [r2, #4]
	b _08073D1E
	.align 2, 0
_08073D0C: .4byte 0x0000FFC0
_08073D10:
	ldr r5, _08073D28 @ =0xFFFFF800
	adds r0, r4, r5
	str r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r3, r1
	str r0, [r2, #0x38]
_08073D1E:
	movs r0, #0
_08073D20:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08073D28: .4byte 0xFFFFF800

	thumb_func_start sub_08073D2C
sub_08073D2C: @ 0x08073D2C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08073D64 @ =sub_080745C4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08073D68 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08073D6C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08073D74
	.align 2, 0
_08073D64: .4byte sub_080745C4
_08073D68: .4byte sub_0803DCCC
_08073D6C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08073D74:
	adds r0, r4, #0
	bl sub_0803E380
	movs r0, #0
	mov r8, r0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	mov r1, r8
	strh r1, [r4, #4]
	adds r6, r5, #0
	adds r6, #0x60
	ldrh r1, [r6]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r7, r5, #0
	adds r7, #0x56
	ldrb r0, [r7]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08073EA0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08073DC8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_08073DC8:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x66
	movs r2, #0x80
	lsls r2, r2, #1
	mov sb, r2
	mov r1, sb
	strh r1, [r0]
	subs r0, #3
	strb r3, [r0]
	ldr r0, [r4, #8]
	ldr r1, _08073EA4 @ =0x10000100
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _08073EA8 @ =0x20000043
	orrs r0, r1
	str r0, [r4, #0x68]
	strh r3, [r4, #4]
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	movs r2, #0x14
	rsbs r2, r2, #0
	movs r0, #0x14
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0x14
	bl sub_0803E2B0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x10
	ldr r2, _08073EAC @ =0x06012000
	ldr r3, _08073EB0 @ =0x0000029B
	mov r0, r8
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	ldr r1, _08073EB4 @ =gKirbys
	ldr r0, _08073EB8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _08073E92
	ldrb r0, [r5]
	cmp r0, #0
	bne _08073E54
	ldrb r0, [r7]
	cmp r0, r2
	bne _08073E92
_08073E54:
	ldr r1, _08073EBC @ =gUnk_08D60FA4
	ldr r4, _08073EC0 @ =gSongTable
	ldr r2, _08073EC4 @ =0x000009B4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08073E7A
	movs r1, #0x9b
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08073E92
_08073E7A:
	cmp r3, #0
	beq _08073E8A
	ldr r0, _08073EC8 @ =gUnk_0203AD10
	ldr r0, [r0]
	mov r2, sb
	ands r0, r2
	cmp r0, #0
	bne _08073E92
_08073E8A:
	movs r0, #0x9b
	lsls r0, r0, #1
	bl m4aSongNumStart
_08073E92:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08073EA0: .4byte gUnk_03000510
_08073EA4: .4byte 0x10000100
_08073EA8: .4byte 0x20000043
_08073EAC: .4byte 0x06012000
_08073EB0: .4byte 0x0000029B
_08073EB4: .4byte gKirbys
_08073EB8: .4byte gUnk_0203AD3C
_08073EBC: .4byte gUnk_08D60FA4
_08073EC0: .4byte gSongTable
_08073EC4: .4byte 0x000009B4
_08073EC8: .4byte gUnk_0203AD10

	thumb_func_start sub_08073ECC
sub_08073ECC: @ 0x08073ECC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _08073F00 @ =sub_080745C4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08073F04 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08073F08
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08073F10
	.align 2, 0
_08073F00: .4byte sub_080745C4
_08073F04: .4byte sub_0803DCCC
_08073F08:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08073F10:
	adds r5, r0, #0
	bl sub_0803E380
	movs r0, #0
	mov ip, r0
	movs r0, #2
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	str r6, [r5, #0x70]
	mov r1, ip
	strh r1, [r5, #4]
	adds r4, r6, #0
	adds r4, #0x60
	ldrh r1, [r4]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r3, r6, #0
	adds r3, #0x56
	ldrb r0, [r3]
	adds r1, r5, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08073FA4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r7, #1
	adds r0, r7, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	mov r8, r3
	cmp r2, #0
	beq _08073F66
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_08073F66:
	mov r2, ip
	str r2, [r5, #0x70]
	adds r1, r5, #0
	adds r1, #0x64
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #2
	subs r0, #0x80
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x63
	strb r7, [r0]
	ldr r0, [r5, #8]
	ldr r1, _08073FA8 @ =0x30000100
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0x68]
	ldr r1, _08073FAC @ =0x20000043
	orrs r0, r1
	str r0, [r5, #0x68]
	ldr r0, [r6, #8]
	ands r0, r7
	cmp r0, #0
	beq _08073FB0
	ldr r0, [r5, #0x40]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	b _08073FB6
	.align 2, 0
_08073FA4: .4byte gUnk_03000510
_08073FA8: .4byte 0x30000100
_08073FAC: .4byte 0x20000043
_08073FB0:
	ldr r0, [r5, #0x40]
	ldr r2, _08074064 @ =0xFFFFFC00
	adds r0, r0, r2
_08073FB6:
	str r0, [r5, #0x40]
	movs r0, #1
	adds r1, r6, #0
	bl sub_0806FE64
	movs r2, #0x14
	rsbs r2, r2, #0
	movs r0, #0x14
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #0x14
	bl sub_0803E2B0
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x10
	ldr r2, _08074068 @ =0x06012000
	ldr r3, _0807406C @ =0x000002BF
	movs r0, #0
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080708DC
	ldr r1, _08074070 @ =gKirbys
	ldr r0, _08074074 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r4, [r4]
	cmp r0, r4
	bne _08074058
	ldrb r0, [r6]
	cmp r0, #0
	bne _08074018
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, r2
	bne _08074058
_08074018:
	ldr r1, _08074078 @ =gUnk_08D60FA4
	ldr r4, _0807407C @ =gSongTable
	ldr r2, _08074080 @ =0x000009B4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807403E
	movs r1, #0x9b
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08074058
_0807403E:
	cmp r3, #0
	beq _08074050
	ldr r0, _08074084 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08074058
_08074050:
	movs r0, #0x9b
	lsls r0, r0, #1
	bl m4aSongNumStart
_08074058:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08074064: .4byte 0xFFFFFC00
_08074068: .4byte 0x06012000
_0807406C: .4byte 0x000002BF
_08074070: .4byte gKirbys
_08074074: .4byte gUnk_0203AD3C
_08074078: .4byte gUnk_08D60FA4
_0807407C: .4byte gSongTable
_08074080: .4byte 0x000009B4
_08074084: .4byte gUnk_0203AD10

	thumb_func_start sub_08074088
sub_08074088: @ 0x08074088
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080740BC @ =sub_08074744
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080740C0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080740C4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080740CC
	.align 2, 0
_080740BC: .4byte sub_08074744
_080740C0: .4byte sub_0803DCCC
_080740C4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080740CC:
	adds r0, r4, #0
	bl sub_0803E380
	movs r0, #0
	mov r8, r0
	movs r3, #2
	strb r3, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	mov r1, r8
	strh r1, [r4, #4]
	adds r6, r5, #0
	adds r6, #0x60
	ldrh r1, [r6]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r7, r5, #0
	adds r7, #0x56
	ldrb r0, [r7]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08074214 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807411E
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0807411E:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #2
	subs r0, #0x80
	strh r0, [r1]
	subs r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _08074218 @ =0xA0000100
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _0807421C @ =0x20001003
	orrs r0, r1
	str r0, [r4, #0x68]
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	strh r3, [r4, #4]
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	movs r2, #0xe
	rsbs r2, r2, #0
	movs r0, #0xe
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0xe
	bl sub_0803E2B0
	movs r2, #0x18
	rsbs r2, r2, #0
	movs r0, #0x18
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0x18
	bl sub_0803E308
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x10
	ldr r2, _08074220 @ =0x06012000
	ldr r3, _08074224 @ =0x0000029B
	mov r0, r8
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	ldr r1, _08074228 @ =gKirbys
	ldr r0, _0807422C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _08074206
	ldrb r0, [r5]
	cmp r0, #0
	bne _080741C8
	ldrb r0, [r7]
	cmp r0, r2
	bne _08074206
_080741C8:
	ldr r1, _08074230 @ =gUnk_08D60FA4
	ldr r4, _08074234 @ =gSongTable
	ldr r2, _08074238 @ =0x00000644
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080741EE
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08074206
_080741EE:
	cmp r3, #0
	beq _08074200
	ldr r0, _0807423C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08074206
_08074200:
	movs r0, #0xc8
	bl m4aSongNumStart
_08074206:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08074214: .4byte gUnk_03000510
_08074218: .4byte 0xA0000100
_0807421C: .4byte 0x20001003
_08074220: .4byte 0x06012000
_08074224: .4byte 0x0000029B
_08074228: .4byte gKirbys
_0807422C: .4byte gUnk_0203AD3C
_08074230: .4byte gUnk_08D60FA4
_08074234: .4byte gSongTable
_08074238: .4byte 0x00000644
_0807423C: .4byte gUnk_0203AD10

	thumb_func_start sub_08074240
sub_08074240: @ 0x08074240
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _08074274 @ =sub_08074674
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08074278 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807427C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08074284
	.align 2, 0
_08074274: .4byte sub_08074674
_08074278: .4byte sub_0803DCCC
_0807427C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08074284:
	adds r5, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	str r6, [r5, #0x70]
	strh r1, [r5, #4]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080742E0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080742D2
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_080742D2:
	ldrb r0, [r6]
	cmp r0, #0
	beq _080742E4
	ldr r0, [r6, #0x70]
	str r0, [r5, #0x70]
	ldr r7, [r6, #0x70]
	b _080742E6
	.align 2, 0
_080742E0: .4byte gUnk_03000510
_080742E4:
	adds r7, r6, #0
_080742E6:
	cmp r4, #0
	beq _080742FC
	adds r0, r5, #0
	adds r0, #0x64
	movs r1, #0x98
	lsls r1, r1, #2
	strh r1, [r0]
	adds r1, r5, #0
	adds r1, #0x66
	movs r0, #0x80
	b _0807430E
_080742FC:
	adds r0, r5, #0
	adds r0, #0x64
	movs r1, #0xc0
	lsls r1, r1, #1
	strh r1, [r0]
	adds r1, r5, #0
	adds r1, #0x66
	movs r0, #0x80
	lsls r0, r0, #1
_0807430E:
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x63
	movs r4, #0
	movs r0, #5
	strb r0, [r1]
	ldr r0, [r5, #8]
	ldr r1, _080743F8 @ =0xA0000100
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0x68]
	ldr r1, _080743FC @ =0x20000103
	orrs r0, r1
	str r0, [r5, #0x68]
	adds r0, r6, #0
	adds r0, #0x50
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x50
	strh r1, [r0]
	movs r0, #2
	adds r1, r6, #0
	bl sub_0806FE64
	movs r2, #0xe
	rsbs r2, r2, #0
	movs r0, #0xe
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #0xe
	bl sub_0803E2B0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0x10
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #0x10
	bl sub_0803E308
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x10
	ldr r2, _08074400 @ =0x06012000
	ldr r3, _08074404 @ =0x000002BF
	str r4, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080708DC
	ldr r1, _08074408 @ =gKirbys
	ldr r0, _0807440C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080743F0
	ldrb r0, [r7]
	cmp r0, #0
	bne _080743B2
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080743F0
_080743B2:
	ldr r1, _08074410 @ =gUnk_08D60FA4
	ldr r4, _08074414 @ =gSongTable
	ldr r2, _08074418 @ =0x000004EC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080743D8
	movs r1, #0x9d
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080743F0
_080743D8:
	cmp r3, #0
	beq _080743EA
	ldr r0, _0807441C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080743F0
_080743EA:
	movs r0, #0x9d
	bl m4aSongNumStart
_080743F0:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080743F8: .4byte 0xA0000100
_080743FC: .4byte 0x20000103
_08074400: .4byte 0x06012000
_08074404: .4byte 0x000002BF
_08074408: .4byte gKirbys
_0807440C: .4byte gUnk_0203AD3C
_08074410: .4byte gUnk_08D60FA4
_08074414: .4byte gSongTable
_08074418: .4byte 0x000004EC
_0807441C: .4byte gUnk_0203AD10

	thumb_func_start sub_08074420
sub_08074420: @ 0x08074420
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08074458 @ =sub_080745C4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807445C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08074460
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08074468
	.align 2, 0
_08074458: .4byte sub_080745C4
_0807445C: .4byte sub_0803DCCC
_08074460:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08074468:
	adds r0, r4, #0
	bl sub_0803E380
	movs r0, #0
	mov r8, r0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	mov r1, r8
	strh r1, [r4, #4]
	adds r6, r5, #0
	adds r6, #0x60
	ldrh r1, [r6]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r7, r5, #0
	adds r7, #0x56
	ldrb r0, [r7]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08074598 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080744BC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080744BC:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x66
	movs r2, #0x80
	lsls r2, r2, #1
	mov sb, r2
	mov r1, sb
	strh r1, [r0]
	subs r0, #3
	strb r3, [r0]
	ldr r0, [r4, #8]
	ldr r1, _0807459C @ =0x10000100
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _080745A0 @ =0x20000103
	orrs r0, r1
	str r0, [r4, #0x68]
	strh r3, [r4, #4]
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	movs r1, #0x40
	rsbs r1, r1, #0
	movs r2, #0x4e
	rsbs r2, r2, #0
	movs r0, #0x32
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x40
	bl sub_0803E2B0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x10
	ldr r2, _080745A4 @ =0x06012000
	ldr r3, _080745A8 @ =0x0000029B
	mov r0, r8
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	ldr r1, _080745AC @ =gKirbys
	ldr r0, _080745B0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _08074588
	ldrb r0, [r5]
	cmp r0, #0
	bne _0807454A
	ldrb r0, [r7]
	cmp r0, r2
	bne _08074588
_0807454A:
	ldr r1, _080745B4 @ =gUnk_08D60FA4
	ldr r4, _080745B8 @ =gSongTable
	ldr r2, _080745BC @ =0x000009B4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08074570
	movs r1, #0x9b
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08074588
_08074570:
	cmp r3, #0
	beq _08074580
	ldr r0, _080745C0 @ =gUnk_0203AD10
	ldr r0, [r0]
	mov r2, sb
	ands r0, r2
	cmp r0, #0
	bne _08074588
_08074580:
	movs r0, #0x9b
	lsls r0, r0, #1
	bl m4aSongNumStart
_08074588:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08074598: .4byte gUnk_03000510
_0807459C: .4byte 0x10000100
_080745A0: .4byte 0x20000103
_080745A4: .4byte 0x06012000
_080745A8: .4byte 0x0000029B
_080745AC: .4byte gKirbys
_080745B0: .4byte gUnk_0203AD3C
_080745B4: .4byte gUnk_08D60FA4
_080745B8: .4byte gSongTable
_080745BC: .4byte 0x000009B4
_080745C0: .4byte gUnk_0203AD10

	thumb_func_start sub_080745C4
sub_080745C4: @ 0x080745C4
	push {r4, lr}
	ldr r0, _080745E0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080745E4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080745EC
	.align 2, 0
_080745E0: .4byte gCurTask
_080745E4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080745EC:
	adds r4, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08074668
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807460A
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r4, #8]
_0807460A:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08074644
	ldrb r2, [r4, #1]
	cmp r0, #2
	bne _0807462E
	cmp r2, #4
	bhi _08074626
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	b _0807462C
_08074626:
	ldr r0, [r4, #8]
	ldr r1, _08074640 @ =0xFFFFFDFF
	ands r0, r1
_0807462C:
	str r0, [r4, #8]
_0807462E:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bls _08074662
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	b _08074660
	.align 2, 0
_08074640: .4byte 0xFFFFFDFF
_08074644:
	ldrb r0, [r4, #1]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0807465A
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	b _08074660
_0807465A:
	ldr r0, [r4, #8]
	ldr r1, _08074670 @ =0xFFFFFDFF
	ands r0, r1
_08074660:
	str r0, [r4, #8]
_08074662:
	adds r0, r4, #0
	bl sub_0806F8BC
_08074668:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08074670: .4byte 0xFFFFFDFF

	thumb_func_start sub_08074674
sub_08074674: @ 0x08074674
	push {r4, lr}
	sub sp, #4
	ldr r0, _08074694 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08074698
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080746A0
	.align 2, 0
_08074694: .4byte gCurTask
_08074698:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080746A0:
	adds r4, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807473A
	ldr r1, [r4, #8]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _080746C0
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r4, #8]
_080746C0:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #4
	beq _080746D6
	cmp r0, #4
	ble _0807472E
	cmp r0, #8
	beq _080746FC
	cmp r0, #0xc
	beq _08074724
	b _0807472E
_080746D6:
	adds r0, r4, #0
	adds r0, #0x63
	strb r2, [r0]
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0x10
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0x10
	bl sub_0803E2B0
	ldr r0, [r4, #8]
	ldr r1, _080746F8 @ =0xFFFBFFFF
	ands r0, r1
	b _0807472C
	.align 2, 0
_080746F8: .4byte 0xFFFBFFFF
_080746FC:
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #1
	strb r0, [r1]
	movs r2, #0x14
	rsbs r2, r2, #0
	movs r0, #0x14
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0x14
	bl sub_0803E2B0
	ldr r0, [r4, #8]
	ldr r1, _08074720 @ =0xFFFBFFFF
	ands r0, r1
	b _0807472C
	.align 2, 0
_08074720: .4byte 0xFFFBFFFF
_08074724:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
_0807472C:
	str r0, [r4, #8]
_0807472E:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_0806F8BC
_0807473A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08074744
sub_08074744: @ 0x08074744
	push {r4, lr}
	sub sp, #4
	ldr r0, _08074764 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08074768
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08074770
	.align 2, 0
_08074764: .4byte gCurTask
_08074768:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08074770:
	adds r4, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08074856
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807478E
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r4, #8]
_0807478E:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #8
	bhi _0807484A
	lsls r0, r0, #2
	ldr r1, _080747A0 @ =_080747A4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080747A0: .4byte _080747A4
_080747A4: @ jump table
	.4byte _0807484A @ case 0
	.4byte _080747C8 @ case 1
	.4byte _0807484A @ case 2
	.4byte _080747F0 @ case 3
	.4byte _08074818 @ case 4
	.4byte _0807484A @ case 5
	.4byte _0807484A @ case 6
	.4byte _0807484A @ case 7
	.4byte _08074840 @ case 8
_080747C8:
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #2
	strb r0, [r1]
	movs r2, #0x12
	rsbs r2, r2, #0
	movs r0, #0x12
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0x12
	bl sub_0803E2B0
	ldr r0, [r4, #8]
	ldr r1, _080747EC @ =0xFFFBFFFF
	ands r0, r1
	b _08074848
	.align 2, 0
_080747EC: .4byte 0xFFFBFFFF
_080747F0:
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #1
	strb r0, [r1]
	movs r2, #0x18
	rsbs r2, r2, #0
	movs r0, #0x18
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0x18
	bl sub_0803E2B0
	ldr r0, [r4, #8]
	ldr r1, _08074814 @ =0xFFFBFFFF
	ands r0, r1
	b _08074848
	.align 2, 0
_08074814: .4byte 0xFFFBFFFF
_08074818:
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #1
	strb r0, [r1]
	movs r2, #0x1e
	rsbs r2, r2, #0
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0x1e
	bl sub_0803E2B0
	ldr r0, [r4, #8]
	ldr r1, _0807483C @ =0xFFFBFFFF
	ands r0, r1
	b _08074848
	.align 2, 0
_0807483C: .4byte 0xFFFBFFFF
_08074840:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
_08074848:
	str r0, [r4, #8]
_0807484A:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_0806F8BC
_08074856:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08074860
sub_08074860: @ 0x08074860
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08074890 @ =sub_08074950
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08074894 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08074898
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080748A0
	.align 2, 0
_08074890: .4byte sub_08074950
_08074894: .4byte sub_0803DCCC
_08074898:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080748A0:
	adds r0, r4, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08074944 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080748EE
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080748EE:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xc8
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	subs r1, #3
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _08074948 @ =0x20000100
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _0807494C @ =0x20001003
	orrs r0, r1
	str r0, [r4, #0x68]
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	movs r2, #0xf
	rsbs r2, r2, #0
	movs r0, #0xf
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0xf
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08074944: .4byte gUnk_03000510
_08074948: .4byte 0x20000100
_0807494C: .4byte 0x20001003

	thumb_func_start sub_08074950
sub_08074950: @ 0x08074950
	push {r4, lr}
	ldr r0, _0807496C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08074970
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08074978
	.align 2, 0
_0807496C: .4byte gCurTask
_08074970:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08074978:
	adds r4, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08074A0A
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0807499E
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _08074A0A
_0807499E:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08074A0A
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080749D0
	ldr r2, _080749C8 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080749CC @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080749D2
	.align 2, 0
_080749C8: .4byte gCurLevelInfo
_080749CC: .4byte 0x0000065E
_080749D0:
	movs r1, #0xff
_080749D2:
	cmp r1, #0xff
	beq _08074A0A
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08074A10 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08074A14 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08074A0A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08074A10: .4byte gUnk_02022EB0
_08074A14: .4byte gUnk_02022F50

	thumb_func_start sub_08074A18
sub_08074A18: @ 0x08074A18
	push {r4, lr}
	sub sp, #0x28
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08074A34
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08074A3C
_08074A34:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08074A3C:
	ldr r0, [r4, #0x70]
	adds r0, #0x56
	ldr r1, _08074AA8 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08074A50
	movs r0, #0xb5
	bl m4aSongNumStop
_08074A50:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r1, sp
	movs r3, #0
	movs r2, #0
	ldr r0, _08074AAC @ =0x00000111
	strh r0, [r1, #0xc]
	mov r0, sp
	strb r3, [r0, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r2, sp
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	add sp, #0x28
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08074AA8: .4byte gUnk_0203AD3C
_08074AAC: .4byte 0x00000111

	thumb_func_start sub_08074AB0
sub_08074AB0: @ 0x08074AB0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08074AE8 @ =sub_08074C1C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08074AEC @ =sub_08074A18
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08074AF0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08074AF8
	.align 2, 0
_08074AE8: .4byte sub_08074C1C
_08074AEC: .4byte sub_08074A18
_08074AF0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08074AF8:
	adds r0, r4, #0
	bl sub_0803E380
	movs r0, #0
	mov r8, r0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	mov r1, r8
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	movs r2, #0x56
	adds r2, r2, r5
	mov sb, r2
	ldrb r0, [r2]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, _08074C0C @ =gUnk_03000510
	mov ip, r0
	ldrb r1, [r0, #4]
	movs r6, #1
	adds r0, r6, #0
	ldrb r2, [r3]
	lsls r0, r2
	movs r7, #0x10
	orrs r0, r7
	ands r1, r0
	cmp r1, #0
	beq _08074B50
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_08074B50:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xa0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x66
	mov r1, r8
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #3
	strb r0, [r1]
	ldr r2, [r4, #8]
	ldr r0, _08074C10 @ =0xA0000100
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, _08074C14 @ =0xA0000403
	str r0, [r4, #0x68]
	mov r0, ip
	ldrb r1, [r0, #4]
	adds r0, r6, #0
	ldrb r3, [r3]
	lsls r0, r3
	orrs r0, r7
	ands r1, r0
	cmp r1, #0
	beq _08074B94
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r4, #8]
_08074B94:
	ldr r0, [r5, #8]
	ands r0, r6
	cmp r0, #0
	beq _08074BA2
	ldr r0, [r4, #8]
	orrs r0, r6
	str r0, [r4, #8]
_08074BA2:
	movs r1, #0x17
	rsbs r1, r1, #0
	movs r2, #0x14
	rsbs r2, r2, #0
	movs r0, #0x1a
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x17
	bl sub_0803E2B0
	movs r1, #0x1a
	rsbs r1, r1, #0
	movs r2, #0x16
	rsbs r2, r2, #0
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x1a
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	mov r0, sb
	ldrb r2, [r0]
	lsls r2, r2, #0xb
	ldr r0, _08074C18 @ =0x06010400
	adds r2, r2, r0
	movs r3, #0x8b
	lsls r3, r3, #1
	mov r0, r8
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2f
	strb r0, [r1]
	ldrh r0, [r5, #0x24]
	strh r0, [r4, #0x24]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08074C0C: .4byte gUnk_03000510
_08074C10: .4byte 0xA0000100
_08074C14: .4byte 0xA0000403
_08074C18: .4byte 0x06010400

	thumb_func_start sub_08074C1C
sub_08074C1C: @ 0x08074C1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	ldr r2, _08074C44 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08074C48
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08074C50
	.align 2, 0
_08074C44: .4byte gCurTask
_08074C48:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08074C50:
	adds r4, r0, #0
	ldr r7, [r4, #0x70]
	ldr r1, [r4, #8]
	movs r5, #0x80
	lsls r5, r5, #5
	adds r3, r1, #0
	ands r3, r5
	cmp r3, #0
	beq _08074C6A
	ldr r0, [r2]
	bl TaskDestroy
	b _0807528A
_08074C6A:
	adds r0, r7, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	beq _08074CC8
	orrs r1, r5
	str r1, [r4, #8]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r1, sp
	ldr r0, _08074CC4 @ =0x00000115
	strh r0, [r1, #0xc]
	movs r0, #3
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r3, [r0, #0x10]
	strh r3, [r0, #0x12]
	strh r3, [r0, #0x14]
	strh r3, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r2, sp
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	b _0807528A
	.align 2, 0
_08074CC4: .4byte 0x00000115
_08074CC8:
	ldr r0, [r7, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r4, #0x44]
	ldr r1, _08074D7C @ =gKirbys
	ldr r0, _08074D80 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r3, r7, #0
	adds r3, #0x56
	str r3, [sp, #0x30]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08074D2A
	ldrb r0, [r7]
	cmp r0, #0
	bne _08074CFE
	ldrb r0, [r3]
	cmp r0, r2
	bne _08074D2A
_08074CFE:
	ldr r1, _08074D84 @ =gUnk_08D60FA4
	ldr r3, _08074D88 @ =gSongTable
	ldr r5, _08074D8C @ =0x000005AC
	adds r0, r3, r5
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08074D24
	movs r1, #0xb5
	lsls r1, r1, #3
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhs _08074D2A
_08074D24:
	movs r0, #0xb5
	bl m4aSongNumStart
_08074D2A:
	ldr r0, _08074D90 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldr r5, [sp, #0x30]
	ldrb r5, [r5]
	lsls r0, r5
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _08074D44
	b _08074F24
_08074D44:
	ldr r2, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r2, r0
	cmp r2, #0
	beq _08074D52
	b _08074F24
_08074D52:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	str r1, [sp, #0x28]
	ldrb r1, [r4, #1]
	adds r6, r0, #0
	ldrb r7, [r7, #1]
	cmp r1, r7
	bne _08074D66
	strb r2, [r6]
_08074D66:
	ldr r0, [r4, #8]
	ands r0, r3
	cmp r0, #0
	beq _08074D94
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _08074D9E
	.align 2, 0
_08074D7C: .4byte gKirbys
_08074D80: .4byte gUnk_0203AD3C
_08074D84: .4byte gUnk_08D60FA4
_08074D88: .4byte gSongTable
_08074D8C: .4byte 0x000005AC
_08074D90: .4byte gUnk_03000510
_08074D94:
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	ldr r2, _08074E14 @ =0xFFFFFBFF
	ands r1, r2
_08074D9E:
	str r1, [r0, #8]
	mov r8, r0
	ldr r3, [r4, #8]
	movs r5, #8
	ands r5, r3
	cmp r5, #0
	bne _08074E2E
	adds r0, r4, #0
	adds r0, #0x2b
	adds r2, r4, #0
	adds r2, #0x2a
	ldrb r1, [r0]
	adds r7, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _08074DC6
	ldrh r0, [r4, #0x28]
	ldrh r2, [r4, #0x1c]
	cmp r0, r2
	beq _08074DD8
_08074DC6:
	ldrb r0, [r6]
	cmp r0, #0
	beq _08074DD8
	strb r5, [r4, #1]
	strh r5, [r4, #2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r4, #8]
_08074DD8:
	mov r0, r8
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08074E18
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08074E2E
	ldrb r0, [r6]
	cmp r0, #0
	beq _08074E2E
	movs r0, #0xff
	strb r0, [r7]
	ldr r0, [r4, #8]
	subs r1, #9
	ands r0, r1
	str r0, [r4, #8]
	strb r2, [r4, #1]
	strh r2, [r4, #2]
	mov r0, r8
	bl sub_08155128
	b _08074E2E
	.align 2, 0
_08074E14: .4byte 0xFFFFFBFF
_08074E18:
	ldrb r1, [r6]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_08074E2E:
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, _08074F14 @ =gCurLevelInfo
	ldr r7, _08074F18 @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov ip, r3
	mov r5, ip
	muls r5, r0, r5
	adds r0, r5, #0
	movs r3, #0xc
	adds r3, r3, r2
	mov sl, r3
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r5, r4, #0
	adds r5, #0x54
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	movs r1, #0
	mov sb, r1
	strh r0, [r4, #0x20]
	ldr r1, [r4, #0x44]
	asrs r1, r1, #8
	ldrb r0, [r7]
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x55
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	ldrb r0, [r6]
	cmp r0, #0
	beq _08074E90
	mov r0, sb
	strb r0, [r5]
	strb r0, [r3]
_08074E90:
	add r1, sp, #0x28
	ldrb r1, [r1]
	strb r1, [r6]
	ldrb r0, [r7]
	ldr r3, [sp, #0x30]
	ldrb r3, [r3]
	cmp r0, r3
	bne _08074EC2
	mov r1, ip
	muls r1, r0, r1
	add r1, sl
	ldr r0, [r4, #0x40]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x20]
	ldrb r0, [r7]
	mov r1, ip
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x44]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x22]
_08074EC2:
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	beq _08074ED0
	b _0807528A
_08074ED0:
	ldr r2, _08074F1C @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08074EEC
	b _0807528A
_08074EEC:
	ldr r1, _08074F20 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r5, [r4, #0x20]
	adds r0, r0, r5
	strh r0, [r4, #0x20]
	ldrh r0, [r1, #2]
	ldrh r1, [r4, #0x22]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _08074F0A
	b _0807526C
_08074F0A:
	mov r0, r8
	bl sub_0815604C
	b _0807528A
	.align 2, 0
_08074F14: .4byte gCurLevelInfo
_08074F18: .4byte gUnk_0203AD3C
_08074F1C: .4byte gKirbys
_08074F20: .4byte gUnk_0203AD18
_08074F24:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r7, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08074F3A
	b _08075054
_08074F3A:
	ldrb r0, [r4, #1]
	subs r0, #6
	cmp r0, #0xb
	bls _08074F44
	b _08075054
_08074F44:
	lsls r0, r0, #2
	ldr r1, _08074F50 @ =_08074F54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08074F50: .4byte _08074F54
_08074F54: @ jump table
	.4byte _08074F84 @ case 0
	.4byte _08074F9C @ case 1
	.4byte _08074FB4 @ case 2
	.4byte _08075008 @ case 3
	.4byte _08075054 @ case 4
	.4byte _08075054 @ case 5
	.4byte _08075054 @ case 6
	.4byte _08075054 @ case 7
	.4byte _08074F84 @ case 8
	.4byte _08074F9C @ case 9
	.4byte _08074FB4 @ case 10
	.4byte _08075008 @ case 11
_08074F84:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r1, sp
	movs r2, #0
	ldr r0, _08074F98 @ =0x00000115
	strh r0, [r1, #0xc]
	movs r0, #4
	b _08074FC4
	.align 2, 0
_08074F98: .4byte 0x00000115
_08074F9C:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r1, sp
	movs r2, #0
	ldr r0, _08074FB0 @ =0x00000115
	strh r0, [r1, #0xc]
	movs r0, #5
	b _08074FC4
	.align 2, 0
_08074FB0: .4byte 0x00000115
_08074FB4:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r1, sp
	movs r2, #0
	ldr r0, _08075004 @ =0x00000115
	strh r0, [r1, #0xc]
	movs r0, #6
_08074FC4:
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r2, sp
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	b _08075054
	.align 2, 0
_08075004: .4byte 0x00000115
_08075008:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r1, sp
	movs r2, #0
	ldr r0, _08075080 @ =0x00000115
	strh r0, [r1, #0xc]
	movs r0, #3
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r2, sp
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
_08075054:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080750C6
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0807508C
	ldr r2, _08075084 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _08075088 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _0807508E
	.align 2, 0
_08075080: .4byte 0x00000115
_08075084: .4byte gCurLevelInfo
_08075088: .4byte 0x0000065E
_0807508C:
	movs r1, #0xff
_0807508E:
	cmp r1, #0xff
	beq _080750C6
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080750F4 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r5, [r4]
	adds r1, r1, r5
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080750F8 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080750C6:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	str r1, [sp, #0x2c]
	ldrb r1, [r4, #1]
	adds r6, r0, #0
	ldrb r7, [r7, #1]
	cmp r1, r7
	bne _080750DC
	movs r0, #0
	strb r0, [r6]
_080750DC:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080750FC
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _08075106
	.align 2, 0
_080750F4: .4byte gUnk_02022EB0
_080750F8: .4byte gUnk_02022F50
_080750FC:
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	ldr r2, _0807517C @ =0xFFFFFBFF
	ands r1, r2
_08075106:
	str r1, [r0, #8]
	mov r8, r0
	ldr r3, [r4, #8]
	movs r5, #8
	ands r5, r3
	cmp r5, #0
	bne _08075196
	adds r0, r4, #0
	adds r0, #0x2b
	adds r2, r4, #0
	adds r2, #0x2a
	ldrb r1, [r0]
	adds r7, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _0807512E
	ldrh r0, [r4, #0x28]
	ldrh r2, [r4, #0x1c]
	cmp r0, r2
	beq _08075140
_0807512E:
	ldrb r0, [r6]
	cmp r0, #0
	beq _08075140
	strb r5, [r4, #1]
	strh r5, [r4, #2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r4, #8]
_08075140:
	mov r0, r8
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08075180
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08075196
	ldrb r0, [r6]
	cmp r0, #0
	beq _08075196
	movs r0, #0xff
	strb r0, [r7]
	ldr r0, [r4, #8]
	subs r1, #9
	ands r0, r1
	str r0, [r4, #8]
	strb r2, [r4, #1]
	strh r2, [r4, #2]
	mov r0, r8
	bl sub_08155128
	b _08075196
	.align 2, 0
_0807517C: .4byte 0xFFFFFBFF
_08075180:
	ldrb r1, [r6]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_08075196:
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, _08075274 @ =gCurLevelInfo
	ldr r7, _08075278 @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov ip, r3
	mov r5, ip
	muls r5, r0, r5
	adds r0, r5, #0
	movs r3, #0xc
	adds r3, r3, r2
	mov sl, r3
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r5, r4, #0
	adds r5, #0x54
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	movs r1, #0
	mov sb, r1
	strh r0, [r4, #0x20]
	ldr r1, [r4, #0x44]
	asrs r1, r1, #8
	ldrb r0, [r7]
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x55
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	ldrb r0, [r6]
	cmp r0, #0
	beq _080751F8
	mov r0, sb
	strb r0, [r5]
	strb r0, [r3]
_080751F8:
	add r1, sp, #0x2c
	ldrb r1, [r1]
	strb r1, [r6]
	ldrb r0, [r7]
	ldr r3, [sp, #0x30]
	ldrb r3, [r3]
	cmp r0, r3
	bne _0807522A
	mov r1, ip
	muls r1, r0, r1
	add r1, sl
	ldr r0, [r4, #0x40]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x20]
	ldrb r0, [r7]
	mov r1, ip
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x44]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x22]
_0807522A:
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _0807528A
	ldr r2, _0807527C @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807528A
	ldr r1, _08075280 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r5, [r4, #0x20]
	adds r0, r0, r5
	strh r0, [r4, #0x20]
	ldrh r0, [r1, #2]
	ldrh r1, [r4, #0x22]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _08075284
_0807526C:
	mov r0, r8
	bl sub_081564D8
	b _0807528A
	.align 2, 0
_08075274: .4byte gCurLevelInfo
_08075278: .4byte gUnk_0203AD3C
_0807527C: .4byte gKirbys
_08075280: .4byte gUnk_0203AD18
_08075284:
	mov r0, r8
	bl sub_0815604C
_0807528A:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807529C
sub_0807529C: @ 0x0807529C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080752CC @ =sub_080753CC
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080752D0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080752D4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080752DC
	.align 2, 0
_080752CC: .4byte sub_080753CC
_080752D0: .4byte sub_0803DCCC
_080752D4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080752DC:
	adds r0, r4, #0
	bl sub_0803E380
	movs r7, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r7, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r6, r5, #0
	adds r6, #0x56
	ldrb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080753B8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807532A
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0807532A:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x66
	strh r7, [r0]
	subs r1, #1
	movs r0, #6
	strb r0, [r1]
	ldr r2, [r4, #8]
	ldr r0, _080753BC @ =0xA0000100
	orrs r2, r0
	ldr r0, [r4, #0x68]
	ldr r1, _080753C0 @ =0x30002003
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #0x68]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	str r2, [r4, #8]
	str r7, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E2B0
	str r7, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	ldrb r2, [r6]
	lsls r2, r2, #0xb
	ldr r0, _080753C4 @ =0x06010400
	adds r2, r2, r0
	ldr r0, _080753C8 @ =gUnk_0834FF14
	ldrh r3, [r0]
	ldrb r0, [r0, #2]
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	ldrb r0, [r6]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2f
	strb r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
	ldrh r0, [r5, #0x24]
	strh r0, [r4, #0x24]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080753B8: .4byte gUnk_03000510
_080753BC: .4byte 0xA0000100
_080753C0: .4byte 0x30002003
_080753C4: .4byte 0x06010400
_080753C8: .4byte gUnk_0834FF14

	thumb_func_start sub_080753CC
sub_080753CC: @ 0x080753CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	mov r8, r0
	ldr r2, _080753F8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080753FC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08075404
	.align 2, 0
_080753F8: .4byte gCurTask
_080753FC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08075404:
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x10
	ldr r6, [r4, #0x70]
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _08075422
	ldr r0, [r2]
	bl TaskDestroy
	bl _08075D96
_08075422:
	ldr r1, _08075468 @ =0xFFFFDBFE
	ands r1, r3
	str r1, [r4, #8]
	ldr r0, [r6, #8]
	ldr r2, _0807546C @ =0x00002405
	ands r0, r2
	orrs r1, r0
	str r1, [r4, #8]
	adds r2, r6, #0
	adds r2, #0x60
	ldrh r1, [r2]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r0, [r6, #0x24]
	subs r0, #0x40
	strh r0, [r4, #0x24]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	ldr r0, [r6, #8]
	ands r0, r1
	str r2, [sp, #0xc]
	cmp r0, #0
	beq _08075470
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0
	b _0807547E
	.align 2, 0
_08075468: .4byte 0xFFFFDBFE
_0807546C: .4byte 0x00002405
_08075470:
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r0, [r0]
_0807547E:
	strb r0, [r1]
	mov sb, r1
	ldr r1, _0807549C @ =0x00000103
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _080754A0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	bl _08075D96
	.align 2, 0
_0807549C: .4byte 0x00000103
_080754A0:
	ldr r0, _080754F8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r6, #0
	adds r3, #0x56
	movs r5, #1
	adds r0, r5, #0
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	str r3, [sp, #8]
	cmp r2, #0
	bne _080754BE
	b _08075690
_080754BE:
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	beq _080754CC
	b _08075690
_080754CC:
	mov r2, sb
	ldrb r2, [r2]
	str r2, [sp, #4]
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	bne _080754DC
	bl _08075D96
_080754DC:
	mov r3, sb
	strb r1, [r3]
	ldr r0, [r4, #8]
	ands r0, r5
	cmp r0, #0
	beq _080754FC
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _08075506
	.align 2, 0
_080754F8: .4byte gUnk_03000510
_080754FC:
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	ldr r2, _08075580 @ =0xFFFFFBFF
	ands r1, r2
_08075506:
	str r1, [r0, #8]
	mov r8, r0
	ldr r3, [r4, #8]
	movs r5, #8
	ands r5, r3
	cmp r5, #0
	bne _0807559C
	adds r0, r4, #0
	adds r0, #0x2b
	adds r2, r4, #0
	adds r2, #0x2a
	ldrb r1, [r0]
	adds r7, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _0807552E
	ldrh r0, [r4, #0x28]
	ldrh r1, [r4, #0x1c]
	cmp r0, r1
	beq _08075542
_0807552E:
	mov r2, sb
	ldrb r0, [r2]
	cmp r0, #0
	beq _08075542
	strb r5, [r4, #1]
	strh r5, [r4, #2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r4, #8]
_08075542:
	mov r0, r8
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08075584
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0807559C
	mov r3, sb
	ldrb r0, [r3]
	cmp r0, #0
	beq _0807559C
	movs r0, #0xff
	strb r0, [r7]
	ldr r0, [r4, #8]
	subs r1, #9
	ands r0, r1
	str r0, [r4, #8]
	strb r2, [r4, #1]
	strh r2, [r4, #2]
	mov r0, r8
	bl sub_08155128
	b _0807559C
	.align 2, 0
_08075580: .4byte 0xFFFFFBFF
_08075584:
	mov r0, sb
	ldrb r1, [r0]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_0807559C:
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, _08075678 @ =gCurLevelInfo
	ldr r6, _0807567C @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r7, #0xcd
	lsls r7, r7, #3
	muls r0, r7, r0
	movs r3, #0xc
	adds r3, r3, r2
	mov sl, r3
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r5, r4, #0
	adds r5, #0x54
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	movs r1, #0
	mov ip, r1
	strh r0, [r4, #0x20]
	ldr r1, [r4, #0x44]
	asrs r1, r1, #8
	ldrb r0, [r6]
	muls r0, r7, r0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x55
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _080755F6
	mov r0, ip
	strb r0, [r5]
	strb r0, [r3]
_080755F6:
	mov r1, sp
	ldrb r3, [r1, #4]
	mov r1, sb
	strb r3, [r1]
	ldrb r0, [r6]
	ldr r1, [sp, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0807562A
	adds r1, r0, #0
	muls r1, r7, r1
	add r1, sl
	ldr r0, [r4, #0x40]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x20]
	ldrb r0, [r6]
	adds r1, r0, #0
	muls r1, r7, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x44]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x22]
_0807562A:
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	beq _08075638
	b _08075D96
_08075638:
	ldr r2, _08075680 @ =gKirbys
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08075654
	b _08075D96
_08075654:
	ldr r1, _08075684 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r4, #0x20]
	adds r0, r0, r2
	strh r0, [r4, #0x20]
	ldrh r0, [r1, #2]
	ldrh r1, [r4, #0x22]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _08075688
	mov r0, r8
	bl sub_081564D8
	b _08075D96
	.align 2, 0
_08075678: .4byte gCurLevelInfo
_0807567C: .4byte gUnk_0203AD3C
_08075680: .4byte gKirbys
_08075684: .4byte gUnk_0203AD18
_08075688:
	mov r0, r8
	bl sub_0815604C
	b _08075D96
_08075690:
	ldr r5, _080756F0 @ =gUnk_0834FF14
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	lsls r1, r1, #2
	adds r2, r1, r5
	ldrh r3, [r2]
	ldrh r1, [r7, #0xc]
	str r0, [sp, #0x10]
	cmp r1, r3
	bne _080756B0
	ldrb r0, [r7, #0x1a]
	ldrb r2, [r2, #2]
	cmp r0, r2
	bne _080756B0
	b _08075938
_080756B0:
	movs r2, #1
	mov r8, r2
	strh r3, [r7, #0xc]
	ldr r3, [sp, #0x10]
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0, #2]
	strb r0, [r7, #0x1a]
	ldrh r0, [r3]
	cmp r0, #0x5a
	bne _080756D8
	adds r1, r0, #0
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r2, [sp, #8]
	ldrb r0, [r2]
	ldrb r1, [r1, #2]
	adds r0, r0, r1
	strb r0, [r7, #0x1a]
_080756D8:
	ldr r3, [sp, #0x10]
	ldrh r0, [r3]
	subs r0, #0x35
	cmp r0, #0x3b
	bls _080756E4
	b _08075918
_080756E4:
	lsls r0, r0, #2
	ldr r1, _080756F4 @ =_080756F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080756F0: .4byte gUnk_0834FF14
_080756F4: .4byte _080756F8
_080756F8: @ jump table
	.4byte _08075898 @ case 0
	.4byte _08075918 @ case 1
	.4byte _08075918 @ case 2
	.4byte _08075918 @ case 3
	.4byte _08075918 @ case 4
	.4byte _08075918 @ case 5
	.4byte _08075918 @ case 6
	.4byte _08075918 @ case 7
	.4byte _08075918 @ case 8
	.4byte _08075918 @ case 9
	.4byte _08075918 @ case 10
	.4byte _08075918 @ case 11
	.4byte _08075918 @ case 12
	.4byte _08075898 @ case 13
	.4byte _08075918 @ case 14
	.4byte _08075918 @ case 15
	.4byte _08075918 @ case 16
	.4byte _08075918 @ case 17
	.4byte _08075918 @ case 18
	.4byte _08075918 @ case 19
	.4byte _08075918 @ case 20
	.4byte _08075918 @ case 21
	.4byte _08075918 @ case 22
	.4byte _08075918 @ case 23
	.4byte _08075918 @ case 24
	.4byte _08075918 @ case 25
	.4byte _08075918 @ case 26
	.4byte _08075918 @ case 27
	.4byte _08075918 @ case 28
	.4byte _08075918 @ case 29
	.4byte _08075918 @ case 30
	.4byte _08075918 @ case 31
	.4byte _08075918 @ case 32
	.4byte _08075918 @ case 33
	.4byte _08075918 @ case 34
	.4byte _08075918 @ case 35
	.4byte _08075918 @ case 36
	.4byte _08075918 @ case 37
	.4byte _08075918 @ case 38
	.4byte _08075918 @ case 39
	.4byte _08075918 @ case 40
	.4byte _08075918 @ case 41
	.4byte _08075918 @ case 42
	.4byte _08075918 @ case 43
	.4byte _08075918 @ case 44
	.4byte _08075918 @ case 45
	.4byte _08075918 @ case 46
	.4byte _08075918 @ case 47
	.4byte _08075918 @ case 48
	.4byte _08075918 @ case 49
	.4byte _08075918 @ case 50
	.4byte _080757E8 @ case 51
	.4byte _080757E8 @ case 52
	.4byte _080758F2 @ case 53
	.4byte _08075918 @ case 54
	.4byte _08075918 @ case 55
	.4byte _08075918 @ case 56
	.4byte _08075918 @ case 57
	.4byte _080758B0 @ case 58
	.4byte _080758DC @ case 59
_080757E8:
	adds r1, r4, #0
	adds r1, #0x64
	movs r2, #0
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x66
	strh r2, [r0]
	subs r1, #1
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _08075878 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _0807587C @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r4, #0x68]
	ldr r1, _08075880 @ =gKirbys
	ldr r0, _08075884 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r1, [sp, #0xc]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08075918
	ldrb r0, [r6]
	cmp r0, #0
	bne _08075838
	ldr r3, [sp, #8]
	ldrb r0, [r3]
	cmp r0, r2
	bne _08075918
_08075838:
	ldr r1, _08075888 @ =gUnk_08D60FA4
	ldr r5, _0807588C @ =gSongTable
	ldr r2, _08075890 @ =0x00000614
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807585E
	movs r1, #0xc2
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08075918
_0807585E:
	cmp r3, #0
	beq _08075870
	ldr r0, _08075894 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08075918
_08075870:
	movs r0, #0xc2
	bl m4aSongNumStart
	b _08075918
	.align 2, 0
_08075878: .4byte 0xFFFBFFFF
_0807587C: .4byte 0x7FFFFFFF
_08075880: .4byte gKirbys
_08075884: .4byte gUnk_0203AD3C
_08075888: .4byte gUnk_08D60FA4
_0807588C: .4byte gSongTable
_08075890: .4byte 0x00000614
_08075894: .4byte gUnk_0203AD10
_08075898:
	adds r1, r4, #0
	adds r1, #0x64
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x66
	strh r2, [r0]
	subs r1, #1
	movs r0, #6
	b _08075906
_080758B0:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0x80
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xc0
	strh r0, [r1]
	subs r1, #3
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _080758D8 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	b _08075916
	.align 2, 0
_080758D8: .4byte 0xFFFBFFFF
_080758DC:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #2
	subs r0, #0xc0
	strh r0, [r1]
	subs r1, #3
	movs r0, #6
	b _08075906
_080758F2:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0x80
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	subs r1, #3
	movs r0, #2
_08075906:
	strb r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _08075990 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _08075994 @ =0x7EFFFFFF
	ands r0, r1
_08075916:
	str r0, [r4, #0x68]
_08075918:
	ldr r2, [sp, #0x10]
	ldrh r0, [r2]
	subs r0, #0x68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08075938
	ldr r1, _08075998 @ =gUnk_0203AD3C
	ldr r3, [sp, #8]
	ldrb r0, [r3]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08075938
	movs r0, #0xc2
	bl m4aSongNumStop
_08075938:
	ldrh r0, [r7, #0xc]
	cmp r0, #0
	bne _08075940
	b _08075D96
_08075940:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _08075976
	ldr r0, [r4, #8]
	ldr r1, _0807599C @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #0x26
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0807595C
	mov r2, r8
	cmp r2, #0
	beq _08075976
_0807595C:
	ldr r0, [r6, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0807596C
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
_0807596C:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
_08075976:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080759A0
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _080759AA
	.align 2, 0
_08075990: .4byte 0xFFFBFFFF
_08075994: .4byte 0x7EFFFFFF
_08075998: .4byte gUnk_0203AD3C
_0807599C: .4byte 0xFFFFFDFF
_080759A0:
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	ldr r2, _08075A24 @ =0xFFFFFBFF
	ands r1, r2
_080759AA:
	str r1, [r0, #8]
	mov r8, r0
	ldr r3, [r4, #8]
	movs r5, #8
	ands r5, r3
	cmp r5, #0
	bne _08075A40
	adds r0, r4, #0
	adds r0, #0x2b
	adds r2, r4, #0
	adds r2, #0x2a
	ldrb r1, [r0]
	adds r7, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _080759D2
	ldrh r0, [r4, #0x28]
	ldrh r1, [r4, #0x1c]
	cmp r0, r1
	beq _080759E6
_080759D2:
	mov r2, sb
	ldrb r0, [r2]
	cmp r0, #0
	beq _080759E6
	strb r5, [r4, #1]
	strh r5, [r4, #2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r4, #8]
_080759E6:
	mov r0, r8
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08075A28
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08075A40
	mov r3, sb
	ldrb r0, [r3]
	cmp r0, #0
	beq _08075A40
	movs r0, #0xff
	strb r0, [r7]
	ldr r0, [r4, #8]
	subs r1, #9
	ands r0, r1
	str r0, [r4, #8]
	strb r2, [r4, #1]
	strh r2, [r4, #2]
	mov r0, r8
	bl sub_08155128
	b _08075A40
	.align 2, 0
_08075A24: .4byte 0xFFFFFBFF
_08075A28:
	mov r0, sb
	ldrb r1, [r0]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_08075A40:
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, _08075B18 @ =gCurLevelInfo
	ldr r7, _08075B1C @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov ip, r3
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r3, _08075B20 @ =gCurLevelInfo+0xC
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r5, r4, #0
	adds r5, #0x54
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	movs r1, #0
	mov sl, r1
	strh r0, [r4, #0x20]
	ldr r1, [r4, #0x44]
	asrs r1, r1, #8
	ldrb r0, [r7]
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x55
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _08075AA0
	mov r0, sl
	strb r0, [r5]
	strb r0, [r3]
_08075AA0:
	ldrb r0, [r7]
	ldr r1, [sp, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08075ACE
	mov r1, ip
	muls r1, r0, r1
	ldr r3, _08075B20 @ =gCurLevelInfo+0xC
	adds r1, r1, r3
	ldr r0, [r4, #0x40]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x20]
	ldrb r0, [r7]
	mov r1, ip
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x44]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x22]
_08075ACE:
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _08075B32
	ldr r2, _08075B24 @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08075B32
	ldr r1, _08075B28 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r4, #0x20]
	adds r0, r0, r2
	strh r0, [r4, #0x20]
	ldrh r0, [r1, #2]
	ldrh r1, [r4, #0x22]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _08075B2C
	mov r0, r8
	bl sub_081564D8
	b _08075B32
	.align 2, 0
_08075B18: .4byte gCurLevelInfo
_08075B1C: .4byte gUnk_0203AD3C
_08075B20: .4byte gCurLevelInfo+0xC
_08075B24: .4byte gKirbys
_08075B28: .4byte gUnk_0203AD18
_08075B2C:
	mov r0, r8
	bl sub_0815604C
_08075B32:
	ldr r2, [sp, #0x10]
	ldrh r0, [r2]
	cmp r0, #0x6c
	bne _08075B72
	ldrb r0, [r6, #1]
	cmp r0, #0xc
	bne _08075B72
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08075BD4 @ =0x0000FC80
	strh r0, [r1]
	subs r1, #3
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r4, #0x68]
	ldr r1, _08075BD8 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08075B72
	ldr r0, [r4, #8]
	ldr r1, _08075BDC @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
_08075B72:
	ldr r1, [r4, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08075B7E
	b _08075D1A
_08075B7E:
	ldr r2, [r4, #8]
	ldr r0, _08075BE0 @ =0xFFFFFDFF
	ands r2, r0
	str r2, [r4, #8]
	ldr r3, [sp, #0x10]
	ldrh r0, [r3]
	subs r0, #0x68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08075BAC
	ldrb r0, [r6, #1]
	cmp r0, #9
	bne _08075BAC
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08075BAC
	ldr r0, _08075BDC @ =0xFFFBFFFF
	ands r2, r0
	str r2, [r4, #8]
_08075BAC:
	ldr r1, [sp, #0x10]
	ldrh r0, [r1]
	cmp r0, #0x6f
	bne _08075CAE
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08075CAE
	ldrb r0, [r6, #1]
	subs r0, #4
	cmp r0, #0x15
	bhi _08075CAE
	lsls r0, r0, #2
	ldr r1, _08075BE4 @ =_08075BE8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08075BD4: .4byte 0x0000FC80
_08075BD8: .4byte 0x7FFFFFFF
_08075BDC: .4byte 0xFFFBFFFF
_08075BE0: .4byte 0xFFFFFDFF
_08075BE4: .4byte _08075BE8
_08075BE8: @ jump table
	.4byte _08075C40 @ case 0
	.4byte _08075CAE @ case 1
	.4byte _08075CAE @ case 2
	.4byte _08075C40 @ case 3
	.4byte _08075CAE @ case 4
	.4byte _08075CAE @ case 5
	.4byte _08075C40 @ case 6
	.4byte _08075CAE @ case 7
	.4byte _08075CAE @ case 8
	.4byte _08075C40 @ case 9
	.4byte _08075CAE @ case 10
	.4byte _08075CAE @ case 11
	.4byte _08075C40 @ case 12
	.4byte _08075CAE @ case 13
	.4byte _08075CAE @ case 14
	.4byte _08075C40 @ case 15
	.4byte _08075CAE @ case 16
	.4byte _08075CAE @ case 17
	.4byte _08075C40 @ case 18
	.4byte _08075CAE @ case 19
	.4byte _08075CAE @ case 20
	.4byte _08075C40 @ case 21
_08075C40:
	ldr r0, [r4, #8]
	ldr r1, _08075CD8 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _08075CDC @ =gKirbys
	ldr r0, _08075CE0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r3, [sp, #0xc]
	ldrh r3, [r3]
	cmp r0, r3
	bne _08075CAE
	ldrb r0, [r6]
	cmp r0, #0
	bne _08075C70
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	cmp r0, r2
	bne _08075CAE
_08075C70:
	ldr r1, _08075CE4 @ =gUnk_08D60FA4
	ldr r5, _08075CE8 @ =gSongTable
	ldr r2, _08075CEC @ =0x0000061C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08075C96
	movs r1, #0xc3
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08075CAE
_08075C96:
	cmp r3, #0
	beq _08075CA8
	ldr r0, _08075CF0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08075CAE
_08075CA8:
	movs r0, #0xc3
	bl m4aSongNumStart
_08075CAE:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08075CF4
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r1, [r0]
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	subs r0, #1
	ldrb r3, [r0]
	rsbs r3, r3, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, #3
	b _08075D0A
	.align 2, 0
_08075CD8: .4byte 0xFFFBFFFF
_08075CDC: .4byte gKirbys
_08075CE0: .4byte gUnk_0203AD3C
_08075CE4: .4byte gUnk_08D60FA4
_08075CE8: .4byte gSongTable
_08075CEC: .4byte 0x0000061C
_08075CF0: .4byte gUnk_0203AD10
_08075CF4:
	adds r0, r4, #0
	adds r0, #0x34
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, #1
_08075D0A:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0803E308
	b _08075D2A
_08075D1A:
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
_08075D2A:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08075D96
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08075D5C
	ldr r2, _08075D54 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _08075D58 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _08075D5E
	.align 2, 0
_08075D54: .4byte gCurLevelInfo
_08075D58: .4byte 0x0000065E
_08075D5C:
	movs r1, #0xff
_08075D5E:
	cmp r1, #0xff
	beq _08075D96
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08075DA8 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08075DAC @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08075D96:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08075DA8: .4byte gUnk_02022EB0
_08075DAC: .4byte gUnk_02022F50

	thumb_func_start sub_08075DB0
sub_08075DB0: @ 0x08075DB0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08075DE0 @ =sub_08075EDC
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08075DE4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08075DE8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08075DF0
	.align 2, 0
_08075DE0: .4byte sub_08075EDC
_08075DE4: .4byte sub_0803DCCC
_08075DE8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08075DF0:
	adds r0, r4, #0
	bl sub_0803E380
	movs r6, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r6, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r5, #0x56
	ldrb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08075EC8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08075E3C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_08075E3C:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x66
	strh r6, [r0]
	subs r1, #1
	movs r0, #8
	strb r0, [r1]
	ldr r2, [r4, #8]
	ldr r0, _08075ECC @ =0xA0000100
	orrs r2, r0
	ldr r0, [r4, #0x68]
	ldr r1, _08075ED0 @ =0x30007103
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #0x68]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	str r2, [r4, #8]
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E2B0
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	ldrb r2, [r5]
	lsls r2, r2, #0xb
	ldr r0, _08075ED4 @ =0x06010400
	adds r2, r2, r0
	ldr r0, _08075ED8 @ =gUnk_083500D8
	ldrh r3, [r0]
	ldrb r0, [r0, #2]
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	ldrb r0, [r5]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2f
	strb r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08075EC8: .4byte gUnk_03000510
_08075ECC: .4byte 0xA0000100
_08075ED0: .4byte 0x30007103
_08075ED4: .4byte 0x06010400
_08075ED8: .4byte gUnk_083500D8

	thumb_func_start sub_08075EDC
sub_08075EDC: @ 0x08075EDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r2, _08075F04 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08075F08
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08075F10
	.align 2, 0
_08075F04: .4byte gCurTask
_08075F08:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08075F10:
	adds r4, r0, #0
	movs r0, #0x10
	adds r0, r0, r4
	mov r8, r0
	ldr r6, [r4, #0x70]
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _08075F30
	ldr r0, [r2]
	bl TaskDestroy
	bl _08076A46
_08075F30:
	ldr r1, _08075F70 @ =0xFFFFDBFE
	ands r1, r3
	str r1, [r4, #8]
	ldr r0, [r6, #8]
	ldr r2, _08075F74 @ =0x00002405
	ands r0, r2
	orrs r1, r0
	str r1, [r4, #8]
	adds r2, r6, #0
	adds r2, #0x60
	ldrh r1, [r2]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	ldrh r0, [r6, #0x24]
	subs r0, #0x40
	strh r0, [r4, #0x24]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	str r2, [sp, #0xc]
	cmp r0, #0
	beq _08075F78
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0
	b _08075F86
	.align 2, 0
_08075F70: .4byte 0xFFFFDBFE
_08075F74: .4byte 0x00002405
_08075F78:
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r0, [r0]
_08075F86:
	strb r0, [r1]
	mov sl, r1
	ldr r1, _08075FB8 @ =0x00000103
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0x1a
	beq _08075FC0
	adds r0, r6, #0
	adds r0, #0x56
	ldr r1, _08075FBC @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08075FA8
	movs r0, #0xe5
	bl m4aSongNumStop
_08075FA8:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	bl _08076A46
	.align 2, 0
_08075FB8: .4byte 0x00000103
_08075FBC: .4byte gUnk_0203AD3C
_08075FC0:
	ldr r0, _08076018 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r6, #0
	adds r3, #0x56
	movs r5, #1
	adds r0, r5, #0
	ldrb r7, [r3]
	lsls r0, r7
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	str r3, [sp, #8]
	cmp r2, #0
	bne _08075FDE
	b _080761BA
_08075FDE:
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	beq _08075FEC
	b _080761BA
_08075FEC:
	mov r0, sl
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	bne _08075FFC
	bl _08076A46
_08075FFC:
	mov r2, sl
	strb r1, [r2]
	ldr r0, [r4, #8]
	ands r0, r5
	cmp r0, #0
	beq _0807601C
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _08076026
	.align 2, 0
_08076018: .4byte gUnk_03000510
_0807601C:
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	ldr r2, _080760A0 @ =0xFFFFFBFF
	ands r1, r2
_08076026:
	str r1, [r0, #8]
	mov r8, r0
	ldr r3, [r4, #8]
	movs r5, #8
	ands r5, r3
	cmp r5, #0
	bne _080760BC
	adds r0, r4, #0
	adds r0, #0x2b
	adds r2, r4, #0
	adds r2, #0x2a
	ldrb r1, [r0]
	adds r7, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _0807604E
	ldrh r0, [r4, #0x28]
	ldrh r1, [r4, #0x1c]
	cmp r0, r1
	beq _08076062
_0807604E:
	mov r2, sl
	ldrb r0, [r2]
	cmp r0, #0
	beq _08076062
	strb r5, [r4, #1]
	strh r5, [r4, #2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r4, #8]
_08076062:
	mov r0, r8
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _080760A4
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080760BC
	mov r3, sl
	ldrb r0, [r3]
	cmp r0, #0
	beq _080760BC
	movs r0, #0xff
	strb r0, [r7]
	ldr r0, [r4, #8]
	subs r1, #9
	ands r0, r1
	str r0, [r4, #8]
	strb r2, [r4, #1]
	strh r2, [r4, #2]
	mov r0, r8
	bl sub_08155128
	b _080760BC
	.align 2, 0
_080760A0: .4byte 0xFFFFFBFF
_080760A4:
	mov r7, sl
	ldrb r1, [r7]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080760BC:
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, _080761A0 @ =gCurLevelInfo
	ldr r6, _080761A4 @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r7, #0xcd
	lsls r7, r7, #3
	muls r0, r7, r0
	movs r3, #0xc
	adds r3, r3, r2
	mov sb, r3
	add r0, sb
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r5, r4, #0
	adds r5, #0x54
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	movs r1, #0
	mov ip, r1
	strh r0, [r4, #0x20]
	ldr r1, [r4, #0x44]
	asrs r1, r1, #8
	ldrb r0, [r6]
	muls r0, r7, r0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x55
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	beq _08076116
	mov r0, ip
	strb r0, [r5]
	strb r0, [r3]
_08076116:
	mov r1, sp
	ldrb r3, [r1, #4]
	mov r1, sl
	strb r3, [r1]
	ldrb r0, [r6]
	ldr r1, [sp, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0807614A
	adds r1, r0, #0
	muls r1, r7, r1
	add r1, sb
	ldr r0, [r4, #0x40]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x20]
	ldrb r0, [r6]
	adds r1, r0, #0
	muls r1, r7, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x44]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x22]
_0807614A:
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	beq _0807615A
	bl _08076A46
_0807615A:
	ldr r2, _080761A8 @ =gKirbys
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08076178
	bl _08076A46
_08076178:
	ldr r1, _080761AC @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r4, #0x20]
	adds r0, r0, r2
	strh r0, [r4, #0x20]
	ldrh r0, [r1, #2]
	ldrh r7, [r4, #0x22]
	adds r0, r0, r7
	strh r0, [r4, #0x22]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _080761B0
	mov r0, r8
	bl sub_081564D8
	bl _08076A46
	.align 2, 0
_080761A0: .4byte gCurLevelInfo
_080761A4: .4byte gUnk_0203AD3C
_080761A8: .4byte gKirbys
_080761AC: .4byte gUnk_0203AD18
_080761B0:
	mov r0, r8
	bl sub_0815604C
	bl _08076A46
_080761BA:
	ldr r0, _08076214 @ =gUnk_083500D8
	mov sb, r0
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r5, [r0]
	lsls r1, r5, #2
	mov r3, sb
	adds r2, r1, r3
	ldrh r3, [r2]
	mov r7, r8
	ldrh r1, [r7, #0xc]
	str r0, [sp, #0x10]
	cmp r1, r3
	bne _080761E0
	ldrb r0, [r7, #0x1a]
	ldrb r2, [r2, #2]
	cmp r0, r2
	bne _080761E0
	b _080765AC
_080761E0:
	mov r0, r8
	strh r3, [r0, #0xc]
	ldr r1, [sp, #0x10]
	ldrh r0, [r1]
	lsls r0, r0, #2
	add r0, sb
	ldrb r0, [r0, #2]
	mov r2, r8
	strb r0, [r2, #0x1a]
	ldrh r0, [r1]
	cmp r0, #0x5a
	bne _08076208
	adds r1, r0, #0
	lsls r1, r1, #2
	add r1, sb
	ldr r3, [sp, #8]
	ldrb r0, [r3]
	ldrb r1, [r1, #2]
	adds r0, r0, r1
	strb r0, [r2, #0x1a]
_08076208:
	ldr r7, [sp, #0x10]
	ldrh r0, [r7]
	cmp r0, #0x2e
	bne _0807621C
	ldr r1, _08076218 @ =gUnk_08350DC6
	b _08076222
	.align 2, 0
_08076214: .4byte gUnk_083500D8
_08076218: .4byte gUnk_08350DC6
_0807621C:
	cmp r0, #0x2d
	bne _08076234
	ldr r1, _0807624C @ =gUnk_08350DD0
_08076222:
	movs r2, #4
	ldrsh r0, [r6, r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	mov r3, r8
	strb r0, [r3, #0x1a]
	movs r0, #0x10
	mov r7, sl
	strb r0, [r7]
_08076234:
	ldr r1, [sp, #0x10]
	ldrh r0, [r1]
	subs r0, #0x35
	cmp r0, #0x42
	bls _08076240
	b _08076542
_08076240:
	lsls r0, r0, #2
	ldr r1, _08076250 @ =_08076254
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807624C: .4byte gUnk_08350DD0
_08076250: .4byte _08076254
_08076254: @ jump table
	.4byte _08076418 @ case 0
	.4byte _08076542 @ case 1
	.4byte _08076542 @ case 2
	.4byte _08076542 @ case 3
	.4byte _08076542 @ case 4
	.4byte _08076542 @ case 5
	.4byte _08076542 @ case 6
	.4byte _08076542 @ case 7
	.4byte _08076542 @ case 8
	.4byte _08076542 @ case 9
	.4byte _08076542 @ case 10
	.4byte _08076542 @ case 11
	.4byte _08076542 @ case 12
	.4byte _08076418 @ case 13
	.4byte _08076542 @ case 14
	.4byte _08076542 @ case 15
	.4byte _08076542 @ case 16
	.4byte _08076542 @ case 17
	.4byte _08076542 @ case 18
	.4byte _08076542 @ case 19
	.4byte _08076542 @ case 20
	.4byte _08076542 @ case 21
	.4byte _08076542 @ case 22
	.4byte _08076542 @ case 23
	.4byte _08076542 @ case 24
	.4byte _08076542 @ case 25
	.4byte _08076542 @ case 26
	.4byte _08076542 @ case 27
	.4byte _08076542 @ case 28
	.4byte _08076542 @ case 29
	.4byte _08076542 @ case 30
	.4byte _08076542 @ case 31
	.4byte _08076542 @ case 32
	.4byte _08076542 @ case 33
	.4byte _08076542 @ case 34
	.4byte _08076542 @ case 35
	.4byte _08076542 @ case 36
	.4byte _08076542 @ case 37
	.4byte _08076542 @ case 38
	.4byte _08076542 @ case 39
	.4byte _08076542 @ case 40
	.4byte _08076542 @ case 41
	.4byte _08076542 @ case 42
	.4byte _08076542 @ case 43
	.4byte _08076542 @ case 44
	.4byte _08076542 @ case 45
	.4byte _08076542 @ case 46
	.4byte _08076542 @ case 47
	.4byte _08076542 @ case 48
	.4byte _08076542 @ case 49
	.4byte _08076542 @ case 50
	.4byte _08076360 @ case 51
	.4byte _08076360 @ case 52
	.4byte _08076542 @ case 53
	.4byte _08076472 @ case 54
	.4byte _08076542 @ case 55
	.4byte _08076542 @ case 56
	.4byte _08076542 @ case 57
	.4byte _08076430 @ case 58
	.4byte _0807645C @ case 59
	.4byte _08076542 @ case 60
	.4byte _08076542 @ case 61
	.4byte _08076488 @ case 62
	.4byte _08076542 @ case 63
	.4byte _08076542 @ case 64
	.4byte _0807649E @ case 65
	.4byte _080764D0 @ case 66
_08076360:
	adds r1, r4, #0
	adds r1, #0x64
	movs r2, #0
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x66
	strh r2, [r0]
	subs r1, #1
	movs r0, #4
	strb r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _080763F8 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _080763FC @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r4, #0x68]
	ldr r1, _08076400 @ =gKirbys
	ldr r0, _08076404 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r3, [sp, #0xc]
	ldrh r3, [r3]
	cmp r0, r3
	beq _080763A4
	b _08076542
_080763A4:
	ldrb r0, [r6]
	cmp r0, #0
	bne _080763B4
	ldr r7, [sp, #8]
	ldrb r0, [r7]
	cmp r0, r2
	beq _080763B4
	b _08076542
_080763B4:
	ldr r1, _08076408 @ =gUnk_08D60FA4
	ldr r5, _0807640C @ =gSongTable
	ldr r2, _08076410 @ =0x00000614
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080763DC
	movs r7, #0xc2
	lsls r7, r7, #3
	adds r0, r5, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _080763DC
	b _08076542
_080763DC:
	cmp r3, #0
	beq _080763F0
	ldr r0, _08076414 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080763F0
	b _08076542
_080763F0:
	movs r0, #0xc2
	bl m4aSongNumStart
	b _08076542
	.align 2, 0
_080763F8: .4byte 0xFFFBFFFF
_080763FC: .4byte 0x7FFFFFFF
_08076400: .4byte gKirbys
_08076404: .4byte gUnk_0203AD3C
_08076408: .4byte gUnk_08D60FA4
_0807640C: .4byte gSongTable
_08076410: .4byte 0x00000614
_08076414: .4byte gUnk_0203AD10
_08076418:
	adds r1, r4, #0
	adds r1, #0x64
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x66
	strh r2, [r0]
	subs r1, #1
	movs r0, #8
	b _080764B2
_08076430:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0x80
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xc0
	strh r0, [r1]
	subs r1, #3
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _08076458 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r4, #0x68]
	b _08076542
	.align 2, 0
_08076458: .4byte 0xFFFBFFFF
_0807645C:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #2
	subs r0, #0xc0
	strh r0, [r1]
	subs r1, #3
	movs r0, #8
	b _080764B2
_08076472:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0x80
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	subs r1, #3
	movs r0, #2
	b _080764B2
_08076488:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0x80
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r1]
	subs r1, #3
	movs r0, #8
	b _080764B2
_0807649E:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #2
	adds r0, #0x40
	strh r0, [r1]
	subs r1, #3
	movs r0, #3
_080764B2:
	strb r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _080764C8 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _080764CC @ =0x7EFFFFFF
	ands r0, r1
	str r0, [r4, #0x68]
	b _08076542
	.align 2, 0
_080764C8: .4byte 0xFFFBFFFF
_080764CC: .4byte 0x7EFFFFFF
_080764D0:
	ldr r1, _0807658C @ =gKirbys
	ldr r0, _08076590 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r1, [sp, #0xc]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08076536
	ldrb r0, [r6]
	cmp r0, #0
	bne _080764F8
	ldr r3, [sp, #8]
	ldrb r0, [r3]
	cmp r0, r2
	bne _08076536
_080764F8:
	ldr r1, _08076594 @ =gUnk_08D60FA4
	ldr r5, _08076598 @ =gSongTable
	ldr r7, _0807659C @ =0x0000072C
	adds r0, r5, r7
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807651E
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08076536
_0807651E:
	cmp r3, #0
	beq _08076530
	ldr r0, _080765A0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08076536
_08076530:
	movs r0, #0xe5
	bl m4aSongNumStart
_08076536:
	ldr r2, [sp, #8]
	ldrb r0, [r2]
	lsls r0, r0, #0xb
	ldr r3, _080765A4 @ =0x06010200
	adds r0, r0, r3
	str r0, [r4, #0x10]
_08076542:
	ldr r7, [sp, #0x10]
	ldrh r0, [r7]
	cmp r0, #0x77
	beq _08076568
	ldr r1, _08076590 @ =gUnk_0203AD3C
	ldr r2, [sp, #8]
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0807655C
	movs r0, #0xe5
	bl m4aSongNumStop
_0807655C:
	ldr r3, [sp, #8]
	ldrb r0, [r3]
	lsls r0, r0, #0xb
	ldr r7, _080765A8 @ =0x06010400
	adds r0, r0, r7
	str r0, [r4, #0x10]
_08076568:
	ldr r1, [sp, #0x10]
	ldrh r0, [r1]
	subs r0, #0x68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080765CE
	ldr r1, _08076590 @ =gUnk_0203AD3C
	ldr r2, [sp, #8]
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080765CE
	movs r0, #0xc2
	bl m4aSongNumStop
	b _080765CE
	.align 2, 0
_0807658C: .4byte gKirbys
_08076590: .4byte gUnk_0203AD3C
_08076594: .4byte gUnk_08D60FA4
_08076598: .4byte gSongTable
_0807659C: .4byte 0x0000072C
_080765A0: .4byte gUnk_0203AD10
_080765A4: .4byte 0x06010200
_080765A8: .4byte 0x06010400
_080765AC:
	cmp r5, #0x6f
	bne _080765CE
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080765C4
	ldrb r1, [r6, #1]
	lsls r1, r1, #7
	ldr r0, [r4, #0x40]
	subs r0, r0, r1
	b _080765CC
_080765C4:
	ldrb r1, [r6, #1]
	lsls r1, r1, #7
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
_080765CC:
	str r0, [r4, #0x40]
_080765CE:
	mov r3, r8
	ldrh r0, [r3, #0xc]
	cmp r0, #0
	bne _080765D8
	b _08076A46
_080765D8:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _08076608
	ldr r0, [r4, #8]
	ldr r1, _08076620 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	movs r7, #0x26
	ldrsh r0, [r4, r7]
	cmp r0, #0
	bne _08076608
	ldr r0, [r6, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080765FE
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
_080765FE:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
_08076608:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08076624
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _0807662E
	.align 2, 0
_08076620: .4byte 0xFFFFFDFF
_08076624:
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	ldr r2, _080766A8 @ =0xFFFFFBFF
	ands r1, r2
_0807662E:
	str r1, [r0, #8]
	mov r8, r0
	ldr r3, [r4, #8]
	movs r5, #8
	ands r5, r3
	cmp r5, #0
	bne _080766C4
	adds r0, r4, #0
	adds r0, #0x2b
	adds r2, r4, #0
	adds r2, #0x2a
	ldrb r1, [r0]
	adds r7, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _08076656
	ldrh r0, [r4, #0x28]
	ldrh r1, [r4, #0x1c]
	cmp r0, r1
	beq _0807666A
_08076656:
	mov r2, sl
	ldrb r0, [r2]
	cmp r0, #0
	beq _0807666A
	strb r5, [r4, #1]
	strh r5, [r4, #2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r4, #8]
_0807666A:
	mov r0, r8
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _080766AC
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080766C4
	mov r3, sl
	ldrb r0, [r3]
	cmp r0, #0
	beq _080766C4
	movs r0, #0xff
	strb r0, [r7]
	ldr r0, [r4, #8]
	subs r1, #9
	ands r0, r1
	str r0, [r4, #8]
	strb r2, [r4, #1]
	strh r2, [r4, #2]
	mov r0, r8
	bl sub_08155128
	b _080766C4
	.align 2, 0
_080766A8: .4byte 0xFFFFFBFF
_080766AC:
	mov r7, sl
	ldrb r1, [r7]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080766C4:
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, _0807679C @ =gCurLevelInfo
	ldr r7, _080767A0 @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov ip, r3
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r3, _080767A4 @ =gCurLevelInfo+0xC
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r5, r4, #0
	adds r5, #0x54
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	movs r1, #0
	mov sb, r1
	strh r0, [r4, #0x20]
	ldr r1, [r4, #0x44]
	asrs r1, r1, #8
	ldrb r0, [r7]
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x55
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	beq _08076724
	mov r0, sb
	strb r0, [r5]
	strb r0, [r3]
_08076724:
	ldrb r0, [r7]
	ldr r1, [sp, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08076752
	mov r1, ip
	muls r1, r0, r1
	ldr r3, _080767A4 @ =gCurLevelInfo+0xC
	adds r1, r1, r3
	ldr r0, [r4, #0x40]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x20]
	ldrb r0, [r7]
	mov r1, ip
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x44]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x22]
_08076752:
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _080767B6
	ldr r2, _080767A8 @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080767B6
	ldr r1, _080767AC @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r7, [r4, #0x20]
	adds r0, r0, r7
	strh r0, [r4, #0x20]
	ldrh r0, [r1, #2]
	ldrh r1, [r4, #0x22]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _080767B0
	mov r0, r8
	bl sub_081564D8
	b _080767B6
	.align 2, 0
_0807679C: .4byte gCurLevelInfo
_080767A0: .4byte gUnk_0203AD3C
_080767A4: .4byte gCurLevelInfo+0xC
_080767A8: .4byte gKirbys
_080767AC: .4byte gUnk_0203AD18
_080767B0:
	mov r0, r8
	bl sub_0815604C
_080767B6:
	ldr r2, [sp, #0x10]
	ldrh r0, [r2]
	cmp r0, #0x6c
	bne _080767F6
	ldrb r0, [r6, #1]
	cmp r0, #0xc
	bne _080767F6
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08076884 @ =0x0000FC80
	strh r0, [r1]
	subs r1, #3
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r4, #0x68]
	ldr r1, _08076888 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080767F6
	ldr r0, [r4, #8]
	ldr r1, _0807688C @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
_080767F6:
	ldr r3, [sp, #0x10]
	ldrh r0, [r3]
	cmp r0, #0x77
	bne _08076822
	ldr r2, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r2, r0
	cmp r2, #0
	bne _08076822
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08076822
	ldr r0, [r4, #8]
	ldr r1, _0807688C @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	strh r2, [r4, #4]
_08076822:
	ldr r1, [r4, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0807682E
	b _080769CA
_0807682E:
	ldr r2, [r4, #8]
	ldr r0, _08076890 @ =0xFFFFFDFF
	ands r2, r0
	str r2, [r4, #8]
	ldr r7, [sp, #0x10]
	ldrh r0, [r7]
	subs r0, #0x68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0807685C
	ldrb r0, [r6, #1]
	cmp r0, #9
	bne _0807685C
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0807685C
	ldr r0, _0807688C @ =0xFFFBFFFF
	ands r2, r0
	str r2, [r4, #8]
_0807685C:
	ldr r1, [sp, #0x10]
	ldrh r0, [r1]
	cmp r0, #0x6f
	bne _0807695E
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0807695E
	ldrb r0, [r6, #1]
	subs r0, #4
	cmp r0, #0x15
	bhi _0807695E
	lsls r0, r0, #2
	ldr r1, _08076894 @ =_08076898
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08076884: .4byte 0x0000FC80
_08076888: .4byte 0x7FFFFFFF
_0807688C: .4byte 0xFFFBFFFF
_08076890: .4byte 0xFFFFFDFF
_08076894: .4byte _08076898
_08076898: @ jump table
	.4byte _080768F0 @ case 0
	.4byte _0807695E @ case 1
	.4byte _0807695E @ case 2
	.4byte _080768F0 @ case 3
	.4byte _0807695E @ case 4
	.4byte _0807695E @ case 5
	.4byte _080768F0 @ case 6
	.4byte _0807695E @ case 7
	.4byte _0807695E @ case 8
	.4byte _080768F0 @ case 9
	.4byte _0807695E @ case 10
	.4byte _0807695E @ case 11
	.4byte _080768F0 @ case 12
	.4byte _0807695E @ case 13
	.4byte _0807695E @ case 14
	.4byte _080768F0 @ case 15
	.4byte _0807695E @ case 16
	.4byte _0807695E @ case 17
	.4byte _080768F0 @ case 18
	.4byte _0807695E @ case 19
	.4byte _0807695E @ case 20
	.4byte _080768F0 @ case 21
_080768F0:
	ldr r0, [r4, #8]
	ldr r1, _08076988 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _0807698C @ =gKirbys
	ldr r0, _08076990 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r3, [sp, #0xc]
	ldrh r3, [r3]
	cmp r0, r3
	bne _0807695E
	ldrb r0, [r6]
	cmp r0, #0
	bne _08076920
	ldr r7, [sp, #8]
	ldrb r0, [r7]
	cmp r0, r2
	bne _0807695E
_08076920:
	ldr r1, _08076994 @ =gUnk_08D60FA4
	ldr r5, _08076998 @ =gSongTable
	ldr r2, _0807699C @ =0x0000061C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08076946
	movs r7, #0xc3
	lsls r7, r7, #3
	adds r0, r5, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807695E
_08076946:
	cmp r3, #0
	beq _08076958
	ldr r0, _080769A0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807695E
_08076958:
	movs r0, #0xc3
	bl m4aSongNumStart
_0807695E:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080769A4
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r1, [r0]
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	subs r0, #1
	ldrb r3, [r0]
	rsbs r3, r3, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, #3
	b _080769BA
	.align 2, 0
_08076988: .4byte 0xFFFBFFFF
_0807698C: .4byte gKirbys
_08076990: .4byte gUnk_0203AD3C
_08076994: .4byte gUnk_08D60FA4
_08076998: .4byte gSongTable
_0807699C: .4byte 0x0000061C
_080769A0: .4byte gUnk_0203AD10
_080769A4:
	adds r0, r4, #0
	adds r0, #0x34
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, #1
_080769BA:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0803E308
	b _080769DA
_080769CA:
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
_080769DA:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08076A46
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08076A0C
	ldr r2, _08076A04 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _08076A08 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _08076A0E
	.align 2, 0
_08076A04: .4byte gCurLevelInfo
_08076A08: .4byte 0x0000065E
_08076A0C:
	movs r1, #0xff
_08076A0E:
	cmp r1, #0xff
	beq _08076A46
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08076A58 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08076A5C @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08076A46:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08076A58: .4byte gUnk_02022EB0
_08076A5C: .4byte gUnk_02022F50

	thumb_func_start sub_08076A60
sub_08076A60: @ 0x08076A60
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08076A90 @ =sub_08076B84
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08076A94 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08076A98
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08076AA0
	.align 2, 0
_08076A90: .4byte sub_08076B84
_08076A94: .4byte sub_0803DCCC
_08076A98:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08076AA0:
	adds r0, r4, #0
	bl sub_0803E380
	movs r6, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r6, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r5, #0x56
	ldrb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08076B70 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08076AEC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_08076AEC:
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0xf0
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r4, #8]
	ldr r0, _08076B74 @ =0xA0000100
	orrs r2, r0
	ldr r0, [r4, #0x68]
	ldr r1, _08076B78 @ =0x30005003
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #0x68]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r4, #8]
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E2B0
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	ldrb r2, [r5]
	lsls r2, r2, #0xb
	ldr r0, _08076B7C @ =0x06010400
	adds r2, r2, r0
	ldr r0, _08076B80 @ =gUnk_083502C0
	ldrh r3, [r0]
	ldrb r0, [r0, #2]
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	ldrb r0, [r5]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2f
	strb r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08076B70: .4byte gUnk_03000510
_08076B74: .4byte 0xA0000100
_08076B78: .4byte 0x30005003
_08076B7C: .4byte 0x06010400
_08076B80: .4byte gUnk_083502C0

	thumb_func_start sub_08076B84
sub_08076B84: @ 0x08076B84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	mov sl, r0
	ldr r2, _08076BB0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08076BB4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08076BBC
	.align 2, 0
_08076BB0: .4byte gCurTask
_08076BB4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08076BBC:
	adds r4, r0, #0
	movs r1, #0x10
	adds r1, r1, r4
	mov r8, r1
	ldr r6, [r4, #0x70]
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _08076BDC
	ldr r0, [r2]
	bl TaskDestroy
	bl _0807743A
_08076BDC:
	ldr r1, _08076C1C @ =0xFFFFDBFE
	ands r1, r3
	str r1, [r4, #8]
	ldr r0, [r6, #8]
	ldr r2, _08076C20 @ =0x00002405
	ands r0, r2
	orrs r1, r0
	str r1, [r4, #8]
	adds r2, r6, #0
	adds r2, #0x60
	ldrh r1, [r2]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	ldrh r0, [r6, #0x24]
	subs r0, #0x40
	strh r0, [r4, #0x24]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	str r2, [sp, #0x10]
	cmp r0, #0
	beq _08076C24
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0
	b _08076C32
	.align 2, 0
_08076C1C: .4byte 0xFFFFDBFE
_08076C20: .4byte 0x00002405
_08076C24:
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r0, [r0]
_08076C32:
	strb r0, [r1]
	mov sb, r1
	ldr r2, _08076C50 @ =0x00000103
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0x11
	beq _08076C54
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	bl _0807743A
	.align 2, 0
_08076C50: .4byte 0x00000103
_08076C54:
	ldr r0, _08076CA8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r6, #0
	adds r3, #0x56
	movs r5, #1
	adds r0, r5, #0
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	str r3, [sp, #0xc]
	cmp r2, #0
	bne _08076C72
	b _08076E40
_08076C72:
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	beq _08076C80
	b _08076E40
_08076C80:
	mov r2, sb
	ldrb r2, [r2]
	str r2, [sp, #4]
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	bne _08076C8E
	b _0807743A
_08076C8E:
	mov r3, sb
	strb r1, [r3]
	ldr r0, [r4, #8]
	ands r0, r5
	cmp r0, #0
	beq _08076CAC
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _08076CB6
	.align 2, 0
_08076CA8: .4byte gUnk_03000510
_08076CAC:
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	ldr r2, _08076D30 @ =0xFFFFFBFF
	ands r1, r2
_08076CB6:
	str r1, [r0, #8]
	mov r8, r0
	ldr r3, [r4, #8]
	movs r5, #8
	ands r5, r3
	cmp r5, #0
	bne _08076D4C
	adds r0, r4, #0
	adds r0, #0x2b
	adds r2, r4, #0
	adds r2, #0x2a
	ldrb r1, [r0]
	adds r7, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _08076CDE
	ldrh r0, [r4, #0x28]
	ldrh r1, [r4, #0x1c]
	cmp r0, r1
	beq _08076CF2
_08076CDE:
	mov r2, sb
	ldrb r0, [r2]
	cmp r0, #0
	beq _08076CF2
	strb r5, [r4, #1]
	strh r5, [r4, #2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r4, #8]
_08076CF2:
	mov r0, r8
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08076D34
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08076D4C
	mov r3, sb
	ldrb r0, [r3]
	cmp r0, #0
	beq _08076D4C
	movs r0, #0xff
	strb r0, [r7]
	ldr r0, [r4, #8]
	subs r1, #9
	ands r0, r1
	str r0, [r4, #8]
	strb r2, [r4, #1]
	strh r2, [r4, #2]
	mov r0, r8
	bl sub_08155128
	b _08076D4C
	.align 2, 0
_08076D30: .4byte 0xFFFFFBFF
_08076D34:
	mov r5, sb
	ldrb r1, [r5]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_08076D4C:
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, _08076E28 @ =gCurLevelInfo
	ldr r6, _08076E2C @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r7, #0xcd
	lsls r7, r7, #3
	muls r0, r7, r0
	movs r3, #0xc
	adds r3, r3, r2
	mov sl, r3
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r5, r4, #0
	adds r5, #0x54
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	movs r1, #0
	mov ip, r1
	strh r0, [r4, #0x20]
	ldr r1, [r4, #0x44]
	asrs r1, r1, #8
	ldrb r0, [r6]
	muls r0, r7, r0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x55
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _08076DA6
	mov r0, ip
	strb r0, [r5]
	strb r0, [r3]
_08076DA6:
	mov r1, sp
	ldrb r3, [r1, #4]
	mov r1, sb
	strb r3, [r1]
	ldrb r0, [r6]
	ldr r5, [sp, #0xc]
	ldrb r5, [r5]
	cmp r0, r5
	bne _08076DDA
	adds r1, r0, #0
	muls r1, r7, r1
	add r1, sl
	ldr r0, [r4, #0x40]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x20]
	ldrb r0, [r6]
	adds r1, r0, #0
	muls r1, r7, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x44]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x22]
_08076DDA:
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	beq _08076DE8
	b _0807743A
_08076DE8:
	ldr r2, _08076E30 @ =gKirbys
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08076E04
	b _0807743A
_08076E04:
	ldr r1, _08076E34 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r4, #0x20]
	adds r0, r0, r2
	strh r0, [r4, #0x20]
	ldrh r0, [r1, #2]
	ldrh r5, [r4, #0x22]
	adds r0, r0, r5
	strh r0, [r4, #0x22]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _08076E38
	mov r0, r8
	bl sub_081564D8
	b _0807743A
	.align 2, 0
_08076E28: .4byte gCurLevelInfo
_08076E2C: .4byte gUnk_0203AD3C
_08076E30: .4byte gKirbys
_08076E34: .4byte gUnk_0203AD18
_08076E38:
	mov r0, r8
	bl sub_0815604C
	b _0807743A
_08076E40:
	ldr r0, _08076F58 @ =gUnk_083502C0
	adds r2, r6, #0
	adds r2, #0xd4
	ldrh r1, [r2]
	lsls r1, r1, #2
	adds r1, r1, r0
	mov r5, r8
	ldrh r3, [r5, #0xc]
	ldrh r5, [r1]
	adds r7, r0, #0
	str r2, [sp, #8]
	cmp r3, r5
	bne _08076E66
	mov r2, r8
	ldrb r0, [r2, #0x1a]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bne _08076E66
	b _08077018
_08076E66:
	movs r0, #1
	mov sl, r0
	cmp r3, r5
	beq _08076E82
	movs r1, #0xd4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r0, [r0]
	cmp r3, r0
	bne _08076E82
	ldr r0, [r6, #8]
	ldr r1, _08076F5C @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r6, #8]
_08076E82:
	ldr r2, [sp, #8]
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0]
	mov r3, r8
	strh r0, [r3, #0xc]
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #2]
	strb r0, [r3, #0x1a]
	ldrh r0, [r2]
	cmp r0, #0x5a
	bne _08076EB0
	adds r1, r0, #0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldr r5, [sp, #0xc]
	ldrb r0, [r5]
	ldrb r1, [r1, #2]
	adds r0, r0, r1
	strb r0, [r3, #0x1a]
_08076EB0:
	ldr r1, [sp, #8]
	ldrh r0, [r1]
	adds r1, r0, #0
	cmp r1, #0x67
	bne _08076F80
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0xf0
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r4, #0x68]
	ldr r1, _08076F60 @ =0xF7FFFFF7
	ands r0, r1
	movs r7, #0x80
	lsls r7, r7, #1
	orrs r0, r7
	str r0, [r4, #0x68]
	ldr r0, [r4, #8]
	ldr r1, _08076F64 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r6, #8]
	ldr r1, _08076F5C @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r6, #8]
	ldr r1, _08076F68 @ =gKirbys
	ldr r0, _08076F6C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r3, [sp, #0x10]
	ldrh r3, [r3]
	cmp r0, r3
	beq _08076F0A
	b _08077018
_08076F0A:
	ldrb r0, [r6]
	cmp r0, #0
	bne _08076F1A
	ldr r5, [sp, #0xc]
	ldrb r0, [r5]
	cmp r0, r2
	beq _08076F1A
	b _08077018
_08076F1A:
	ldr r1, _08076F70 @ =gUnk_08D60FA4
	ldr r5, _08076F74 @ =gSongTable
	ldr r2, _08076F78 @ =0x000005EC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08076F40
	movs r1, #0xbd
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08077018
_08076F40:
	cmp r3, #0
	beq _08076F4E
	ldr r0, _08076F7C @ =gUnk_0203AD10
	ldr r0, [r0]
	ands r0, r7
	cmp r0, #0
	bne _08077018
_08076F4E:
	movs r0, #0xbd
	bl m4aSongNumStart
	b _08077018
	.align 2, 0
_08076F58: .4byte gUnk_083502C0
_08076F5C: .4byte 0xFFFF7FFF
_08076F60: .4byte 0xF7FFFFF7
_08076F64: .4byte 0xFFFBFFFF
_08076F68: .4byte gKirbys
_08076F6C: .4byte gUnk_0203AD3C
_08076F70: .4byte gUnk_08D60FA4
_08076F74: .4byte gSongTable
_08076F78: .4byte 0x000005EC
_08076F7C: .4byte gUnk_0203AD10
_08076F80:
	cmp r1, #0x6a
	bne _08076FBC
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0xe0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r4, #0x68]
	ldr r1, _08076FB4 @ =0xF7FFFEF7
	ands r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #8]
	ldr r1, _08076FB8 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	b _08077016
	.align 2, 0
_08076FB4: .4byte 0xF7FFFEF7
_08076FB8: .4byte 0xFFFBFFFF
_08076FBC:
	subs r0, #0x68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08076FCE
	cmp r1, #0x42
	beq _08076FCE
	cmp r1, #0x35
	bne _0807700C
_08076FCE:
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0xf0
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #5
	strb r0, [r1]
	ldr r0, [r4, #0x68]
	ldr r1, _08077000 @ =0xF7FFFEF7
	ands r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r6, #8]
	ldr r1, _08077004 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r6, #8]
	ldr r0, [r4, #8]
	ldr r1, _08077008 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	b _08077018
	.align 2, 0
_08077000: .4byte 0xF7FFFEF7
_08077004: .4byte 0xFFFF7FFF
_08077008: .4byte 0xFFFBFFFF
_0807700C:
	cmp r1, #0x6c
	bne _08077018
	ldr r0, [r6, #8]
	ldr r1, _08077064 @ =0xFFFF7FFF
	ands r0, r1
_08077016:
	str r0, [r6, #8]
_08077018:
	mov r2, r8
	ldrh r0, [r2, #0xc]
	cmp r0, #0
	bne _08077022
	b _0807743A
_08077022:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _0807704C
	ldr r1, [r4, #8]
	ldr r0, _08077068 @ =0xFFFFFDFF
	ands r1, r0
	str r1, [r4, #8]
	movs r3, #0x26
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _0807703E
	mov r5, sl
	cmp r5, #0
	beq _0807704C
_0807703E:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	str r1, [r4, #8]
_0807704C:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807706C
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _08077076
	.align 2, 0
_08077064: .4byte 0xFFFF7FFF
_08077068: .4byte 0xFFFFFDFF
_0807706C:
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	ldr r2, _080770F0 @ =0xFFFFFBFF
	ands r1, r2
_08077076:
	str r1, [r0, #8]
	mov r8, r0
	ldr r3, [r4, #8]
	movs r5, #8
	ands r5, r3
	cmp r5, #0
	bne _0807710C
	adds r0, r4, #0
	adds r0, #0x2b
	adds r2, r4, #0
	adds r2, #0x2a
	ldrb r1, [r0]
	adds r7, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _0807709E
	ldrh r0, [r4, #0x28]
	ldrh r1, [r4, #0x1c]
	cmp r0, r1
	beq _080770B2
_0807709E:
	mov r2, sb
	ldrb r0, [r2]
	cmp r0, #0
	beq _080770B2
	strb r5, [r4, #1]
	strh r5, [r4, #2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r4, #8]
_080770B2:
	mov r0, r8
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _080770F4
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0807710C
	mov r3, sb
	ldrb r0, [r3]
	cmp r0, #0
	beq _0807710C
	movs r0, #0xff
	strb r0, [r7]
	ldr r0, [r4, #8]
	subs r1, #9
	ands r0, r1
	str r0, [r4, #8]
	strb r2, [r4, #1]
	strh r2, [r4, #2]
	mov r0, r8
	bl sub_08155128
	b _0807710C
	.align 2, 0
_080770F0: .4byte 0xFFFFFBFF
_080770F4:
	mov r5, sb
	ldrb r1, [r5]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_0807710C:
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, _080771E4 @ =gCurLevelInfo
	ldr r7, _080771E8 @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov ip, r3
	mov r5, ip
	muls r5, r0, r5
	adds r0, r5, #0
	ldr r3, _080771EC @ =gCurLevelInfo+0xC
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r5, r4, #0
	adds r5, #0x54
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	movs r1, #0
	mov sl, r1
	strh r0, [r4, #0x20]
	ldr r1, [r4, #0x44]
	asrs r1, r1, #8
	ldrb r0, [r7]
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x55
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _0807716C
	mov r0, sl
	strb r0, [r5]
	strb r0, [r3]
_0807716C:
	ldrb r0, [r7]
	ldr r1, [sp, #0xc]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0807719A
	mov r1, ip
	muls r1, r0, r1
	ldr r3, _080771EC @ =gCurLevelInfo+0xC
	adds r1, r1, r3
	ldr r0, [r4, #0x40]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x20]
	ldrb r0, [r7]
	mov r1, ip
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x44]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x22]
_0807719A:
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _080771FE
	ldr r2, _080771F0 @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080771FE
	ldr r1, _080771F4 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r5, [r4, #0x20]
	adds r0, r0, r5
	strh r0, [r4, #0x20]
	ldrh r0, [r1, #2]
	ldrh r1, [r4, #0x22]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _080771F8
	mov r0, r8
	bl sub_081564D8
	b _080771FE
	.align 2, 0
_080771E4: .4byte gCurLevelInfo
_080771E8: .4byte gUnk_0203AD3C
_080771EC: .4byte gCurLevelInfo+0xC
_080771F0: .4byte gKirbys
_080771F4: .4byte gUnk_0203AD18
_080771F8:
	mov r0, r8
	bl sub_0815604C
_080771FE:
	ldr r1, [r4, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0807720A
	b _080773BE
_0807720A:
	ldr r2, [r4, #8]
	ldr r0, _0807736C @ =0xFFFFFDFF
	ands r2, r0
	str r2, [r4, #8]
	ldr r3, [sp, #8]
	ldrh r0, [r3]
	cmp r0, #0x6b
	bne _08077290
	ldr r0, [r6, #8]
	ldr r1, _08077370 @ =0x00800002
	ands r0, r1
	cmp r0, #2
	bne _08077290
	ldr r0, _08077374 @ =0xFFFBFFFF
	ands r2, r0
	str r2, [r4, #8]
	ldr r1, _08077378 @ =gKirbys
	ldr r0, _0807737C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r5, [sp, #0x10]
	ldrh r5, [r5]
	cmp r0, r5
	bne _08077290
	ldrb r0, [r6]
	cmp r0, #0
	bne _08077252
	ldr r1, [sp, #0xc]
	ldrb r0, [r1]
	cmp r0, r2
	bne _08077290
_08077252:
	ldr r1, _08077380 @ =gUnk_08D60FA4
	ldr r5, _08077384 @ =gSongTable
	ldr r2, _08077388 @ =0x000005FC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08077278
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08077290
_08077278:
	cmp r3, #0
	beq _0807728A
	ldr r0, _0807738C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08077290
_0807728A:
	movs r0, #0xbf
	bl m4aSongNumStart
_08077290:
	ldr r2, [sp, #8]
	ldrh r0, [r2]
	cmp r0, #0x67
	bne _08077340
	ldrb r0, [r6, #1]
	cmp r0, #0x17
	bne _08077340
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0xe0
	lsls r1, r1, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0x19
	strb r0, [r1]
	ldr r0, [r4, #0x68]
	ldr r1, _08077390 @ =0x08000108
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08077338
	ldr r0, [r4, #8]
	ldr r1, _08077374 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _08077378 @ =gKirbys
	ldr r0, _0807737C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r3, [sp, #0x10]
	ldrh r3, [r3]
	cmp r0, r3
	bne _08077338
	ldrb r0, [r6]
	cmp r0, #0
	bne _080772F8
	ldr r5, [sp, #0xc]
	ldrb r0, [r5]
	cmp r0, r2
	bne _08077338
_080772F8:
	ldr r1, _08077380 @ =gUnk_08D60FA4
	ldr r3, _08077384 @ =gSongTable
	movs r2, #0xf1
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrh r5, [r0]
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08077320
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08077338
_08077320:
	cmp r5, #0
	beq _08077332
	ldr r0, _0807738C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08077338
_08077332:
	movs r0, #0x78
	bl m4aSongNumStart
_08077338:
	ldr r0, [r6, #8]
	ldr r1, _08077394 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r6, #8]
_08077340:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08077398
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r1, [r0]
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	subs r0, #1
	ldrb r3, [r0]
	rsbs r3, r3, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, #3
	b _080773AE
	.align 2, 0
_0807736C: .4byte 0xFFFFFDFF
_08077370: .4byte 0x00800002
_08077374: .4byte 0xFFFBFFFF
_08077378: .4byte gKirbys
_0807737C: .4byte gUnk_0203AD3C
_08077380: .4byte gUnk_08D60FA4
_08077384: .4byte gSongTable
_08077388: .4byte 0x000005FC
_0807738C: .4byte gUnk_0203AD10
_08077390: .4byte 0x08000108
_08077394: .4byte 0xFFFF7FFF
_08077398:
	adds r0, r4, #0
	adds r0, #0x34
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, #1
_080773AE:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0803E308
	b _080773CE
_080773BE:
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
_080773CE:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _0807743A
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08077400
	ldr r2, _080773F8 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080773FC @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _08077402
	.align 2, 0
_080773F8: .4byte gCurLevelInfo
_080773FC: .4byte 0x0000065E
_08077400:
	movs r1, #0xff
_08077402:
	cmp r1, #0xff
	beq _0807743A
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _0807744C @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r5, [r4]
	adds r1, r1, r5
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08077450 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0807743A:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807744C: .4byte gUnk_02022EB0
_08077450: .4byte gUnk_02022F50

	thumb_func_start sub_08077454
sub_08077454: @ 0x08077454
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08077484 @ =sub_08077574
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08077488 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807748C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08077494
	.align 2, 0
_08077484: .4byte sub_08077574
_08077488: .4byte sub_0803DCCC
_0807748C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08077494:
	adds r0, r4, #0
	bl sub_0803E380
	movs r6, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r6, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r5, #0x56
	ldrb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08077560 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080774E0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080774E0:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #2
	subs r0, #0xa0
	strh r0, [r1]
	subs r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r4, #8]
	ldr r0, _08077564 @ =0xA0000100
	orrs r2, r0
	ldr r0, [r4, #0x68]
	ldr r1, _08077568 @ =0x20000043
	orrs r0, r1
	str r0, [r4, #0x68]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r4, #8]
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E2B0
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	ldrb r2, [r5]
	lsls r2, r2, #0xb
	ldr r0, _0807756C @ =0x06010400
	adds r2, r2, r0
	ldr r0, _08077570 @ =gUnk_08350474
	ldrh r3, [r0]
	ldrb r0, [r0, #2]
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	ldrb r0, [r5]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2f
	strb r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08077560: .4byte gUnk_03000510
_08077564: .4byte 0xA0000100
_08077568: .4byte 0x20000043
_0807756C: .4byte 0x06010400
_08077570: .4byte gUnk_08350474

	thumb_func_start sub_08077574
sub_08077574: @ 0x08077574
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	str r0, [sp, #4]
	ldr r2, _080775A0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080775A4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080775AC
	.align 2, 0
_080775A0: .4byte gCurTask
_080775A4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080775AC:
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x10
	ldr r1, [r4, #0x70]
	mov sb, r1
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080775CA
	ldr r0, [r2]
	bl TaskDestroy
	b _08077CB6
_080775CA:
	ldr r1, _08077608 @ =0xFFFFDBFE
	ands r1, r3
	str r1, [r4, #8]
	mov r2, sb
	ldr r0, [r2, #8]
	ldr r2, _0807760C @ =0x00002605
	ands r0, r2
	orrs r1, r0
	str r1, [r4, #8]
	mov r2, sb
	adds r2, #0x60
	ldrh r1, [r2]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	mov r3, sb
	ldrh r0, [r3, #0x24]
	subs r0, #0x40
	strh r0, [r4, #0x24]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08077610
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0
	b _0807761E
	.align 2, 0
_08077608: .4byte 0xFFFFDBFE
_0807760C: .4byte 0x00002605
_08077610:
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0x10
	strb r0, [r1]
	mov r0, sb
	adds r0, #0x2c
	ldrb r0, [r0]
_0807761E:
	strb r0, [r1]
	mov r8, r1
	mov r1, sb
	ldr r0, [r1, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r4, #0x44]
	ldr r0, _08077644 @ =0x00000103
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #5
	beq _08077648
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _08077CB6
	.align 2, 0
_08077644: .4byte 0x00000103
_08077648:
	ldr r0, _080776A0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r3, sb
	adds r3, #0x56
	movs r5, #1
	adds r0, r5, #0
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	str r3, [sp, #0x10]
	cmp r2, #0
	bne _08077666
	b _08077844
_08077666:
	mov r2, sb
	ldr r1, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	beq _08077676
	b _08077844
_08077676:
	mov r3, r8
	ldrb r3, [r3]
	str r3, [sp, #8]
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	bne _08077684
	b _08077CB6
_08077684:
	mov r0, r8
	strb r1, [r0]
	ldr r0, [r4, #8]
	ands r0, r5
	cmp r0, #0
	beq _080776A4
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _080776AE
	.align 2, 0
_080776A0: .4byte gUnk_03000510
_080776A4:
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	ldr r2, _08077728 @ =0xFFFFFBFF
	ands r1, r2
_080776AE:
	str r1, [r0, #8]
	adds r7, r0, #0
	ldr r3, [r4, #8]
	movs r5, #8
	ands r5, r3
	cmp r5, #0
	bne _08077744
	adds r0, r4, #0
	adds r0, #0x2b
	adds r2, r4, #0
	adds r2, #0x2a
	ldrb r1, [r0]
	adds r6, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _080776D6
	ldrh r0, [r4, #0x28]
	ldrh r1, [r4, #0x1c]
	cmp r0, r1
	beq _080776EA
_080776D6:
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #0
	beq _080776EA
	strb r5, [r4, #1]
	strh r5, [r4, #2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r4, #8]
_080776EA:
	adds r0, r7, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _0807772C
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08077744
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #0
	beq _08077744
	movs r0, #0xff
	strb r0, [r6]
	ldr r0, [r4, #8]
	subs r1, #9
	ands r0, r1
	str r0, [r4, #8]
	strb r2, [r4, #1]
	strh r2, [r4, #2]
	adds r0, r7, #0
	bl sub_08155128
	b _08077744
	.align 2, 0
_08077728: .4byte 0xFFFFFBFF
_0807772C:
	mov r0, r8
	ldrb r1, [r0]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_08077744:
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, _0807782C @ =gCurLevelInfo
	ldr r6, _08077830 @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov ip, r3
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	movs r3, #0xc
	adds r3, r3, r2
	mov sl, r3
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r5, r4, #0
	adds r5, #0x54
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	movs r1, #0
	mov sb, r1
	strh r0, [r4, #0x20]
	ldr r1, [r4, #0x44]
	asrs r1, r1, #8
	ldrb r0, [r6]
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x55
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _080777A8
	mov r0, sb
	strb r0, [r5]
	strb r0, [r3]
_080777A8:
	mov r1, sp
	ldrb r3, [r1, #8]
	mov r1, r8
	strb r3, [r1]
	ldrb r0, [r6]
	ldr r1, [sp, #0x10]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080777DC
	mov r1, ip
	muls r1, r0, r1
	add r1, sl
	ldr r0, [r4, #0x40]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x20]
	ldrb r0, [r6]
	mov r1, ip
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x44]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x22]
_080777DC:
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	beq _080777EA
	b _08077CB6
_080777EA:
	ldr r2, _08077834 @ =gKirbys
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08077806
	b _08077CB6
_08077806:
	ldr r1, _08077838 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r4, #0x20]
	adds r0, r0, r2
	strh r0, [r4, #0x20]
	ldrh r0, [r1, #2]
	ldrh r1, [r4, #0x22]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _0807783C
	adds r0, r7, #0
	bl sub_081564D8
	b _08077CB6
	.align 2, 0
_0807782C: .4byte gCurLevelInfo
_08077830: .4byte gUnk_0203AD3C
_08077834: .4byte gKirbys
_08077838: .4byte gUnk_0203AD18
_0807783C:
	adds r0, r7, #0
	bl sub_0815604C
	b _08077CB6
_08077844:
	ldr r5, _08077920 @ =gUnk_08350474
	mov r0, sb
	adds r0, #0xd4
	ldrh r1, [r0]
	lsls r1, r1, #2
	adds r2, r1, r5
	ldrh r3, [r2]
	ldrh r1, [r6, #0xc]
	str r0, [sp, #0xc]
	cmp r1, r3
	bne _08077864
	ldrb r0, [r6, #0x1a]
	ldrb r2, [r2, #2]
	cmp r0, r2
	bne _08077864
	b _08077972
_08077864:
	movs r2, #1
	str r2, [sp, #4]
	movs r2, #0
	strh r3, [r6, #0xc]
	ldr r3, [sp, #0xc]
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0, #2]
	strb r0, [r6, #0x1a]
	ldrh r0, [r3]
	cmp r0, #0x5a
	bne _0807788E
	adds r1, r0, #0
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r3, [sp, #0x10]
	ldrb r0, [r3]
	ldrb r1, [r1, #2]
	adds r0, r0, r1
	strb r0, [r6, #0x1a]
_0807788E:
	ldr r1, [sp, #0xc]
	ldrh r0, [r1]
	cmp r0, #0x34
	beq _0807789A
	cmp r0, #0x43
	bne _08077940
_0807789A:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x66
	strh r2, [r0]
	subs r1, #1
	movs r0, #4
	strb r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _08077924 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _08077928 @ =gKirbys
	ldr r0, _0807792C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _08077972
	mov r3, sb
	ldrb r0, [r3]
	cmp r0, #0
	bne _080778E0
	ldr r1, [sp, #0x10]
	ldrb r0, [r1]
	cmp r0, r2
	bne _08077972
_080778E0:
	ldr r1, _08077930 @ =gUnk_08D60FA4
	ldr r5, _08077934 @ =gSongTable
	ldr r2, _08077938 @ =0x000004AC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08077906
	movs r1, #0x95
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08077972
_08077906:
	cmp r3, #0
	beq _08077918
	ldr r0, _0807793C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08077972
_08077918:
	movs r0, #0x95
	bl m4aSongNumStart
	b _08077972
	.align 2, 0
_08077920: .4byte gUnk_08350474
_08077924: .4byte 0xFFFBFFFF
_08077928: .4byte gKirbys
_0807792C: .4byte gUnk_0203AD3C
_08077930: .4byte gUnk_08D60FA4
_08077934: .4byte gSongTable
_08077938: .4byte 0x000004AC
_0807793C: .4byte gUnk_0203AD10
_08077940:
	cmp r0, #0x36
	beq _08077948
	cmp r0, #0x44
	bne _0807795C
_08077948:
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0xf0
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r1, r4, #0
	adds r1, #0x63
	b _0807796E
_0807795C:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #2
	subs r0, #0xa0
	strh r0, [r1]
	subs r1, #3
_0807796E:
	movs r0, #4
	strb r0, [r1]
_08077972:
	ldrh r0, [r6, #0xc]
	cmp r0, #0
	bne _0807797A
	b _08077CB6
_0807797A:
	ldr r0, [r4, #0x30]
	ldrh r2, [r4, #0x26]
	cmp r0, #0
	bne _080779A6
	ldr r1, [r4, #8]
	ldr r0, _080779C0 @ =0xFFFFFDFF
	ands r1, r0
	str r1, [r4, #8]
	lsls r0, r2, #0x10
	cmp r0, #0
	bne _080779A6
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _080779A6
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	str r1, [r4, #8]
_080779A6:
	strh r2, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080779C4
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _080779CE
	.align 2, 0
_080779C0: .4byte 0xFFFFFDFF
_080779C4:
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	ldr r2, _08077A48 @ =0xFFFFFBFF
	ands r1, r2
_080779CE:
	str r1, [r0, #8]
	adds r7, r0, #0
	ldr r3, [r4, #8]
	movs r5, #8
	ands r5, r3
	cmp r5, #0
	bne _08077A64
	adds r0, r4, #0
	adds r0, #0x2b
	adds r2, r4, #0
	adds r2, #0x2a
	ldrb r1, [r0]
	adds r6, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _080779F6
	ldrh r0, [r4, #0x28]
	ldrh r1, [r4, #0x1c]
	cmp r0, r1
	beq _08077A0A
_080779F6:
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #0
	beq _08077A0A
	strb r5, [r4, #1]
	strh r5, [r4, #2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r4, #8]
_08077A0A:
	adds r0, r7, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08077A4C
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08077A64
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #0
	beq _08077A64
	movs r0, #0xff
	strb r0, [r6]
	ldr r0, [r4, #8]
	subs r1, #9
	ands r0, r1
	str r0, [r4, #8]
	strb r2, [r4, #1]
	strh r2, [r4, #2]
	adds r0, r7, #0
	bl sub_08155128
	b _08077A64
	.align 2, 0
_08077A48: .4byte 0xFFFFFBFF
_08077A4C:
	mov r0, r8
	ldrb r1, [r0]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_08077A64:
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, _08077B3C @ =gCurLevelInfo
	ldr r6, _08077B40 @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov ip, r3
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r3, _08077B44 @ =gCurLevelInfo+0xC
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r5, r4, #0
	adds r5, #0x54
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	movs r1, #0
	mov sl, r1
	strh r0, [r4, #0x20]
	ldr r1, [r4, #0x44]
	asrs r1, r1, #8
	ldrb r0, [r6]
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x55
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08077AC4
	mov r0, sl
	strb r0, [r5]
	strb r0, [r3]
_08077AC4:
	ldrb r0, [r6]
	ldr r1, [sp, #0x10]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08077AF2
	mov r1, ip
	muls r1, r0, r1
	ldr r3, _08077B44 @ =gCurLevelInfo+0xC
	adds r1, r1, r3
	ldr r0, [r4, #0x40]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x20]
	ldrb r0, [r6]
	mov r1, ip
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x44]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x22]
_08077AF2:
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _08077B56
	ldr r2, _08077B48 @ =gKirbys
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08077B56
	ldr r1, _08077B4C @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r4, #0x20]
	adds r0, r0, r2
	strh r0, [r4, #0x20]
	ldrh r0, [r1, #2]
	ldrh r1, [r4, #0x22]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _08077B50
	adds r0, r7, #0
	bl sub_081564D8
	b _08077B56
	.align 2, 0
_08077B3C: .4byte gCurLevelInfo
_08077B40: .4byte gUnk_0203AD3C
_08077B44: .4byte gCurLevelInfo+0xC
_08077B48: .4byte gKirbys
_08077B4C: .4byte gUnk_0203AD18
_08077B50:
	adds r0, r7, #0
	bl sub_0815604C
_08077B56:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _08077B60
	ldrh r0, [r4, #0x26]
	strh r0, [r4, #4]
_08077B60:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _08077B76
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #1
	rsbs r0, r0, #0
	b _08077B80
_08077B76:
	ldr r0, [r4, #8]
	ldr r1, _08077BA4 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0
_08077B80:
	str r0, [r4, #0x30]
	ldr r3, [sp, #0xc]
	ldrh r0, [r3]
	cmp r0, #0x42
	beq _08077B8E
	cmp r0, #0x35
	bne _08077BA8
_08077B8E:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	b _08077BB6
	.align 2, 0
_08077BA4: .4byte 0xFFFFFDFF
_08077BA8:
	ldr r0, [r4, #8]
	ldr r1, _08077BF4 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _08077BF8 @ =0xEFFFFFFF
	ands r0, r1
_08077BB6:
	str r0, [r4, #0x68]
	ldr r1, [r4, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08077C26
	ldr r0, [r4, #8]
	ldr r1, _08077BFC @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08077C00
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r1, [r0]
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	subs r0, #1
	ldrb r3, [r0]
	rsbs r3, r3, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, #3
	b _08077C16
	.align 2, 0
_08077BF4: .4byte 0x7FFFFFFF
_08077BF8: .4byte 0xEFFFFFFF
_08077BFC: .4byte 0xFFFFFDFF
_08077C00:
	adds r0, r4, #0
	adds r0, #0x34
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, #1
_08077C16:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0803E308
	b _08077C36
_08077C26:
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
_08077C36:
	mov r1, sb
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08077C4A
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
_08077C4A:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08077CB6
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08077C7C
	ldr r2, _08077C74 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _08077C78 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _08077C7E
	.align 2, 0
_08077C74: .4byte gCurLevelInfo
_08077C78: .4byte 0x0000065E
_08077C7C:
	movs r1, #0xff
_08077C7E:
	cmp r1, #0xff
	beq _08077CB6
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08077CC8 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08077CCC @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08077CB6:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08077CC8: .4byte gUnk_02022EB0
_08077CCC: .4byte gUnk_02022F50

	thumb_func_start sub_08077CD0
sub_08077CD0: @ 0x08077CD0
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08077D00 @ =sub_08077D84
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08077D04 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08077D08
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08077D10
	.align 2, 0
_08077D00: .4byte sub_08077D84
_08077D04: .4byte sub_0803DCCC
_08077D08:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08077D10:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08077D40
	ldrh r0, [r4, #6]
	orrs r0, r1
	strh r0, [r4, #6]
_08077D40:
	adds r1, r4, #0
	adds r1, #0xc
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r2, [r0]
	lsls r2, r2, #0xb
	ldr r0, _08077D7C @ =0x06010300
	adds r2, r2, r0
	ldr r0, _08077D80 @ =gUnk_0834FBCC
	ldrh r3, [r0]
	ldrb r0, [r0, #2]
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2b
	strb r0, [r1]
	movs r0, #0
	strh r0, [r4, #8]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08077D7C: .4byte 0x06010300
_08077D80: .4byte gUnk_0834FBCC

	thumb_func_start sub_08077D84
sub_08077D84: @ 0x08077D84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, _08077DAC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08077DB0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08077DB8
	.align 2, 0
_08077DAC: .4byte gCurTask
_08077DB0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08077DB8:
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xc
	ldr r6, [r4, #0x44]
	ldrh r1, [r4, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08077DD6
	ldr r0, [r2]
	bl TaskDestroy
	b _0807824E
_08077DD6:
	ldr r2, _08077DE8 @ =0x00000103
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #3
	beq _08077DEC
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _0807824E
	.align 2, 0
_08077DE8: .4byte 0x00000103
_08077DEC:
	ldr r2, _08077E34 @ =0x0000DBFE
	ands r2, r1
	strh r2, [r4, #6]
	ldr r0, [r6, #8]
	ldr r1, _08077E38 @ =0x00002405
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #6]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r2, r4, #0
	adds r2, #0x42
	strh r0, [r2]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x38]
	adds r0, r6, #0
	adds r0, #0xc0
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x28
	strb r1, [r0]
	ldrh r0, [r6, #0x24]
	subs r0, #0x40
	strh r0, [r4, #0x20]
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	str r2, [sp, #4]
	cmp r0, #0
	beq _08077E3C
	ldrh r0, [r4, #6]
	orrs r0, r1
	b _08077E42
	.align 2, 0
_08077E34: .4byte 0x0000DBFE
_08077E38: .4byte 0x00002405
_08077E3C:
	ldrh r1, [r4, #6]
	ldr r0, _08077EA0 @ =0x0000FFFE
	ands r0, r1
_08077E42:
	strh r0, [r4, #6]
	ldr r2, _08077EA4 @ =gUnk_0834FBCC
	adds r1, r6, #0
	adds r1, #0xd4
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r5, #0x1a]
	ldrh r0, [r1]
	cmp r0, #0x5a
	bne _08077E76
	adds r1, r0, #0
	lsls r1, r1, #2
	adds r1, r1, r2
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrb r1, [r1, #2]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
_08077E76:
	ldrh r2, [r4, #8]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08077EA8
	ldr r0, [r6, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08077EA8
	ldr r0, [r6, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08077E96
	b _0807824E
_08077E96:
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	b _0807824C
	.align 2, 0
_08077EA0: .4byte 0x0000FFFE
_08077EA4: .4byte gUnk_0834FBCC
_08077EA8:
	ldrh r0, [r5, #0xc]
	adds r7, r0, #0
	cmp r7, #0
	bne _08077EB2
	b _0807824E
_08077EB2:
	ldr r0, _08077F00 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r6, #0
	adds r3, #0x56
	movs r0, #1
	mov r8, r0
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	str r3, [sp]
	cmp r2, #0
	bne _08077ED0
	b _08078090
_08077ED0:
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	beq _08077EDE
	b _08078090
_08077EDE:
	ldrb r2, [r5, #0x1c]
	mov sl, r2
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	bne _08077EEA
	b _0807824E
_08077EEA:
	strb r1, [r5, #0x1c]
	ldrh r1, [r4, #6]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08077F04
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _08077F0A
	.align 2, 0
_08077F00: .4byte gUnk_03000510
_08077F04:
	ldr r0, [r5, #8]
	ldr r1, _08077F78 @ =0xFFFFFBFF
	ands r0, r1
_08077F0A:
	str r0, [r5, #8]
	ldrh r3, [r4, #6]
	movs r0, #8
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08077F94
	ldrb r0, [r5, #0x1b]
	ldrb r1, [r5, #0x1a]
	cmp r0, r1
	bne _08077F2C
	ldrh r1, [r5, #0x18]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	beq _08077F3C
_08077F2C:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08077F3C
	strb r2, [r4, #1]
	strh r2, [r4, #2]
	ldr r0, _08077F7C @ =0x0000FFFB
	ands r0, r3
	strh r0, [r4, #6]
_08077F3C:
	adds r0, r5, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08077F80
	ldrh r0, [r4, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r4, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08077F94
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08077F94
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldrh r1, [r4, #6]
	ldr r0, _08077F7C @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #6]
	strb r3, [r4, #1]
	strh r2, [r4, #2]
	adds r0, r5, #0
	bl sub_08155128
	b _08077F94
	.align 2, 0
_08077F78: .4byte 0xFFFFFBFF
_08077F7C: .4byte 0x0000FFFB
_08077F80:
	ldrb r1, [r5, #0x1c]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldrh r1, [r4, #6]
	ldr r0, _08078074 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #6]
_08077F94:
	ldr r1, [r4, #0x34]
	asrs r1, r1, #8
	ldr r2, _08078078 @ =gCurLevelInfo
	ldr r7, _0807807C @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov r8, r3
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	movs r3, #0xc
	adds r3, r3, r2
	mov sb, r3
	add r0, sb
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r6, r4, #0
	adds r6, #0x40
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r0, r0, r1
	movs r1, #0
	mov ip, r1
	strh r0, [r5, #0x10]
	ldr r1, [r4, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r7]
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x41
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r5, #0x12]
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08077FF6
	mov r0, ip
	strb r0, [r6]
	strb r0, [r3]
_08077FF6:
	mov r1, sl
	strb r1, [r5, #0x1c]
	ldrb r0, [r7]
	ldr r3, [sp]
	ldrb r3, [r3]
	cmp r0, r3
	bne _08078026
	mov r1, r8
	muls r1, r0, r1
	add r1, sb
	ldr r0, [r4, #0x34]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldrb r0, [r7]
	mov r1, r8
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x38]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
_08078026:
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08078034
	b _0807824E
_08078034:
	ldr r2, _08078080 @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r1, [sp, #4]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0807804E
	b _0807824E
_0807804E:
	ldr r1, _08078084 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r5, #0x10]
	adds r0, r0, r2
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #2]
	ldrh r3, [r5, #0x12]
	adds r0, r0, r3
	strh r0, [r5, #0x12]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08078088
	adds r0, r5, #0
	bl sub_081564D8
	b _0807824E
	.align 2, 0
_08078074: .4byte 0x0000FFFD
_08078078: .4byte gCurLevelInfo
_0807807C: .4byte gUnk_0203AD3C
_08078080: .4byte gKirbys
_08078084: .4byte gUnk_0203AD18
_08078088:
	adds r0, r5, #0
	bl sub_0815604C
	b _0807824E
_08078090:
	ldrh r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080780A4
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080780AA
_080780A4:
	ldr r0, [r5, #8]
	ldr r1, _08078118 @ =0xFFFFFBFF
	ands r0, r1
_080780AA:
	str r0, [r5, #8]
	ldrh r3, [r4, #6]
	movs r0, #8
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08078134
	ldrb r0, [r5, #0x1b]
	ldrb r1, [r5, #0x1a]
	cmp r0, r1
	bne _080780CC
	ldrh r1, [r5, #0x18]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	beq _080780DC
_080780CC:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _080780DC
	strb r2, [r4, #1]
	strh r2, [r4, #2]
	ldr r0, _0807811C @ =0x0000FFFB
	ands r0, r3
	strh r0, [r4, #6]
_080780DC:
	adds r0, r5, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08078120
	ldrh r0, [r4, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r4, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08078134
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08078134
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldrh r1, [r4, #6]
	ldr r0, _0807811C @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #6]
	strb r3, [r4, #1]
	strh r2, [r4, #2]
	adds r0, r5, #0
	bl sub_08155128
	b _08078134
	.align 2, 0
_08078118: .4byte 0xFFFFFBFF
_0807811C: .4byte 0x0000FFFB
_08078120:
	ldrb r1, [r5, #0x1c]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldrh r1, [r4, #6]
	ldr r0, _08078218 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #6]
_08078134:
	ldr r1, [r4, #0x34]
	asrs r1, r1, #8
	ldr r2, _0807821C @ =gCurLevelInfo
	ldr r3, _08078220 @ =gUnk_0203AD3C
	mov ip, r3
	ldrb r0, [r3]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov r8, r3
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	movs r3, #0xc
	adds r3, r3, r2
	mov sl, r3
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r7, r4, #0
	adds r7, #0x40
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r0, r0, r1
	movs r1, #0
	mov sb, r1
	strh r0, [r5, #0x10]
	ldr r1, [r4, #0x38]
	asrs r1, r1, #8
	mov r3, ip
	ldrb r0, [r3]
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x41
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r5, #0x12]
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _0807819A
	mov r0, sb
	strb r0, [r7]
	strb r0, [r3]
_0807819A:
	mov r1, ip
	ldrb r0, [r1]
	ldr r3, [sp]
	ldrb r3, [r3]
	cmp r0, r3
	bne _080781CA
	mov r1, r8
	muls r1, r0, r1
	add r1, sl
	ldr r0, [r4, #0x34]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	mov r1, ip
	ldrb r0, [r1]
	mov r1, r8
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x38]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
_080781CA:
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08078232
	ldr r2, _08078224 @ =gKirbys
	mov r3, ip
	ldrb r1, [r3]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r1, [sp, #4]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08078232
	ldr r1, _08078228 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r5, #0x10]
	adds r0, r0, r2
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #2]
	ldrh r3, [r5, #0x12]
	adds r0, r0, r3
	strh r0, [r5, #0x12]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0807822C
	adds r0, r5, #0
	bl sub_081564D8
	b _08078232
	.align 2, 0
_08078218: .4byte 0x0000FFFD
_0807821C: .4byte gCurLevelInfo
_08078220: .4byte gUnk_0203AD3C
_08078224: .4byte gKirbys
_08078228: .4byte gUnk_0203AD18
_0807822C:
	adds r0, r5, #0
	bl sub_0815604C
_08078232:
	ldr r0, [r6, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08078244
	ldrh r1, [r4, #8]
	movs r0, #1
	orrs r0, r1
	b _0807824C
_08078244:
	ldrh r1, [r4, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
_0807824C:
	strh r0, [r4, #8]
_0807824E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08078260
sub_08078260: @ 0x08078260
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08078290 @ =sub_08078314
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08078294 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08078298
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080782A0
	.align 2, 0
_08078290: .4byte sub_08078314
_08078294: .4byte sub_0803DCCC
_08078298:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080782A0:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080782D0
	ldrh r0, [r4, #6]
	orrs r0, r1
	strh r0, [r4, #6]
_080782D0:
	adds r1, r4, #0
	adds r1, #0xc
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r2, [r0]
	lsls r2, r2, #0xb
	ldr r0, _0807830C @ =0x06010380
	adds r2, r2, r0
	ldr r0, _08078310 @ =gUnk_0834FD70
	ldrh r3, [r0]
	ldrb r0, [r0, #2]
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2b
	strb r0, [r1]
	ldrh r0, [r5, #0x24]
	strh r0, [r4, #0x20]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807830C: .4byte 0x06010380
_08078310: .4byte gUnk_0834FD70

	thumb_func_start sub_08078314
sub_08078314: @ 0x08078314
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, _0807833C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08078340
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08078348
	.align 2, 0
_0807833C: .4byte gCurTask
_08078340:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08078348:
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xc
	ldr r6, [r4, #0x44]
	ldrh r1, [r4, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08078366
	ldr r0, [r2]
	bl TaskDestroy
	b _080787DE
_08078366:
	ldr r2, _08078378 @ =0x00000103
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #3
	beq _0807837C
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _080787DE
	.align 2, 0
_08078378: .4byte 0x00000103
_0807837C:
	ldr r2, _080783C4 @ =0x0000DBFE
	ands r2, r1
	strh r2, [r4, #6]
	ldr r0, [r6, #8]
	ldr r1, _080783C8 @ =0x00002405
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #6]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r2, r4, #0
	adds r2, #0x42
	strh r0, [r2]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x38]
	adds r0, r6, #0
	adds r0, #0xc0
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x28
	strb r1, [r0]
	ldrh r0, [r6, #0x24]
	strh r0, [r4, #0x20]
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	str r2, [sp, #4]
	cmp r0, #0
	beq _080783CC
	ldrh r0, [r4, #6]
	orrs r0, r1
	b _080783D2
	.align 2, 0
_080783C4: .4byte 0x0000DBFE
_080783C8: .4byte 0x00002405
_080783CC:
	ldrh r1, [r4, #6]
	ldr r0, _08078430 @ =0x0000FFFE
	ands r0, r1
_080783D2:
	strh r0, [r4, #6]
	ldr r2, _08078434 @ =gUnk_0834FD70
	adds r1, r6, #0
	adds r1, #0xd4
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r5, #0x1a]
	ldrh r0, [r1]
	cmp r0, #0x5a
	bne _08078406
	adds r1, r0, #0
	lsls r1, r1, #2
	adds r1, r1, r2
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrb r1, [r1, #2]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
_08078406:
	ldrh r2, [r4, #8]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08078438
	ldr r0, [r6, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08078438
	ldr r0, [r6, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08078426
	b _080787DE
_08078426:
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	b _080787DC
	.align 2, 0
_08078430: .4byte 0x0000FFFE
_08078434: .4byte gUnk_0834FD70
_08078438:
	ldrh r0, [r5, #0xc]
	adds r7, r0, #0
	cmp r7, #0
	bne _08078442
	b _080787DE
_08078442:
	ldr r0, _08078490 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r6, #0
	adds r3, #0x56
	movs r0, #1
	mov r8, r0
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	str r3, [sp]
	cmp r2, #0
	bne _08078460
	b _08078620
_08078460:
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	beq _0807846E
	b _08078620
_0807846E:
	ldrb r2, [r5, #0x1c]
	mov sl, r2
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	bne _0807847A
	b _080787DE
_0807847A:
	strb r1, [r5, #0x1c]
	ldrh r1, [r4, #6]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08078494
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0807849A
	.align 2, 0
_08078490: .4byte gUnk_03000510
_08078494:
	ldr r0, [r5, #8]
	ldr r1, _08078508 @ =0xFFFFFBFF
	ands r0, r1
_0807849A:
	str r0, [r5, #8]
	ldrh r3, [r4, #6]
	movs r0, #8
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08078524
	ldrb r0, [r5, #0x1b]
	ldrb r1, [r5, #0x1a]
	cmp r0, r1
	bne _080784BC
	ldrh r1, [r5, #0x18]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	beq _080784CC
_080784BC:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _080784CC
	strb r2, [r4, #1]
	strh r2, [r4, #2]
	ldr r0, _0807850C @ =0x0000FFFB
	ands r0, r3
	strh r0, [r4, #6]
_080784CC:
	adds r0, r5, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08078510
	ldrh r0, [r4, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r4, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08078524
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08078524
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldrh r1, [r4, #6]
	ldr r0, _0807850C @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #6]
	strb r3, [r4, #1]
	strh r2, [r4, #2]
	adds r0, r5, #0
	bl sub_08155128
	b _08078524
	.align 2, 0
_08078508: .4byte 0xFFFFFBFF
_0807850C: .4byte 0x0000FFFB
_08078510:
	ldrb r1, [r5, #0x1c]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldrh r1, [r4, #6]
	ldr r0, _08078604 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #6]
_08078524:
	ldr r1, [r4, #0x34]
	asrs r1, r1, #8
	ldr r2, _08078608 @ =gCurLevelInfo
	ldr r7, _0807860C @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov r8, r3
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	movs r3, #0xc
	adds r3, r3, r2
	mov sb, r3
	add r0, sb
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r6, r4, #0
	adds r6, #0x40
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r0, r0, r1
	movs r1, #0
	mov ip, r1
	strh r0, [r5, #0x10]
	ldr r1, [r4, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r7]
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x41
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r5, #0x12]
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08078586
	mov r0, ip
	strb r0, [r6]
	strb r0, [r3]
_08078586:
	mov r1, sl
	strb r1, [r5, #0x1c]
	ldrb r0, [r7]
	ldr r3, [sp]
	ldrb r3, [r3]
	cmp r0, r3
	bne _080785B6
	mov r1, r8
	muls r1, r0, r1
	add r1, sb
	ldr r0, [r4, #0x34]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldrb r0, [r7]
	mov r1, r8
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x38]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
_080785B6:
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080785C4
	b _080787DE
_080785C4:
	ldr r2, _08078610 @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r1, [sp, #4]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080785DE
	b _080787DE
_080785DE:
	ldr r1, _08078614 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r5, #0x10]
	adds r0, r0, r2
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #2]
	ldrh r3, [r5, #0x12]
	adds r0, r0, r3
	strh r0, [r5, #0x12]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08078618
	adds r0, r5, #0
	bl sub_081564D8
	b _080787DE
	.align 2, 0
_08078604: .4byte 0x0000FFFD
_08078608: .4byte gCurLevelInfo
_0807860C: .4byte gUnk_0203AD3C
_08078610: .4byte gKirbys
_08078614: .4byte gUnk_0203AD18
_08078618:
	adds r0, r5, #0
	bl sub_0815604C
	b _080787DE
_08078620:
	ldrh r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08078634
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0807863A
_08078634:
	ldr r0, [r5, #8]
	ldr r1, _080786A8 @ =0xFFFFFBFF
	ands r0, r1
_0807863A:
	str r0, [r5, #8]
	ldrh r3, [r4, #6]
	movs r0, #8
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _080786C4
	ldrb r0, [r5, #0x1b]
	ldrb r1, [r5, #0x1a]
	cmp r0, r1
	bne _0807865C
	ldrh r1, [r5, #0x18]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	beq _0807866C
_0807865C:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _0807866C
	strb r2, [r4, #1]
	strh r2, [r4, #2]
	ldr r0, _080786AC @ =0x0000FFFB
	ands r0, r3
	strh r0, [r4, #6]
_0807866C:
	adds r0, r5, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _080786B0
	ldrh r0, [r4, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r4, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _080786C4
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _080786C4
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldrh r1, [r4, #6]
	ldr r0, _080786AC @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #6]
	strb r3, [r4, #1]
	strh r2, [r4, #2]
	adds r0, r5, #0
	bl sub_08155128
	b _080786C4
	.align 2, 0
_080786A8: .4byte 0xFFFFFBFF
_080786AC: .4byte 0x0000FFFB
_080786B0:
	ldrb r1, [r5, #0x1c]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldrh r1, [r4, #6]
	ldr r0, _080787A8 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #6]
_080786C4:
	ldr r1, [r4, #0x34]
	asrs r1, r1, #8
	ldr r2, _080787AC @ =gCurLevelInfo
	ldr r3, _080787B0 @ =gUnk_0203AD3C
	mov ip, r3
	ldrb r0, [r3]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov r8, r3
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	movs r3, #0xc
	adds r3, r3, r2
	mov sl, r3
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r7, r4, #0
	adds r7, #0x40
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r0, r0, r1
	movs r1, #0
	mov sb, r1
	strh r0, [r5, #0x10]
	ldr r1, [r4, #0x38]
	asrs r1, r1, #8
	mov r3, ip
	ldrb r0, [r3]
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x41
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r5, #0x12]
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _0807872A
	mov r0, sb
	strb r0, [r7]
	strb r0, [r3]
_0807872A:
	mov r1, ip
	ldrb r0, [r1]
	ldr r3, [sp]
	ldrb r3, [r3]
	cmp r0, r3
	bne _0807875A
	mov r1, r8
	muls r1, r0, r1
	add r1, sl
	ldr r0, [r4, #0x34]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	mov r1, ip
	ldrb r0, [r1]
	mov r1, r8
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x38]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
_0807875A:
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080787C2
	ldr r2, _080787B4 @ =gKirbys
	mov r3, ip
	ldrb r1, [r3]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r1, [sp, #4]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080787C2
	ldr r1, _080787B8 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r5, #0x10]
	adds r0, r0, r2
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #2]
	ldrh r3, [r5, #0x12]
	adds r0, r0, r3
	strh r0, [r5, #0x12]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080787BC
	adds r0, r5, #0
	bl sub_081564D8
	b _080787C2
	.align 2, 0
_080787A8: .4byte 0x0000FFFD
_080787AC: .4byte gCurLevelInfo
_080787B0: .4byte gUnk_0203AD3C
_080787B4: .4byte gKirbys
_080787B8: .4byte gUnk_0203AD18
_080787BC:
	adds r0, r5, #0
	bl sub_0815604C
_080787C2:
	ldr r0, [r6, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080787D4
	ldrh r1, [r4, #8]
	movs r0, #1
	orrs r0, r1
	b _080787DC
_080787D4:
	ldrh r1, [r4, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
_080787DC:
	strh r0, [r4, #8]
_080787DE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080787F0
sub_080787F0: @ 0x080787F0
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08078820 @ =sub_080788AC
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08078824 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08078828
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08078830
	.align 2, 0
_08078820: .4byte sub_080788AC
_08078824: .4byte sub_0803DCCC
_08078828:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08078830:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08078860
	ldrh r0, [r4, #6]
	orrs r0, r1
	strh r0, [r4, #6]
_08078860:
	adds r1, r4, #0
	adds r1, #0xc
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r2, [r0]
	lsls r2, r2, #0xb
	ldr r0, _080788A4 @ =0x06010400
	adds r2, r2, r0
	ldr r0, _080788A8 @ =gUnk_08350620
	ldrh r3, [r0]
	ldrb r0, [r0, #2]
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2b
	strb r0, [r1]
	ldr r0, [r4, #0x44]
	adds r0, #0xd4
	ldrh r0, [r0]
	strh r0, [r4, #8]
	movs r0, #0
	strh r0, [r4, #0x3c]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080788A4: .4byte 0x06010400
_080788A8: .4byte gUnk_08350620

	thumb_func_start sub_080788AC
sub_080788AC: @ 0x080788AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r2, _080788D4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080788D8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080788E0
	.align 2, 0
_080788D4: .4byte gCurTask
_080788D8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080788E0:
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xc
	ldr r6, [r4, #0x44]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _080788FC
	ldr r0, [r2]
	bl TaskDestroy
	b _08078EEA
_080788FC:
	ldr r2, _08078944 @ =0x0000DBFE
	ands r2, r1
	strh r2, [r4, #6]
	ldr r0, [r6, #8]
	ldr r1, _08078948 @ =0x00002405
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #6]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x38]
	adds r0, r6, #0
	adds r0, #0xc0
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x28
	strb r1, [r0]
	ldrh r0, [r6, #0x24]
	subs r0, #0x40
	strh r0, [r4, #0x20]
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807894C
	ldrh r0, [r4, #6]
	orrs r0, r1
	b _08078952
	.align 2, 0
_08078944: .4byte 0x0000DBFE
_08078948: .4byte 0x00002405
_0807894C:
	ldrh r1, [r4, #6]
	ldr r0, _08078A00 @ =0x0000FFFE
	ands r0, r1
_08078952:
	strh r0, [r4, #6]
	ldr r1, _08078A04 @ =0x00000103
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #9
	beq _08078960
	b _08078CE2
_08078960:
	ldr r0, [r6, #0xc]
	movs r1, #2
	ands r0, r1
	adds r7, r6, #0
	adds r7, #0xd4
	cmp r0, #0
	bne _08078988
	ldrh r1, [r7]
	adds r0, r1, #0
	subs r0, #0x70
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _08078988
	adds r0, r1, #0
	cmp r0, #0x35
	beq _08078988
	cmp r0, #0x34
	beq _08078988
	b _08078CE2
_08078988:
	ldrh r1, [r4, #4]
	movs r3, #4
	ldrsh r2, [r4, r3]
	cmp r2, #0xa0
	ble _08078A4C
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r2, r0
	bgt _080789A2
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080789C6
_080789A2:
	ldr r3, _08078A08 @ =0xFFFFFEBF
	adds r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x27
	bhi _080789B6
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080789C6
_080789B6:
	movs r0, #0xb4
	lsls r0, r0, #1
	cmp r2, r0
	ble _08078A10
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08078A10
_080789C6:
	ldr r1, _08078A0C @ =gUnk_083507F8
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r5, #0x1a]
	movs r1, #8
	ldrsh r0, [r4, r1]
	ldrh r2, [r7]
	cmp r0, r2
	bne _080789F8
	movs r3, #0x3c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _080789F8
	adds r0, r4, #0
	adds r0, #0xc
	ldrb r1, [r4, #1]
	bl sub_0815521C
_080789F8:
	movs r0, #1
	strh r0, [r4, #0x3c]
	b _08078A62
	.align 2, 0
_08078A00: .4byte 0x0000FFFE
_08078A04: .4byte 0x00000103
_08078A08: .4byte 0xFFFFFEBF
_08078A0C: .4byte gUnk_083507F8
_08078A10:
	ldr r1, _08078A48 @ =gUnk_08350620
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r5, #0x1a]
	movs r1, #8
	ldrsh r0, [r4, r1]
	ldrh r2, [r7]
	cmp r0, r2
	bne _08078A42
	movs r3, #0x3c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _08078A42
	adds r0, r4, #0
	adds r0, #0xc
	ldrb r1, [r4, #1]
	bl sub_0815521C
_08078A42:
	movs r0, #0
	strh r0, [r4, #0x3c]
	b _08078A62
	.align 2, 0
_08078A48: .4byte gUnk_08350620
_08078A4C:
	ldr r1, _08078AB0 @ =gUnk_08350620
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r5, #0x1a]
_08078A62:
	ldr r0, _08078AB4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r6, #0
	adds r3, #0x56
	movs r0, #1
	mov r8, r0
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	str r3, [sp]
	cmp r2, #0
	bne _08078A80
	b _08078C40
_08078A80:
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	beq _08078A8E
	b _08078C40
_08078A8E:
	ldrb r2, [r5, #0x1c]
	mov sl, r2
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	bne _08078A9A
	b _08078EEA
_08078A9A:
	strb r1, [r5, #0x1c]
	ldrh r1, [r4, #6]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08078AB8
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _08078ABE
	.align 2, 0
_08078AB0: .4byte gUnk_08350620
_08078AB4: .4byte gUnk_03000510
_08078AB8:
	ldr r0, [r5, #8]
	ldr r1, _08078B2C @ =0xFFFFFBFF
	ands r0, r1
_08078ABE:
	str r0, [r5, #8]
	ldrh r2, [r4, #6]
	movs r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08078B48
	ldrb r0, [r5, #0x1b]
	ldrb r3, [r5, #0x1a]
	cmp r0, r3
	bne _08078ADE
	ldrh r0, [r5, #0x18]
	ldrh r3, [r5, #0xc]
	cmp r0, r3
	beq _08078AEE
_08078ADE:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08078AEE
	strb r1, [r4, #1]
	strh r1, [r4, #2]
	ldr r0, _08078B30 @ =0x0000FFFB
	ands r0, r2
	strh r0, [r4, #6]
_08078AEE:
	adds r0, r5, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08078B34
	ldrh r0, [r4, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r4, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08078B48
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08078B48
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldrh r1, [r4, #6]
	ldr r0, _08078B30 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #6]
	strb r3, [r4, #1]
	strh r2, [r4, #2]
	adds r0, r5, #0
	bl sub_08155128
	b _08078B48
	.align 2, 0
_08078B2C: .4byte 0xFFFFFBFF
_08078B30: .4byte 0x0000FFFB
_08078B34:
	ldrb r1, [r5, #0x1c]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldrh r1, [r4, #6]
	ldr r0, _08078C2C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #6]
_08078B48:
	ldr r1, [r4, #0x34]
	asrs r1, r1, #8
	ldr r2, _08078C30 @ =gCurLevelInfo
	ldr r7, _08078C34 @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov ip, r3
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	movs r3, #0xc
	adds r3, r3, r2
	mov sb, r3
	add r0, sb
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r6, r4, #0
	adds r6, #0x40
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r0, r0, r1
	movs r1, #0
	mov r8, r1
	strh r0, [r5, #0x10]
	ldr r1, [r4, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r7]
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x41
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r5, #0x12]
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08078BAA
	mov r0, r8
	strb r0, [r6]
	strb r0, [r3]
_08078BAA:
	mov r1, sl
	strb r1, [r5, #0x1c]
	ldrb r0, [r7]
	ldr r3, [sp]
	ldrb r3, [r3]
	cmp r0, r3
	bne _08078BDA
	mov r1, ip
	muls r1, r0, r1
	add r1, sb
	ldr r0, [r4, #0x34]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldrb r0, [r7]
	mov r1, ip
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x38]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
_08078BDA:
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08078BE8
	b _08078EEA
_08078BE8:
	ldr r2, _08078C38 @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08078C04
	b _08078EEA
_08078C04:
	ldr r1, _08078C3C @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r5, #0x10]
	adds r0, r0, r2
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #2]
	ldrh r3, [r5, #0x12]
	adds r0, r0, r3
	strh r0, [r5, #0x12]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08078C24
	b _08078EC6
_08078C24:
	adds r0, r5, #0
	bl sub_0815604C
	b _08078EEA
	.align 2, 0
_08078C2C: .4byte 0x0000FFFD
_08078C30: .4byte gCurLevelInfo
_08078C34: .4byte gUnk_0203AD3C
_08078C38: .4byte gKirbys
_08078C3C: .4byte gUnk_0203AD18
_08078C40:
	ldrh r0, [r7]
	strh r0, [r4, #8]
	ldrh r0, [r7]
	cmp r0, #0x73
	beq _08078CCA
	cmp r0, #0x75
	beq _08078CCA
	cmp r0, #0x74
	beq _08078CCA
	movs r0, #4
	ldrsh r1, [r4, r0]
	movs r0, #0xc8
	lsls r0, r0, #1
	cmp r1, r0
	ble _08078C94
	ldr r1, [r6, #0x78]
	ldr r0, _08078C8C @ =sub_0806A03C
	cmp r1, r0
	beq _08078C6C
	ldr r0, _08078C90 @ =sub_0806A308
	cmp r1, r0
	bne _08078C74
_08078C6C:
	adds r1, r6, #0
	adds r1, #0xd9
	movs r0, #1
	strb r0, [r1]
_08078C74:
	ldr r0, [r6, #0xc]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0xc]
	adds r0, r6, #0
	bl sub_0806EB74
	adds r0, r6, #0
	bl sub_08073ECC
	b _08078CE2
	.align 2, 0
_08078C8C: .4byte sub_0806A03C
_08078C90: .4byte sub_0806A308
_08078C94:
	ldr r0, [r6, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08078CF0
	ldr r0, [r6, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08078CF0
	adds r0, r6, #0
	movs r1, #4
	bl sub_08082380
	ldr r0, [r6, #0xc]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0xc]
	adds r0, r6, #0
	bl sub_0806EB74
	ldrh r0, [r4, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r1, r3, #0
	b _08078CEA
_08078CCA:
	ldrb r0, [r6, #1]
	cmp r0, #3
	bhi _08078CF0
	ldr r0, [r6, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08078CF0
	adds r0, r6, #0
	movs r1, #4
	bl sub_08082380
_08078CE2:
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
_08078CEA:
	orrs r0, r1
	strh r0, [r4, #6]
	b _08078EEA
_08078CF0:
	ldrh r0, [r5, #0xc]
	cmp r0, #0
	bne _08078CF8
	b _08078EEA
_08078CF8:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08078D50
	ldrh r0, [r7]
	subs r0, #0x73
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _08078D18
	ldrb r0, [r6, #1]
	cmp r0, #3
	bhi _08078D50
_08078D18:
	ldrh r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08078D3C
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r1, [r0]
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r6, #0
	bl sub_08096464
	b _08078D50
_08078D3C:
	adds r0, r4, #0
	adds r0, #0x30
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r6, #0
	bl sub_08096464
_08078D50:
	ldrh r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08078D64
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _08078D6A
_08078D64:
	ldr r0, [r5, #8]
	ldr r1, _08078DD8 @ =0xFFFFFBFF
	ands r0, r1
_08078D6A:
	str r0, [r5, #8]
	ldrh r2, [r4, #6]
	movs r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08078DF4
	ldrb r0, [r5, #0x1b]
	ldrb r3, [r5, #0x1a]
	cmp r0, r3
	bne _08078D8A
	ldrh r0, [r5, #0x18]
	ldrh r3, [r5, #0xc]
	cmp r0, r3
	beq _08078D9A
_08078D8A:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08078D9A
	strb r1, [r4, #1]
	strh r1, [r4, #2]
	ldr r0, _08078DDC @ =0x0000FFFB
	ands r0, r2
	strh r0, [r4, #6]
_08078D9A:
	adds r0, r5, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08078DE0
	ldrh r0, [r4, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r4, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08078DF4
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08078DF4
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldrh r1, [r4, #6]
	ldr r0, _08078DDC @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #6]
	strb r3, [r4, #1]
	strh r2, [r4, #2]
	adds r0, r5, #0
	bl sub_08155128
	b _08078DF4
	.align 2, 0
_08078DD8: .4byte 0xFFFFFBFF
_08078DDC: .4byte 0x0000FFFB
_08078DE0:
	ldrb r1, [r5, #0x1c]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldrh r1, [r4, #6]
	ldr r0, _08078ED0 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #6]
_08078DF4:
	ldr r1, [r4, #0x34]
	asrs r1, r1, #8
	ldr r2, _08078ED4 @ =gCurLevelInfo
	ldr r7, _08078ED8 @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov ip, r3
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	movs r3, #0xc
	adds r3, r3, r2
	mov sb, r3
	add r0, sb
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r6, r4, #0
	adds r6, #0x40
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r0, r0, r1
	movs r1, #0
	mov r8, r1
	strh r0, [r5, #0x10]
	ldr r1, [r4, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r7]
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x41
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r5, #0x12]
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08078E56
	mov r0, r8
	strb r0, [r6]
	strb r0, [r3]
_08078E56:
	ldrb r0, [r7]
	ldr r1, [sp]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08078E82
	mov r1, ip
	muls r1, r0, r1
	add r1, sb
	ldr r0, [r4, #0x34]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldrb r0, [r7]
	mov r1, ip
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x38]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
_08078E82:
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08078EEA
	ldr r2, _08078EDC @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08078EEA
	ldr r1, _08078EE0 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r5, #0x10]
	adds r0, r0, r2
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #2]
	ldrh r3, [r5, #0x12]
	adds r0, r0, r3
	strh r0, [r5, #0x12]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08078EE4
_08078EC6:
	adds r0, r5, #0
	bl sub_081564D8
	b _08078EEA
	.align 2, 0
_08078ED0: .4byte 0x0000FFFD
_08078ED4: .4byte gCurLevelInfo
_08078ED8: .4byte gUnk_0203AD3C
_08078EDC: .4byte gKirbys
_08078EE0: .4byte gUnk_0203AD18
_08078EE4:
	adds r0, r5, #0
	bl sub_0815604C
_08078EEA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08078EFC
sub_08078EFC: @ 0x08078EFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _08078F34 @ =sub_08070580
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08078F38 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08078F3C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08078F44
	.align 2, 0
_08078F34: .4byte sub_08070580
_08078F38: .4byte sub_0803DCCC
_08078F3C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08078F44:
	adds r4, r0, #0
	bl sub_0803E380
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	movs r0, #0
	mov sb, r0
	strh r0, [r4, #4]
	adds r3, r5, #0
	adds r3, #0x60
	ldrh r1, [r3]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r2, r5, #0
	adds r2, #0x56
	ldrb r0, [r2]
	movs r1, #0x56
	adds r1, r1, r4
	mov ip, r1
	strb r0, [r1]
	ldr r6, _08079048 @ =gUnk_03000510
	ldrb r1, [r6, #4]
	movs r0, #1
	mov r7, ip
	ldrb r7, [r7]
	lsls r0, r7
	movs r6, #0x10
	mov sl, r6
	orrs r0, r6
	ands r1, r0
	str r3, [sp, #8]
	mov r8, r2
	cmp r1, #0
	beq _08078F9E
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_08078F9E:
	ldr r0, _0807904C @ =sub_08079264
	str r0, [r4, #0x78]
	ldr r0, _08079050 @ =sub_08084B70
	str r0, [r4, #0x7c]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r0, _08079054 @ =sub_080794A4
	str r0, [r1]
	adds r1, #4
	ldr r0, _08079058 @ =sub_08084DAC
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x88
	mov r7, sb
	strb r7, [r0]
	adds r0, #1
	mov r1, sb
	strb r1, [r0]
	adds r0, #1
	movs r2, #0
	strh r2, [r0]
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x66
	strh r2, [r0]
	subs r1, #1
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #0x18
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _0807905C @ =0x20002003
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r3, _08079048 @ =gUnk_03000510
	ldrb r1, [r3, #4]
	movs r0, #1
	mov r6, ip
	ldrb r6, [r6]
	lsls r0, r6
	mov r7, sl
	orrs r0, r7
	ands r1, r0
	cmp r1, #0
	beq _08079014
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r4, #8]
_08079014:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _08079064
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r0, [r4, #8]
	orrs r0, r2
	str r0, [r4, #8]
	ldr r0, [r4, #0x40]
	ldr r3, _08079060 @ =0xFFFFF800
	adds r0, r0, r3
	b _0807906C
	.align 2, 0
_08079048: .4byte gUnk_03000510
_0807904C: .4byte sub_08079264
_08079050: .4byte sub_08084B70
_08079054: .4byte sub_080794A4
_08079058: .4byte sub_08084DAC
_0807905C: .4byte 0x20002003
_08079060: .4byte 0xFFFFF800
_08079064:
	ldr r0, [r4, #0x40]
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
_0807906C:
	str r0, [r4, #0x40]
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0803E2B0
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #2
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #2
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	mov r7, r8
	ldrb r2, [r7]
	lsls r2, r2, #0xb
	ldr r0, _080790F0 @ =0x06010400
	adds r2, r2, r0
	ldr r3, _080790F4 @ =0x000001A3
	movs r0, #0
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	ldrb r0, [r7]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2f
	strb r0, [r1]
	ldr r2, _080790F8 @ =0x00000293
	adds r0, r5, #0
	movs r1, #0
	movs r3, #1
	bl sub_0808AE30
	adds r2, r0, #0
	ldr r0, [r2, #0x44]
	cmp r0, #0
	beq _08079134
	ldr r0, [r0, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08079100
	ldr r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r2, #0x34]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r2, #0x3c]
	ldr r0, _080790FC @ =0x0000FFE8
	b _0807910E
	.align 2, 0
_080790F0: .4byte 0x06010400
_080790F4: .4byte 0x000001A3
_080790F8: .4byte 0x00000293
_080790FC: .4byte 0x0000FFE8
_08079100:
	ldr r0, [r2, #0x34]
	ldr r3, _0807912C @ =0xFFFFF800
	adds r0, r0, r3
	str r0, [r2, #0x34]
	ldr r0, _08079130 @ =0x0000FEC0
	strh r0, [r2, #0x3c]
	movs r0, #0x18
_0807910E:
	strh r0, [r2, #4]
	ldr r0, [r2, #0x38]
	movs r6, #0xc0
	lsls r6, r6, #3
	adds r0, r0, r6
	str r0, [r2, #0x38]
	movs r0, #0x20
	strh r0, [r2, #8]
	movs r0, #0x40
	strh r0, [r2, #0x3e]
	ldrh r1, [r2, #6]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #6]
	b _08079156
	.align 2, 0
_0807912C: .4byte 0xFFFFF800
_08079130: .4byte 0x0000FEC0
_08079134:
	movs r0, #0x18
	strh r0, [r2, #4]
	movs r0, #0x20
	strh r0, [r2, #8]
	ldr r0, _080791E8 @ =0x0000FEC0
	strh r0, [r2, #0x3c]
	movs r0, #0x40
	strh r0, [r2, #0x3e]
	ldr r0, [r2, #0x34]
	ldr r7, _080791EC @ =0xFFFFF800
	adds r0, r0, r7
	str r0, [r2, #0x34]
	ldr r0, [r2, #0x38]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r2, #0x38]
_08079156:
	ldr r1, _080791F0 @ =gKirbys
	ldr r0, _080791F4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r3, [sp, #8]
	ldrh r3, [r3]
	cmp r0, r3
	bne _080791BC
	ldrb r0, [r5]
	cmp r0, #0
	bne _0807917E
	mov r6, r8
	ldrb r0, [r6]
	cmp r0, r2
	bne _080791BC
_0807917E:
	ldr r1, _080791F8 @ =gUnk_08D60FA4
	ldr r5, _080791FC @ =gSongTable
	ldr r7, _08079200 @ =0x000004B4
	adds r0, r5, r7
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080791A4
	movs r1, #0x96
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080791BC
_080791A4:
	cmp r3, #0
	beq _080791B6
	ldr r0, _08079204 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080791BC
_080791B6:
	movs r0, #0x96
	bl m4aSongNumStart
_080791BC:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _0807924A
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08079210
	ldr r2, _08079208 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _0807920C @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _08079212
	.align 2, 0
_080791E8: .4byte 0x0000FEC0
_080791EC: .4byte 0xFFFFF800
_080791F0: .4byte gKirbys
_080791F4: .4byte gUnk_0203AD3C
_080791F8: .4byte gUnk_08D60FA4
_080791FC: .4byte gSongTable
_08079200: .4byte 0x000004B4
_08079204: .4byte gUnk_0203AD10
_08079208: .4byte gCurLevelInfo
_0807920C: .4byte 0x0000065E
_08079210:
	movs r1, #0xff
_08079212:
	cmp r1, #0xff
	beq _0807924A
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _0807925C @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r6, [r4]
	adds r1, r1, r6
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08079260 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0807924A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807925C: .4byte gUnk_02022EB0
_08079260: .4byte gUnk_02022F50

	thumb_func_start sub_08079264
sub_08079264: @ 0x08079264
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	adds r2, r4, #0
	adds r2, #0x2a
	ldrb r0, [r2]
	cmp r0, #1
	beq _0807927E
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	b _0807928A
_0807927E:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0807928A
	strb r1, [r2]
_0807928A:
	adds r0, r5, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x88
	cmp r0, #0x35
	beq _0807929C
	movs r0, #1
	strb r0, [r1]
_0807929C:
	ldrb r0, [r1]
	cmp r0, #0
	bne _08079340
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080792D0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080792CC @ =0xFFFFF900
	cmp r0, r2
	blt _080792EC
	movs r2, #0xe0
	lsls r2, r2, #3
	cmp r0, r2
	ble _080792EE
	b _080792EC
	.align 2, 0
_080792CC: .4byte 0xFFFFF900
_080792D0:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #3
	cmp r0, r2
	bgt _080792EC
	ldr r2, _08079318 @ =0xFFFFF900
	cmp r0, r2
	bge _080792EE
_080792EC:
	strh r2, [r1]
_080792EE:
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrh r2, [r0]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0807931C
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	adds r0, #0x30
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xb0
	lsls r3, r3, #1
	cmp r0, r3
	ble _0807938A
	strh r3, [r2]
	b _0807938A
	.align 2, 0
_08079318: .4byte 0xFFFFF900
_0807931C:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0807938A
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x30
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _0807933C @ =0xFFFFFEA0
	cmp r0, r3
	bge _0807938A
	strh r3, [r2]
	b _0807938A
	.align 2, 0
_0807933C: .4byte 0xFFFFFEA0
_08079340:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807936C
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x4e
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _08079368 @ =0xFFFFF900
	cmp r0, r2
	blt _08079388
	movs r2, #0xe0
	lsls r2, r2, #3
	cmp r0, r2
	ble _0807938A
	b _08079388
	.align 2, 0
_08079368: .4byte 0xFFFFF900
_0807936C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x4e
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #3
	cmp r0, r2
	bgt _08079388
	ldr r2, _080793B8 @ =0xFFFFF900
	cmp r0, r2
	bge _0807938A
_08079388:
	strh r2, [r1]
_0807938A:
	ldr r3, [r4, #8]
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _080793F8
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _080793CE
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _080793BC
	adds r0, r2, #0
	adds r0, #0xb
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08079450
	b _080793C8
	.align 2, 0
_080793B8: .4byte 0xFFFFF900
_080793BC:
	adds r0, r2, #0
	subs r0, #0xb
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08079450
_080793C8:
	movs r0, #0
	strh r0, [r1]
	b _08079450
_080793CE:
	ldr r1, _080793F0 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x48
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, _080793F4 @ =0xFFFFD800
	adds r1, r0, r2
	ldr r0, [r4, #0x40]
	cmp r0, r1
	bgt _08079450
	b _0807944E
	.align 2, 0
_080793F0: .4byte gCurLevelInfo
_080793F4: .4byte 0xFFFFD800
_080793F8:
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _0807942E
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _0807941E
	adds r0, r2, #0
	adds r0, #0xb
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08079450
	strh r3, [r1]
	b _08079450
_0807941E:
	adds r0, r2, #0
	subs r0, #0xb
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08079450
	strh r3, [r1]
	b _08079450
_0807942E:
	ldr r1, _08079484 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x50
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0xa0
	lsls r2, r2, #6
	adds r1, r0, r2
	ldr r0, [r4, #0x40]
	cmp r0, r1
	blt _08079450
_0807944E:
	str r1, [r4, #0x40]
_08079450:
	ldrh r2, [r4, #4]
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #4
	ble _08079488
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08079498
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803925C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08079498
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #1
	b _0807949A
	.align 2, 0
_08079484: .4byte gCurLevelInfo
_08079488:
	cmp r0, #1
	bne _08079494
	ldr r0, [r4, #8]
	ldr r1, _080794A0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #8]
_08079494:
	adds r0, r2, #1
	strh r0, [r4, #4]
_08079498:
	movs r0, #0
_0807949A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080794A0: .4byte 0xFFFFFEFF

	thumb_func_start sub_080794A4
sub_080794A4: @ 0x080794A4
	push {r4, lr}
	adds r2, r0, #0
	movs r3, #0
	ldr r0, _080794DC @ =0x000001A3
	strh r0, [r2, #0x1c]
	adds r1, r2, #0
	adds r1, #0x2a
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r2, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	subs r1, #2
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080794E4
	ldr r0, _080794E0 @ =0x00000155
	b _080794E6
	.align 2, 0
_080794DC: .4byte 0x000001A3
_080794E0: .4byte 0x00000155
_080794E4:
	ldr r0, _080794FC @ =0x0000FEAB
_080794E6:
	strh r0, [r1]
	ldr r0, _08079500 @ =sub_08079504
	str r0, [r2, #0x78]
	adds r1, r2, #0
	adds r1, #0x80
	movs r0, #0
	str r0, [r1]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080794FC: .4byte 0x0000FEAB
_08079500: .4byte sub_08079504

	thumb_func_start sub_08079504
sub_08079504: @ 0x08079504
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	ldr r1, [r4, #0x70]
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	beq _08079520
	ldr r3, _08079534 @ =0x00000103
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807952C
_08079520:
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	movs r2, #1
_0807952C:
	cmp r2, #0
	beq _08079538
	movs r0, #1
	b _08079580
	.align 2, 0
_08079534: .4byte 0x00000103
_08079538:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08079568
	ldr r2, _08079564 @ =0x0000028E
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #1
	b _08079580
	.align 2, 0
_08079564: .4byte 0x0000028E
_08079568:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _08079588 @ =0xFFFF8889
	cmp r0, r2
	bge _0807957E
	strh r2, [r1]
_0807957E:
	movs r0, #0
_08079580:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08079588: .4byte 0xFFFF8889

	thumb_func_start sub_0807958C
sub_0807958C: @ 0x0807958C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080795BC @ =sub_08079714
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080795C0 @ =sub_08084E00
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080795C4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080795CC
	.align 2, 0
_080795BC: .4byte sub_08079714
_080795C0: .4byte sub_08084E00
_080795C4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080795CC:
	adds r6, r0, #0
	bl sub_0803E380
	movs r5, #0
	movs r0, #2
	mov ip, r0
	mov r1, ip
	strb r1, [r6]
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r6, #0x44]
	str r4, [r6, #0x70]
	strh r5, [r6, #4]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r7, r6, #0
	adds r7, #0x56
	strb r0, [r7]
	ldr r0, _080796B8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r7]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08079620
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r6, #8]
_08079620:
	adds r0, r6, #0
	adds r0, #0x64
	strh r5, [r0]
	adds r0, #2
	movs r5, #0x80
	strh r5, [r0]
	subs r0, #3
	mov r2, ip
	strb r2, [r0]
	ldr r2, [r6, #8]
	movs r0, #0xa0
	lsls r0, r0, #0x18
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r6, #8]
	ldr r0, [r6, #0x68]
	ldr r1, _080796BC @ =0x30001103
	orrs r0, r1
	str r0, [r6, #0x68]
	ldr r0, [r4, #8]
	ands r0, r3
	cmp r0, #0
	beq _0807965C
	orrs r2, r3
	str r2, [r6, #8]
_0807965C:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #8]
	str r5, [r4, #0x68]
	movs r4, #0xc
	rsbs r4, r4, #0
	movs r5, #0xa
	rsbs r5, r5, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0xc
	bl sub_0803E2B0
	movs r0, #7
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0xc
	bl sub_0803E308
	ldr r0, [r6, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08079702
	ldrb r0, [r7]
	cmp r0, #0xff
	beq _080796C8
	ldr r2, _080796C0 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080796C4 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080796CA
	.align 2, 0
_080796B8: .4byte gUnk_03000510
_080796BC: .4byte 0x30001103
_080796C0: .4byte gCurLevelInfo
_080796C4: .4byte 0x0000065E
_080796C8:
	movs r1, #0xff
_080796CA:
	cmp r1, #0xff
	beq _08079702
	lsls r3, r1, #6
	ldrb r0, [r6]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _0807970C @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r6]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08079710 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r6, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08079702:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807970C: .4byte gUnk_02022EB0
_08079710: .4byte gUnk_02022F50

	thumb_func_start sub_08079714
sub_08079714: @ 0x08079714
	push {r4, r5, lr}
	ldr r0, _08079730 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08079734
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807973C
	.align 2, 0
_08079730: .4byte gCurTask
_08079734:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807973C:
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807974C
	b _0807987A
_0807974C:
	adds r0, r5, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x34
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08079774
	ldr r0, [r5, #8]
	ldr r1, _08079770 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _0807987A
	.align 2, 0
_08079770: .4byte 0xFFFF7FFF
_08079774:
	ldr r1, _080797F8 @ =gKirbys
	ldr r0, _080797FC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080797CC
	ldrb r0, [r5]
	cmp r0, #0
	bne _080797A0
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080797CC
_080797A0:
	ldr r1, _08079800 @ =gUnk_08D60FA4
	ldr r3, _08079804 @ =gSongTable
	ldr r2, _08079808 @ =0x0000048C
	adds r0, r3, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080797C6
	movs r1, #0x91
	lsls r1, r1, #3
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhs _080797CC
_080797C6:
	movs r0, #0x91
	bl m4aSongNumStart
_080797CC:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _0807984E
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08079814
	ldr r2, _0807980C @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _08079810 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _08079816
	.align 2, 0
_080797F8: .4byte gKirbys
_080797FC: .4byte gUnk_0203AD3C
_08079800: .4byte gUnk_08D60FA4
_08079804: .4byte gSongTable
_08079808: .4byte 0x0000048C
_0807980C: .4byte gCurLevelInfo
_08079810: .4byte 0x0000065E
_08079814:
	movs r1, #0xff
_08079816:
	cmp r1, #0xff
	beq _0807984E
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08079880 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08079884 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0807984E:
	ldr r2, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r2, r0
	cmp r2, #0
	bne _08079872
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08079872
	ldr r0, [r4, #8]
	ldr r1, _08079888 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	strh r2, [r4, #4]
_08079872:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
_0807987A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08079880: .4byte gUnk_02022EB0
_08079884: .4byte gUnk_02022F50
_08079888: .4byte 0xFFFBFFFF

	thumb_func_start sub_0807988C
sub_0807988C: @ 0x0807988C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _080798C0 @ =sub_08079A9C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080798C4 @ =sub_08084D28
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080798C8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080798D0
	.align 2, 0
_080798C0: .4byte sub_08079A9C
_080798C4: .4byte sub_08084D28
_080798C8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080798D0:
	adds r5, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	str r6, [r5, #0x70]
	strh r1, [r5, #4]
	adds r4, r6, #0
	adds r4, #0x60
	ldrh r1, [r4]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r3, r6, #0
	adds r3, #0x56
	ldrb r0, [r3]
	adds r7, r5, #0
	adds r7, #0x56
	strb r0, [r7]
	ldr r0, _080799C0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	mov ip, r0
	ldrb r1, [r7]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	mov r8, r3
	cmp r2, #0
	beq _08079922
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_08079922:
	adds r1, r5, #0
	adds r1, #0x64
	movs r0, #0x88
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x66
	movs r3, #0x80
	strh r3, [r0]
	subs r1, #1
	movs r0, #0xa
	strb r0, [r1]
	ldr r2, [r5, #8]
	movs r0, #0xa0
	lsls r0, r0, #0x18
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	ldr r0, [r5, #0x68]
	ldr r1, _080799C4 @ =0x30005003
	orrs r0, r1
	str r0, [r5, #0x68]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r5, #8]
	ldr r0, [r6, #8]
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _08079966
	orrs r2, r1
	str r2, [r5, #8]
_08079966:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r6, #8]
	str r3, [r6, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #8
	bl sub_0803E2B0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E308
	ldr r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08079A0A
	ldrb r0, [r7]
	cmp r0, #0xff
	beq _080799D0
	ldr r2, _080799C8 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080799CC @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080799D2
	.align 2, 0
_080799C0: .4byte gUnk_03000510
_080799C4: .4byte 0x30005003
_080799C8: .4byte gCurLevelInfo
_080799CC: .4byte 0x0000065E
_080799D0:
	movs r1, #0xff
_080799D2:
	cmp r1, #0xff
	beq _08079A0A
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08079A7C @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08079A80 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08079A0A:
	ldr r1, _08079A84 @ =gKirbys
	ldr r0, _08079A88 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r4, [r4]
	cmp r0, r4
	bne _08079A6E
	ldrb r0, [r6]
	cmp r0, #0
	bne _08079A30
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, r2
	bne _08079A6E
_08079A30:
	ldr r1, _08079A8C @ =gUnk_08D60FA4
	ldr r4, _08079A90 @ =gSongTable
	ldr r2, _08079A94 @ =0x000004CC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08079A56
	movs r1, #0x99
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08079A6E
_08079A56:
	cmp r3, #0
	beq _08079A68
	ldr r0, _08079A98 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08079A6E
_08079A68:
	movs r0, #0x99
	bl m4aSongNumStart
_08079A6E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079A7C: .4byte gUnk_02022EB0
_08079A80: .4byte gUnk_02022F50
_08079A84: .4byte gKirbys
_08079A88: .4byte gUnk_0203AD3C
_08079A8C: .4byte gUnk_08D60FA4
_08079A90: .4byte gSongTable
_08079A94: .4byte 0x000004CC
_08079A98: .4byte gUnk_0203AD10

	thumb_func_start sub_08079A9C
sub_08079A9C: @ 0x08079A9C
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08079ABC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08079AC0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08079AC8
	.align 2, 0
_08079ABC: .4byte gCurTask
_08079AC0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08079AC8:
	adds r4, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08079AD6
	b _08079C16
_08079AD6:
	ldr r5, [r4, #0x70]
	adds r0, r5, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0x34
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08079B08
	adds r0, r1, #0
	cmp r0, #0x67
	beq _08079B08
	cmp r0, #0x68
	beq _08079B08
	ldr r0, [r5, #8]
	ldr r1, _08079B04 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	b _08079B96
	.align 2, 0
_08079B04: .4byte 0xFFFF7FFF
_08079B08:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r5, #8]
	movs r1, #8
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0803E2B0
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r3, #4
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08079B46
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	b _08079B4E
_08079B46:
	adds r3, r4, #0
	adds r3, #0x63
	movs r0, #0xa
	strb r0, [r3]
_08079B4E:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08079B9C
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08079B9C
	ldr r1, [r5, #0x44]
	ldr r0, [r5, #0x4c]
	cmp r1, r0
	beq _08079B90
	ldr r0, [r4, #8]
	ldr r1, _08079B8C @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x10
	bl sub_0803E2B0
	b _08079BA4
	.align 2, 0
_08079B8C: .4byte 0xFFFFFDFF
_08079B90:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
_08079B96:
	orrs r0, r1
	str r0, [r4, #8]
	b _08079C16
_08079B9C:
	ldr r0, [r4, #8]
	ldr r1, _08079BD0 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
_08079BA4:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08079C16
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08079BDC
	ldr r2, _08079BD4 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _08079BD8 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _08079BDE
	.align 2, 0
_08079BD0: .4byte 0xFFFFFDFF
_08079BD4: .4byte gCurLevelInfo
_08079BD8: .4byte 0x0000065E
_08079BDC:
	movs r1, #0xff
_08079BDE:
	cmp r1, #0xff
	beq _08079C16
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08079C20 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08079C24 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08079C16:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08079C20: .4byte gUnk_02022EB0
_08079C24: .4byte gUnk_02022F50

	thumb_func_start sub_08079C28
sub_08079C28: @ 0x08079C28
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08079C60 @ =sub_08079D64
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08079C64 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08079C68
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _08079C70
	.align 2, 0
_08079C60: .4byte sub_08079D64
_08079C64: .4byte sub_0803DCCC
_08079C68:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_08079C70:
	adds r0, r7, #0
	bl sub_0803E380
	movs r0, #0
	mov r8, r0
	movs r5, #2
	strb r5, [r7]
	ldr r0, [r4, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r7, #0x44]
	str r4, [r7, #0x70]
	mov r1, r8
	strh r1, [r7, #4]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x60
	strh r1, [r0]
	movs r0, #0x56
	adds r0, r0, r4
	mov sb, r0
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08079D58 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08079CC6
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r7, #8]
_08079CC6:
	adds r1, r7, #0
	adds r1, #0x64
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x66
	mov r1, r8
	strh r1, [r0]
	subs r0, #3
	strb r5, [r0]
	ldr r0, [r4, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r7, #0x44]
	strh r3, [r7, #4]
	ldr r0, [r7, #8]
	movs r1, #0xa0
	lsls r1, r1, #0x18
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #0x68]
	ldr r1, _08079D5C @ =0x30000043
	orrs r0, r1
	str r0, [r7, #0x68]
	movs r5, #8
	rsbs r5, r5, #0
	movs r6, #0xc
	rsbs r6, r6, #0
	movs r4, #0xa
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0xc
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0xc
	bl sub_0803E308
	adds r1, r7, #0
	adds r1, #0x10
	mov r0, sb
	ldrb r2, [r0]
	lsls r2, r2, #0xb
	ldr r0, _08079D60 @ =0x06010340
	adds r2, r2, r0
	mov r0, r8
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r3, #0x2e
	bl sub_080708DC
	adds r1, r7, #0
	adds r1, #0x2f
	movs r0, #0xe
	strb r0, [r1]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079D58: .4byte gUnk_03000510
_08079D5C: .4byte 0x30000043
_08079D60: .4byte 0x06010340

	thumb_func_start sub_08079D64
sub_08079D64: @ 0x08079D64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r2, _08079D8C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08079D90
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08079D98
	.align 2, 0
_08079D8C: .4byte gCurTask
_08079D90:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08079D98:
	adds r7, r0, #0
	ldr r0, [r7, #0x70]
	mov r8, r0
	ldr r1, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08079DB2
	ldr r0, [r2]
	bl TaskDestroy
	b _0807A0FC
_08079DB2:
	movs r5, #0
	movs r2, #0
	ldr r0, _08079E28 @ =gUnk_0203AD44
	ldrb r3, [r0]
	adds r4, r1, #0
	cmp r5, r3
	bhs _08079E0A
	ldr r1, _08079E2C @ =gKirbys
	mov sl, r1
	adds r0, r7, #0
	adds r0, #0x60
	ldrh r6, [r0]
	ldr r0, _08079E30 @ =gUnk_02026D50
	mov ip, r0
	ldr r1, _08079E34 @ =gCurLevelInfo
	mov sb, r1
_08079DD2:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	add r0, sl
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r6
	bne _08079E00
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	add r0, sb
	ldr r1, _08079E38 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, ip
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08079E00
	movs r5, #1
_08079E00:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r3
	blo _08079DD2
_08079E0A:
	cmp r5, #0
	beq _08079E1E
	adds r0, r7, #0
	adds r0, #0x60
	mov r1, r8
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08079E3C
_08079E1E:
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r0, r4
	str r0, [r7, #8]
	b _0807A0FC
	.align 2, 0
_08079E28: .4byte gUnk_0203AD44
_08079E2C: .4byte gKirbys
_08079E30: .4byte gUnk_02026D50
_08079E34: .4byte gCurLevelInfo
_08079E38: .4byte 0x0000065E
_08079E3C:
	movs r2, #4
	orrs r2, r4
	str r2, [r7, #8]
	mov r0, r8
	adds r0, #0xd4
	ldrh r1, [r0]
	mov sl, r0
	cmp r1, #0x42
	bne _08079E6A
	adds r0, r7, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	bne _08079E88
	mov r3, r8
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	ands r2, r1
	cmp r0, r2
	beq _08079E8C
	strh r1, [r7, #4]
	b _08079E8C
_08079E6A:
	cmp r1, #0x43
	bne _08079E7A
	adds r0, r7, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	beq _08079E8C
	b _08079E88
_08079E7A:
	cmp r1, #0x44
	bne _08079E8C
	adds r0, r7, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #2
	beq _08079E8C
_08079E88:
	movs r0, #1
	strh r0, [r7, #4]
_08079E8C:
	ldrh r0, [r7, #4]
	subs r0, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #0
	beq _08079E9E
	b _08079FFC
_08079E9E:
	movs r0, #8
	strh r0, [r7, #4]
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x44]
	mov r2, sl
	ldrh r0, [r2]
	cmp r0, #0x43
	beq _08079F4C
	cmp r0, #0x43
	bgt _08079EBE
	cmp r0, #0x42
	beq _08079EC4
	b _08079FF2
_08079EBE:
	cmp r0, #0x44
	beq _08079FA0
	b _08079FF2
_08079EC4:
	movs r5, #8
	rsbs r5, r5, #0
	movs r6, #0xc
	rsbs r6, r6, #0
	movs r4, #0xa
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0xc
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0xc
	bl sub_0803E308
	mov r3, r8
	ldr r0, [r3, #8]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _08079F20
	ldr r0, [r7, #0x40]
	ldr r1, _08079F1C @ =0xFFFFEE00
	adds r0, r0, r1
	str r0, [r7, #0x40]
	adds r1, r7, #0
	adds r1, #0x50
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x52
	mov r3, sb
	strh r3, [r0]
	subs r0, #0x28
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r7, #8]
	orrs r0, r2
	b _08079FFA
	.align 2, 0
_08079F1C: .4byte 0xFFFFEE00
_08079F20:
	ldr r0, [r7, #0x40]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r7, #0x40]
	adds r1, r7, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x52
	mov r3, sb
	strh r3, [r0]
	subs r0, #0x28
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r7, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _08079FFA
_08079F4C:
	movs r5, #0xc
	rsbs r5, r5, #0
	movs r6, #0x10
	rsbs r6, r6, #0
	movs r4, #0x10
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0xe
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0xe
	bl sub_0803E308
	ldr r0, [r7, #0x44]
	ldr r2, _08079F9C @ =0xFFFFF000
	adds r0, r0, r2
	str r0, [r7, #0x44]
	adds r1, r7, #0
	adds r1, #0x52
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x50
	mov r3, sb
	strh r3, [r0]
	subs r1, #0x28
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r7, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _08079FFA
	.align 2, 0
_08079F9C: .4byte 0xFFFFF000
_08079FA0:
	movs r5, #0xc
	rsbs r5, r5, #0
	movs r6, #8
	rsbs r6, r6, #0
	movs r4, #0x10
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0xe
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0xe
	bl sub_0803E308
	ldr r0, [r7, #0x44]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r7, #0x44]
	adds r1, r7, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x50
	mov r2, sb
	strh r2, [r0]
	subs r1, #0x28
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r7, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _08079FFA
_08079FF2:
	ldr r0, [r7, #8]
	movs r1, #0xa0
	lsls r1, r1, #5
	orrs r0, r1
_08079FFA:
	str r0, [r7, #8]
_08079FFC:
	mov r3, sl
	ldrh r0, [r3]
	subs r0, #0x42
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _0807A014
	ldr r0, [r7, #8]
	movs r1, #0xa0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r7, #8]
_0807A014:
	ldr r0, _0807A044 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, r8
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807A048
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0807A048
	mov r0, r8
	bl sub_0803D9A8
	b _0807A0FC
	.align 2, 0
_0807A044: .4byte gUnk_03000510
_0807A048:
	mov r2, sl
	ldrh r0, [r2]
	cmp r0, #0x43
	beq _0807A0A8
	cmp r0, #0x43
	bgt _0807A05A
	cmp r0, #0x42
	beq _0807A060
	b _0807A0EC
_0807A05A:
	cmp r0, #0x44
	beq _0807A0B8
	b _0807A0EC
_0807A060:
	mov r3, r8
	ldr r0, [r3, #0x44]
	str r0, [r7, #0x44]
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807A07A
	adds r1, r7, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	b _0807A082
_0807A07A:
	adds r1, r7, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x80
_0807A082:
	strh r0, [r1]
	movs r0, #0
	ldrsh r2, [r1, r0]
	mov r1, r8
	ldr r0, [r1, #0x40]
	ldr r1, [r1, #0x48]
	subs r0, r0, r1
	adds r2, r2, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r2
	str r0, [r7, #0x40]
	adds r0, r7, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r7, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	b _0807A0F6
_0807A0A8:
	mov r3, r8
	ldr r0, [r3, #0x40]
	str r0, [r7, #0x40]
	adds r2, r7, #0
	adds r2, #0x52
	ldrh r0, [r2]
	adds r0, #0x80
	b _0807A0C6
_0807A0B8:
	mov r2, r8
	ldr r0, [r2, #0x40]
	str r0, [r7, #0x40]
	adds r2, r7, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x80
_0807A0C6:
	strh r0, [r2]
	adds r0, r7, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	movs r0, #0
	ldrsh r2, [r2, r0]
	mov r1, r8
	ldr r0, [r1, #0x44]
	ldr r1, [r1, #0x4c]
	subs r0, r0, r1
	adds r2, r2, r0
	ldr r0, [r7, #0x44]
	adds r0, r0, r2
	str r0, [r7, #0x44]
	b _0807A0F6
_0807A0EC:
	ldr r0, [r7, #8]
	movs r1, #0xa0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r7, #8]
_0807A0F6:
	adds r0, r7, #0
	bl sub_0806F8BC
_0807A0FC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807A10C
sub_0807A10C: @ 0x0807A10C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _0807A13C @ =sub_0807A280
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807A140 @ =sub_08084D28
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807A144
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807A14C
	.align 2, 0
_0807A13C: .4byte sub_0807A280
_0807A140: .4byte sub_08084D28
_0807A144:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807A14C:
	adds r4, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r7, #2
	strb r7, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r6, r4, #0
	adds r6, #0x56
	strb r0, [r6]
	ldr r0, _0807A220 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r6]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807A19C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0807A19C:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #2
	subs r0, #0x60
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x63
	strb r7, [r0]
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x16
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _0807A224 @ =0x30000043
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _0807A1DC
	orrs r2, r3
	str r2, [r4, #8]
_0807A1DC:
	ldr r0, [r5, #8]
	ldr r1, _0807A228 @ =0x00008040
	orrs r0, r1
	str r0, [r5, #8]
	movs r0, #0x80
	str r0, [r5, #0x68]
	movs r2, #0xa
	rsbs r2, r2, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #8
	bl sub_0803E2B0
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _0807A26E
	ldrb r0, [r6]
	cmp r0, #0xff
	beq _0807A234
	ldr r2, _0807A22C @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _0807A230 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _0807A236
	.align 2, 0
_0807A220: .4byte gUnk_03000510
_0807A224: .4byte 0x30000043
_0807A228: .4byte 0x00008040
_0807A22C: .4byte gCurLevelInfo
_0807A230: .4byte 0x0000065E
_0807A234:
	movs r1, #0xff
_0807A236:
	cmp r1, #0xff
	beq _0807A26E
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _0807A278 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0807A27C @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0807A26E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807A278: .4byte gUnk_02022EB0
_0807A27C: .4byte gUnk_02022F50

	thumb_func_start sub_0807A280
sub_0807A280: @ 0x0807A280
	push {r4, lr}
	ldr r0, _0807A29C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807A2A0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807A2A8
	.align 2, 0
_0807A29C: .4byte gCurTask
_0807A2A0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807A2A8:
	adds r4, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807A2B6
	b _0807A3D4
_0807A2B6:
	ldr r0, [r4, #0x70]
	mov ip, r0
	adds r0, #0xd4
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0x34
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _0807A2E8
	mov r1, ip
	ldr r0, [r1, #8]
	ldr r1, _0807A2E4 @ =0xFFFF7FFF
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _0807A3D4
	.align 2, 0
_0807A2E4: .4byte 0xFFFF7FFF
_0807A2E8:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x34
	bne _0807A2FC
	ldr r0, [r4, #8]
	ldr r1, _0807A2F8 @ =0xFFFFFDFF
	ands r0, r1
	b _0807A304
	.align 2, 0
_0807A2F8: .4byte 0xFFFFFDFF
_0807A2FC:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
_0807A304:
	str r0, [r4, #8]
	mov r0, ip
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x35
	bne _0807A324
	mov r1, ip
	ldrb r0, [r1, #1]
	cmp r0, #7
	bhi _0807A324
	ldr r0, [r1, #8]
	ldr r1, _0807A320 @ =0xFFFF7FFF
	ands r0, r1
	b _0807A32E
	.align 2, 0
_0807A320: .4byte 0xFFFF7FFF
_0807A324:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
_0807A32E:
	mov r2, ip
	str r0, [r2, #8]
	mov r0, ip
	ldr r2, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r2, r0
	cmp r2, #0
	bne _0807A358
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0807A358
	ldr r0, [r4, #8]
	ldr r1, _0807A384 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	strh r2, [r4, #4]
_0807A358:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _0807A3CA
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0807A390
	ldr r2, _0807A388 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _0807A38C @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _0807A392
	.align 2, 0
_0807A384: .4byte 0xFFFBFFFF
_0807A388: .4byte gCurLevelInfo
_0807A38C: .4byte 0x0000065E
_0807A390:
	movs r1, #0xff
_0807A392:
	cmp r1, #0xff
	beq _0807A3CA
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _0807A3DC @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0807A3E0 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0807A3CA:
	mov r1, ip
	ldr r0, [r1, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r4, #0x44]
_0807A3D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807A3DC: .4byte gUnk_02022EB0
_0807A3E0: .4byte gUnk_02022F50

	thumb_func_start sub_0807A3E4
sub_0807A3E4: @ 0x0807A3E4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0807A414 @ =sub_0807A4F4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807A418 @ =sub_08084E44
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807A41C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _0807A424
	.align 2, 0
_0807A414: .4byte sub_0807A4F4
_0807A418: .4byte sub_08084E44
_0807A41C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_0807A424:
	adds r0, r5, #0
	bl sub_0803E380
	movs r1, #0
	movs r6, #2
	strb r6, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x44]
	str r4, [r5, #0x70]
	strh r1, [r5, #4]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807A4EC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807A474
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_0807A474:
	adds r1, r5, #0
	adds r1, #0x64
	movs r0, #0xc8
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #2
	subs r0, #0xa0
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x63
	strb r6, [r0]
	ldr r2, [r5, #8]
	movs r0, #0xa0
	lsls r0, r0, #0x18
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r5, #8]
	ldr r0, [r5, #0x68]
	ldr r1, _0807A4F0 @ =0x30000043
	orrs r0, r1
	str r0, [r5, #0x68]
	ldr r0, [r4, #8]
	ands r0, r3
	cmp r0, #0
	beq _0807A4B4
	orrs r2, r3
	str r2, [r5, #8]
_0807A4B4:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0x80
	str r0, [r4, #0x68]
	movs r2, #9
	rsbs r2, r2, #0
	movs r4, #0xc
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #0xc
	bl sub_0803E2B0
	movs r2, #6
	rsbs r2, r2, #0
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #0xe
	bl sub_0803E308
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0807A4EC: .4byte gUnk_03000510
_0807A4F0: .4byte 0x30000043

	thumb_func_start sub_0807A4F4
sub_0807A4F4: @ 0x0807A4F4
	push {r4, r5, r6, r7, lr}
	ldr r0, _0807A510 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807A514
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807A51C
	.align 2, 0
_0807A510: .4byte gCurTask
_0807A514:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807A51C:
	adds r5, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807A52A
	b _0807A7DA
_0807A52A:
	ldr r4, [r5, #0x70]
	ldr r1, [r5, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #8]
	ldr r2, [r4, #8]
	movs r0, #1
	ands r2, r0
	orrs r2, r1
	str r2, [r5, #8]
	adds r3, r4, #0
	adds r3, #0xd4
	ldrh r1, [r3]
	adds r0, r1, #0
	subs r0, #0x35
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0807A560
	cmp r1, #0x68
	bne _0807A578
	ldrb r0, [r4, #1]
	cmp r0, #4
	bls _0807A578
	cmp r0, #0xb
	bhi _0807A578
_0807A560:
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r5, #8]
	ldr r0, [r4, #8]
	ldr r1, _0807A574 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #8]
	b _0807A5D4
	.align 2, 0
_0807A574: .4byte 0xFFFF7FFF
_0807A578:
	adds r0, r4, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	adds r3, r0, #0
	cmp r1, #0x34
	beq _0807A5A0
	cmp r1, #0x68
	beq _0807A5A0
	ldr r0, [r4, #8]
	ldr r1, _0807A59C @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	b _0807A7DA
	.align 2, 0
_0807A59C: .4byte 0xFFFF7FFF
_0807A5A0:
	ldr r0, [r5, #8]
	ldr r1, _0807A664 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #0x10
	ands r2, r0
	cmp r2, #0
	bne _0807A5D4
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0807A5D4
	ldr r0, [r5, #8]
	ldr r1, _0807A668 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r5, #8]
	strh r2, [r5, #4]
_0807A5D4:
	ldrh r0, [r3]
	cmp r0, #0x68
	beq _0807A5DC
	b _0807A6F8
_0807A5DC:
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _0807A684
	adds r7, r4, #0
	adds r7, #0x56
	ldr r6, _0807A66C @ =gUnk_0203AD3C
	ldrb r0, [r7]
	ldrb r1, [r6]
	cmp r0, r1
	bne _0807A5F6
	movs r0, #0x93
	bl m4aSongNumStop
_0807A5F6:
	ldr r1, _0807A670 @ =gKirbys
	ldrb r2, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0807A612
	b _0807A750
_0807A612:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0807A620
	ldrb r0, [r7]
	cmp r0, r2
	beq _0807A620
	b _0807A750
_0807A620:
	ldr r1, _0807A674 @ =gUnk_08D60FA4
	ldr r6, _0807A678 @ =gSongTable
	ldr r2, _0807A67C @ =0x000004A4
	adds r0, r6, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807A648
	movs r1, #0x94
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _0807A648
	b _0807A750
_0807A648:
	cmp r3, #0
	beq _0807A65A
	ldr r0, _0807A680 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807A750
_0807A65A:
	movs r0, #0x94
	bl m4aSongNumStart
	b _0807A750
	.align 2, 0
_0807A664: .4byte 0xFFFFFDFF
_0807A668: .4byte 0xFFFBFFFF
_0807A66C: .4byte gUnk_0203AD3C
_0807A670: .4byte gKirbys
_0807A674: .4byte gUnk_08D60FA4
_0807A678: .4byte gSongTable
_0807A67C: .4byte 0x000004A4
_0807A680: .4byte gUnk_0203AD10
_0807A684:
	cmp r0, #0xc
	bne _0807A750
	ldr r1, _0807A6E4 @ =gKirbys
	ldr r0, _0807A6E8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807A750
	ldrb r0, [r4]
	cmp r0, #0
	bne _0807A6B4
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0807A750
_0807A6B4:
	ldr r1, _0807A6EC @ =gUnk_08D60FA4
	ldr r3, _0807A6F0 @ =gSongTable
	ldr r2, _0807A6F4 @ =0x0000049C
	adds r0, r3, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807A6DA
	movs r1, #0x93
	lsls r1, r1, #3
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhs _0807A750
_0807A6DA:
	movs r0, #0x93
	bl m4aSongNumStart
	b _0807A750
	.align 2, 0
_0807A6E4: .4byte gKirbys
_0807A6E8: .4byte gUnk_0203AD3C
_0807A6EC: .4byte gUnk_08D60FA4
_0807A6F0: .4byte gSongTable
_0807A6F4: .4byte 0x0000049C
_0807A6F8:
	ldr r1, _0807A77C @ =gKirbys
	ldr r0, _0807A780 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807A750
	ldrb r0, [r4]
	cmp r0, #0
	bne _0807A724
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0807A750
_0807A724:
	ldr r1, _0807A784 @ =gUnk_08D60FA4
	ldr r3, _0807A788 @ =gSongTable
	ldr r2, _0807A78C @ =0x0000049C
	adds r0, r3, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807A74A
	movs r1, #0x93
	lsls r1, r1, #3
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhs _0807A750
_0807A74A:
	movs r0, #0x93
	bl m4aSongNumStart
_0807A750:
	ldr r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _0807A7D2
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0807A798
	ldr r2, _0807A790 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _0807A794 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _0807A79A
	.align 2, 0
_0807A77C: .4byte gKirbys
_0807A780: .4byte gUnk_0203AD3C
_0807A784: .4byte gUnk_08D60FA4
_0807A788: .4byte gSongTable
_0807A78C: .4byte 0x0000049C
_0807A790: .4byte gCurLevelInfo
_0807A794: .4byte 0x0000065E
_0807A798:
	movs r1, #0xff
_0807A79A:
	cmp r1, #0xff
	beq _0807A7D2
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _0807A7E0 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0807A7E4 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0807A7D2:
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x44]
_0807A7DA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807A7E0: .4byte gUnk_02022EB0
_0807A7E4: .4byte gUnk_02022F50

	thumb_func_start sub_0807A7E8
sub_0807A7E8: @ 0x0807A7E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r6, #0
	ldr r0, _0807A820 @ =sub_0807AAD4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807A824 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x7c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807A828
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807A830
	.align 2, 0
_0807A820: .4byte sub_0807AAD4
_0807A824: .4byte sub_0803DCCC
_0807A828:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807A830:
	adds r4, r0, #0
	ldrb r0, [r6]
	cmp r0, #1
	beq _0807A83C
	ldr r5, [r7, #0x44]
	b _0807A83E
_0807A83C:
	ldr r5, [r6, #0x6c]
_0807A83E:
	adds r0, r4, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807A8DC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807A88C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0807A88C:
	str r5, [r4, #0x70]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0xe0
	lsls r1, r1, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0xc
	strb r0, [r1]
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	ldr r0, _0807A8E0 @ =0x20000100
	orrs r2, r0
	movs r0, #0x40
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _0807A8E4 @ =0x20001003
	orrs r0, r1
	str r0, [r4, #0x68]
	ldrb r0, [r6]
	cmp r0, #1
	beq _0807A8E8
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0807A8F0
	.align 2, 0
_0807A8DC: .4byte gUnk_03000510
_0807A8E0: .4byte 0x20000100
_0807A8E4: .4byte 0x20001003
_0807A8E8:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
_0807A8F0:
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807A904
	ldr r0, [r4, #8]
	orrs r0, r1
	b _0807A90C
_0807A904:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0807A90C:
	str r0, [r4, #8]
	ldrb r0, [r6]
	cmp r0, #1
	beq _0807A9AE
	movs r2, #0xb
	rsbs r2, r2, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0xb
	bl sub_0803E2B0
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #3
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #3
	bl sub_0803E308
	ldrh r0, [r7, #6]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	rsbs r1, r1, #0
	asrs r1, r1, #0x1f
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r1, r0
	ldr r0, [r7, #0xc]
	str r0, [r4, #0x10]
	movs r3, #0
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	ldrh r0, [r7, #0x18]
	strh r0, [r4, #0x1c]
	adds r0, r7, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r2, r4, #0
	adds r2, #0x2a
	strb r0, [r2]
	strh r3, [r4, #0x26]
	adds r2, #1
	movs r0, #0xff
	strb r0, [r2]
	adds r2, #1
	movs r0, #0x10
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	adds r2, #3
	strb r0, [r2]
	strh r3, [r4, #0x20]
	strh r3, [r4, #0x22]
	movs r0, #0x84
	lsls r0, r0, #0xb
	orrs r1, r0
	str r1, [r4, #0x18]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_08155128
	movs r0, #0xff
	str r0, [r4, #0x78]
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
	b _0807AAC0
_0807A9AE:
	adds r1, r6, #0
	adds r1, #0x82
	ldrb r0, [r1]
	subs r0, #0x38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r1
	cmp r0, #0x1a
	bhi _0807A9E6
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0x10
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0x10
	bl sub_0803E2B0
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0xc
	bl sub_0803E308
	b _0807AA0A
_0807A9E6:
	movs r2, #0xb
	rsbs r2, r2, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0xb
	bl sub_0803E2B0
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #3
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #3
	bl sub_0803E308
_0807AA0A:
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r1, r0
	rsbs r1, r1, #0
	asrs r1, r1, #0x1f
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r1, r0
	ldr r0, [r6, #0x10]
	str r0, [r4, #0x10]
	movs r2, #0
	movs r0, #0xd0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	ldrh r0, [r6, #0x1c]
	strh r0, [r4, #0x1c]
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x2a
	strb r0, [r3]
	strh r2, [r4, #0x26]
	adds r3, #1
	movs r0, #0xff
	strb r0, [r3]
	adds r3, #1
	movs r0, #0x10
	mov ip, r0
	mov r0, ip
	strb r0, [r3]
	adds r5, r6, #0
	adds r5, #0x2f
	ldrb r0, [r5]
	adds r7, r4, #0
	adds r7, #0x2f
	strb r0, [r7]
	strh r2, [r4, #0x20]
	strh r2, [r4, #0x22]
	movs r0, #0x84
	lsls r0, r0, #0xb
	orrs r1, r0
	str r1, [r4, #0x18]
	ldrb r0, [r5]
	adds r5, r3, #0
	cmp r0, #0xf
	bne _0807AA9A
	ldr r0, [r6, #0xc]
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _0807AA84
	ldr r0, _0807AA80 @ =gUnk_08351648
	movs r2, #0x97
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	b _0807AA94
	.align 2, 0
_0807AA80: .4byte gUnk_08351648
_0807AA84:
	ldr r2, _0807AAD0 @ =gUnk_08351648
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0, #8]
_0807AA94:
	bl sub_0803DF24
	strb r0, [r7]
_0807AA9A:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_08155128
	movs r2, #0
	strb r2, [r5]
	str r2, [r6, #0x10]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r6, #8]
	strh r2, [r4, #4]
	mov r1, r8
	ldrb r0, [r1]
	str r0, [r4, #0x78]
_0807AAC0:
	adds r0, r4, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807AAD0: .4byte gUnk_08351648

	thumb_func_start sub_0807AAD4
sub_0807AAD4: @ 0x0807AAD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r0, _0807AAF4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807AAF8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807AB00
	.align 2, 0
_0807AAF4: .4byte gCurTask
_0807AAF8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807AB00:
	adds r5, r0, #0
	ldr r6, [r5, #0x70]
	ldr r3, [r5, #0x78]
	cmp r3, #0xff
	bne _0807AB0C
	b _0807AC6C
_0807AB0C:
	ldr r2, _0807AB80 @ =gKirbys
	ldr r0, _0807AB84 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807ABDC
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0807AB94
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0807AC00
	ldr r1, _0807AB88 @ =gUnk_08351648
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r5, #0x1c]
	adds r2, r5, #0
	adds r2, #0x2a
	ldrb r2, [r2]
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _0807AB8C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _0807AB90 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _0807AC00
	.align 2, 0
_0807AB80: .4byte gKirbys
_0807AB84: .4byte gUnk_0203AD3C
_0807AB88: .4byte gUnk_08351648
_0807AB8C: .4byte 0xFFF7FFFF
_0807AB90: .4byte 0x0400000A
_0807AB94:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0807AC00
	ldr r1, _0807ABD0 @ =gUnk_08351648
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _0807ABD4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _0807ABD8 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _0807AC00
	.align 2, 0
_0807ABD0: .4byte gUnk_08351648
_0807ABD4: .4byte 0xFFF7FFFF
_0807ABD8: .4byte 0x0400000A
_0807ABDC:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _0807ABF6
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _0807ABF6
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_0807ABF6:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_0807AC00:
	ldr r2, _0807AC58 @ =gKirbys
	ldr r0, _0807AC5C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807AC64
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _0807AC6C
	ldr r7, _0807AC60 @ =gUnk_08351648
	ldr r1, [r5, #0x78]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0, #8]
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0807AC6C
	ldr r1, [r5, #0x78]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0, #8]
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _0807AC6C
	.align 2, 0
_0807AC58: .4byte gKirbys
_0807AC5C: .4byte gUnk_0203AD3C
_0807AC60: .4byte gUnk_08351648
_0807AC64:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_0807AC6C:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807AC7A
	b _0807AEE6
_0807AC7A:
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807AC92
	ldr r0, [r5, #8]
	orrs r0, r1
	b _0807AC9A
_0807AC92:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0807AC9A:
	str r0, [r5, #8]
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	adds r7, r0, #0
	cmp r1, #0x71
	bne _0807ACAA
	b _0807ADE8
_0807ACAA:
	cmp r1, #0x71
	bgt _0807ACBE
	cmp r1, #0x6f
	beq _0807ACE4
	cmp r1, #0x6f
	bgt _0807AD58
	cmp r1, #0x1e
	bne _0807ACBC
	b _0807AE5E
_0807ACBC:
	b _0807AE48
_0807ACBE:
	cmp r1, #0x72
	bne _0807ACC4
	b _0807ADB4
_0807ACC4:
	cmp r1, #0x75
	ble _0807ACCA
	b _0807AE48
_0807ACCA:
	movs r0, #0
	strh r0, [r5, #4]
	bl sub_0807AEF4
	ldr r0, _0807ACDC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0807ACE0 @ =sub_0807AEF4
	str r0, [r1, #8]
	b _0807AEE6
	.align 2, 0
_0807ACDC: .4byte gCurTask
_0807ACE0: .4byte sub_0807AEF4
_0807ACE4:
	ldrb r4, [r6, #1]
	cmp r4, #1
	bne _0807AD26
	adds r0, r6, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0807AD26
	ldr r2, _0807AD44 @ =0x00000293
	adds r0, r6, #0
	movs r1, #0
	movs r3, #1
	bl sub_0808AE30
	adds r1, r0, #0
	ldr r3, _0807AD48 @ =0x0000FDC0
	strh r3, [r1, #0x3c]
	movs r0, #0x40
	strh r0, [r1, #0x3e]
	movs r2, #0x18
	strh r2, [r1, #4]
	movs r0, #0x20
	strh r0, [r1, #8]
	ldr r0, [r6, #8]
	ands r0, r4
	cmp r0, #0
	beq _0807AD26
	rsbs r0, r3, #0
	strh r0, [r1, #0x3c]
	rsbs r0, r2, #0
	strh r0, [r1, #4]
_0807AD26:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807AD50
	ldr r2, _0807AD4C @ =gUnk_08350CB0
	ldrb r0, [r6, #1]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x40]
	subs r0, r0, r1
	b _0807AE2A
	.align 2, 0
_0807AD44: .4byte 0x00000293
_0807AD48: .4byte 0x0000FDC0
_0807AD4C: .4byte gUnk_08350CB0
_0807AD50:
	ldr r2, _0807AD54 @ =gUnk_08350CB0
	b _0807AE1A
	.align 2, 0
_0807AD54: .4byte gUnk_08350CB0
_0807AD58:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807AD7C
	ldr r2, _0807AD78 @ =gUnk_08350CC8
	ldrb r0, [r6, #1]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x40]
	subs r0, r0, r1
	b _0807AD8E
	.align 2, 0
_0807AD78: .4byte gUnk_08350CC8
_0807AD7C:
	ldr r2, _0807ADB0 @ =gUnk_08350CC8
	ldrb r0, [r6, #1]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
_0807AD8E:
	str r0, [r5, #0x40]
	ldrb r0, [r6, #1]
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5, #0x18]
	b _0807AE5E
	.align 2, 0
_0807ADB0: .4byte gUnk_08350CC8
_0807ADB4:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5, #0x18]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807ADE0
	ldr r2, _0807ADDC @ =gUnk_08350CDC
	ldrb r0, [r6, #1]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x40]
	subs r0, r0, r1
	b _0807AE2A
	.align 2, 0
_0807ADDC: .4byte gUnk_08350CDC
_0807ADE0:
	ldr r2, _0807ADE4 @ =gUnk_08350CDC
	b _0807AE1A
	.align 2, 0
_0807ADE4: .4byte gUnk_08350CDC
_0807ADE8:
	ldr r0, [r5, #0x18]
	ldr r1, _0807AE10 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r5, #0x18]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807AE18
	ldr r2, _0807AE14 @ =gUnk_08350CD2
	ldrb r0, [r6, #1]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x40]
	subs r0, r0, r1
	b _0807AE2A
	.align 2, 0
_0807AE10: .4byte 0xFFFFF7FF
_0807AE14: .4byte gUnk_08350CD2
_0807AE18:
	ldr r2, _0807AE44 @ =gUnk_08350CD2
_0807AE1A:
	ldrb r0, [r6, #1]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
_0807AE2A:
	str r0, [r5, #0x40]
	ldrb r0, [r6, #1]
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	b _0807AE5E
	.align 2, 0
_0807AE44: .4byte gUnk_08350CD2
_0807AE48:
	ldr r2, _0807AECC @ =0x00000292
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
_0807AE5E:
	ldrh r0, [r5, #4]
	adds r1, r0, #1
	strh r1, [r5, #4]
	ldrh r0, [r7]
	subs r0, #0x70
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _0807AEE0
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0807AEE0
	adds r0, r6, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0807AEE0
	ldr r2, _0807AED0 @ =0x00000293
	adds r0, r6, #0
	movs r1, #0
	movs r3, #2
	bl sub_0808AE30
	adds r2, r0, #0
	movs r4, #0xfd
	lsls r4, r4, #8
	strh r4, [r2, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2, #0x3e]
	movs r3, #0x60
	strh r3, [r2, #4]
	ldr r0, _0807AED4 @ =0x0000FFC0
	strh r0, [r2, #8]
	ldr r0, [r2, #0x38]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r2, #0x38]
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807AED8
	rsbs r0, r4, #0
	strh r0, [r2, #0x3c]
	rsbs r0, r3, #0
	strh r0, [r2, #4]
	ldr r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #4
	b _0807AEDC
	.align 2, 0
_0807AECC: .4byte 0x00000292
_0807AED0: .4byte 0x00000293
_0807AED4: .4byte 0x0000FFC0
_0807AED8:
	ldr r0, [r2, #0x34]
	ldr r1, _0807AEF0 @ =0xFFFFF800
_0807AEDC:
	adds r0, r0, r1
	str r0, [r2, #0x34]
_0807AEE0:
	adds r0, r5, #0
	bl sub_0806F8BC
_0807AEE6:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807AEF0: .4byte 0xFFFFF800

	thumb_func_start sub_0807AEF4
sub_0807AEF4: @ 0x0807AEF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r0, _0807AF14 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807AF18
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807AF20
	.align 2, 0
_0807AF14: .4byte gCurTask
_0807AF18:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807AF20:
	adds r5, r0, #0
	ldr r6, [r5, #0x70]
	ldr r3, [r5, #0x78]
	cmp r3, #0xff
	bne _0807AF2C
	b _0807B08C
_0807AF2C:
	ldr r2, _0807AFA0 @ =gKirbys
	ldr r0, _0807AFA4 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807AFFC
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0807AFB4
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0807B020
	ldr r1, _0807AFA8 @ =gUnk_08351648
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r5, #0x1c]
	adds r2, r5, #0
	adds r2, #0x2a
	ldrb r2, [r2]
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _0807AFAC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _0807AFB0 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _0807B020
	.align 2, 0
_0807AFA0: .4byte gKirbys
_0807AFA4: .4byte gUnk_0203AD3C
_0807AFA8: .4byte gUnk_08351648
_0807AFAC: .4byte 0xFFF7FFFF
_0807AFB0: .4byte 0x0400000A
_0807AFB4:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0807B020
	ldr r1, _0807AFF0 @ =gUnk_08351648
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _0807AFF4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _0807AFF8 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _0807B020
	.align 2, 0
_0807AFF0: .4byte gUnk_08351648
_0807AFF4: .4byte 0xFFF7FFFF
_0807AFF8: .4byte 0x0400000A
_0807AFFC:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _0807B016
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _0807B016
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_0807B016:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_0807B020:
	ldr r2, _0807B078 @ =gKirbys
	ldr r0, _0807B07C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807B084
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _0807B08C
	ldr r7, _0807B080 @ =gUnk_08351648
	ldr r1, [r5, #0x78]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0, #8]
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0807B08C
	ldr r1, [r5, #0x78]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0, #8]
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _0807B08C
	.align 2, 0
_0807B078: .4byte gKirbys
_0807B07C: .4byte gUnk_0203AD3C
_0807B080: .4byte gUnk_08351648
_0807B084:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_0807B08C:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807B09A
	b _0807B1F4
_0807B09A:
	ldr r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807B0AA
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #8]
_0807B0AA:
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807B0C2
	ldr r0, [r5, #8]
	orrs r0, r1
	b _0807B0CA
_0807B0C2:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0807B0CA:
	str r0, [r5, #8]
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	adds r3, r0, #0
	cmp r1, #0x74
	beq _0807B114
	cmp r1, #0x74
	bgt _0807B0E2
	cmp r1, #0x73
	beq _0807B0E8
	b _0807B1A0
_0807B0E2:
	cmp r1, #0x75
	beq _0807B140
	b _0807B1A0
_0807B0E8:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807B10C
	ldr r2, _0807B108 @ =gUnk_08350CE6
	ldrb r0, [r6, #1]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x40]
	subs r0, r0, r1
	b _0807B176
	.align 2, 0
_0807B108: .4byte gUnk_08350CE6
_0807B10C:
	ldr r2, _0807B110 @ =gUnk_08350CE6
	b _0807B166
	.align 2, 0
_0807B110: .4byte gUnk_08350CE6
_0807B114:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807B138
	ldr r2, _0807B134 @ =gUnk_08350CEE
	ldrb r0, [r6, #1]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x40]
	subs r0, r0, r1
	b _0807B176
	.align 2, 0
_0807B134: .4byte gUnk_08350CEE
_0807B138:
	ldr r2, _0807B13C @ =gUnk_08350CEE
	b _0807B166
	.align 2, 0
_0807B13C: .4byte gUnk_08350CEE
_0807B140:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807B164
	ldr r2, _0807B160 @ =gUnk_08350CF6
	ldrb r0, [r6, #1]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x40]
	subs r0, r0, r1
	b _0807B176
	.align 2, 0
_0807B160: .4byte gUnk_08350CF6
_0807B164:
	ldr r2, _0807B19C @ =gUnk_08350CF6
_0807B166:
	ldrb r0, [r6, #1]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
_0807B176:
	str r0, [r5, #0x40]
	ldrb r0, [r6, #1]
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldrb r0, [r6, #1]
	cmp r0, #3
	bne _0807B1B6
	ldrh r1, [r3]
	adds r0, r5, #0
	bl sub_0807B200
	b _0807B1B6
	.align 2, 0
_0807B19C: .4byte gUnk_08350CF6
_0807B1A0:
	ldr r2, _0807B1FC @ =0x00000292
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
_0807B1B6:
	ldrb r0, [r6, #1]
	cmp r0, #2
	bne _0807B1C2
	adds r0, r5, #0
	bl sub_0807BAE0
_0807B1C2:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0807B1EE
	ldr r1, [r5, #0x40]
	str r1, [r5, #0x48]
	ldr r2, [r5, #0x44]
	str r2, [r5, #0x4c]
	adds r0, r5, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r1, r0
	str r1, [r5, #0x40]
	adds r0, r5, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r2, r2, r0
	str r2, [r5, #0x44]
_0807B1EE:
	adds r0, r5, #0
	bl sub_0806F8BC
_0807B1F4:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807B1FC: .4byte 0x00000292

	thumb_func_start sub_0807B200
sub_0807B200: @ 0x0807B200
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r7, r5, #0
	ldr r0, [r4, #8]
	ldr r1, _0807B234 @ =0xFFFFFEFF
	ands r0, r1
	ldr r1, _0807B238 @ =0xFDFFFFFF
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r6, #0
	strh r6, [r4, #4]
	adds r0, r4, #0
	bl sub_0809D8C8
	cmp r5, #0x74
	beq _0807B256
	cmp r5, #0x74
	bgt _0807B23C
	cmp r5, #0x73
	beq _0807B242
	b _0807B27A
	.align 2, 0
_0807B234: .4byte 0xFFFFFEFF
_0807B238: .4byte 0xFDFFFFFF
_0807B23C:
	cmp r7, #0x75
	beq _0807B268
	b _0807B27A
_0807B242:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xe5
	lsls r1, r1, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xe5
	lsls r0, r0, #1
	b _0807B278
_0807B256:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x52
	strh r6, [r0]
	b _0807B27A
_0807B268:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xe5
	lsls r1, r1, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	ldr r0, _0807B29C @ =0x0000FE36
_0807B278:
	strh r0, [r1]
_0807B27A:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807B28E
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_0807B28E:
	ldr r0, _0807B2A0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0807B2A4 @ =sub_0807B2A8
	str r0, [r1, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807B29C: .4byte 0x0000FE36
_0807B2A0: .4byte gCurTask
_0807B2A4: .4byte sub_0807B2A8

	thumb_func_start sub_0807B2A8
sub_0807B2A8: @ 0x0807B2A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r0, _0807B2D0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807B2D4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807B2DC
	.align 2, 0
_0807B2D0: .4byte gCurTask
_0807B2D4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807B2DC:
	adds r5, r0, #0
	ldr r3, [r5, #0x78]
	cmp r3, #0xff
	bne _0807B2E6
	b _0807B448
_0807B2E6:
	ldr r2, _0807B35C @ =gKirbys
	ldr r0, _0807B360 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807B3B8
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0807B370
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0807B3DC
	ldr r1, _0807B364 @ =gUnk_08351648
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r5, #0x1c]
	adds r2, r5, #0
	adds r2, #0x2a
	ldrb r2, [r2]
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _0807B368 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _0807B36C @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _0807B3DC
	.align 2, 0
_0807B35C: .4byte gKirbys
_0807B360: .4byte gUnk_0203AD3C
_0807B364: .4byte gUnk_08351648
_0807B368: .4byte 0xFFF7FFFF
_0807B36C: .4byte 0x0400000A
_0807B370:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0807B3DC
	ldr r1, _0807B3AC @ =gUnk_08351648
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _0807B3B0 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _0807B3B4 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _0807B3DC
	.align 2, 0
_0807B3AC: .4byte gUnk_08351648
_0807B3B0: .4byte 0xFFF7FFFF
_0807B3B4: .4byte 0x0400000A
_0807B3B8:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _0807B3D2
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _0807B3D2
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_0807B3D2:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_0807B3DC:
	ldr r2, _0807B434 @ =gKirbys
	ldr r0, _0807B438 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807B440
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _0807B448
	ldr r6, _0807B43C @ =gUnk_08351648
	ldr r1, [r5, #0x78]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrh r0, [r0, #8]
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0807B448
	ldr r1, [r5, #0x78]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrh r0, [r0, #8]
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _0807B448
	.align 2, 0
_0807B434: .4byte gKirbys
_0807B438: .4byte gUnk_0203AD3C
_0807B43C: .4byte gUnk_08351648
_0807B440:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_0807B448:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807B456
	b _0807B5BA
_0807B456:
	ldr r1, [r5, #8]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0807B468
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #8]
_0807B468:
	ldr r0, [r5, #0x58]
	ands r0, r2
	cmp r0, #0
	beq _0807B490
	ldr r0, [r5, #0xc]
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	bne _0807B4B0
	ldr r2, _0807B48C @ =0x00000296
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r5, #0xc]
	orrs r0, r4
	b _0807B4AE
	.align 2, 0
_0807B48C: .4byte 0x00000296
_0807B490:
	ldr r0, [r5, #0xc]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807B4B0
	ldr r2, _0807B510 @ =0x00000296
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r5, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0807B4AE:
	str r0, [r5, #0xc]
_0807B4B0:
	ldrh r1, [r5, #4]
	movs r0, #0xf
	ands r0, r1
	strh r0, [r5, #4]
	ldr r2, _0807B514 @ =gUnk_08350CFE
	movs r1, #4
	ldrsh r0, [r5, r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r3, r5, #0
	adds r3, #0x54
	strb r1, [r3]
	ldrb r0, [r0]
	mov sl, r0
	movs r1, #4
	ldrsh r0, [r5, r1]
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x55
	strb r1, [r2]
	ldrb r0, [r0]
	mov sb, r0
	ldrh r0, [r5, #4]
	adds r1, r0, #1
	strh r1, [r5, #4]
	movs r0, #3
	ands r0, r1
	adds r7, r3, #0
	mov r8, r2
	cmp r0, #0
	bne _0807B526
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0807B518
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	eors r0, r1
	str r0, [r5, #0x18]
	adds r0, r5, #0
	bl sub_080995AC
	b _0807B526
	.align 2, 0
_0807B510: .4byte 0x00000296
_0807B514: .4byte gUnk_08350CFE
_0807B518:
	ldr r0, [r5, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_08099828
_0807B526:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	adds r6, r5, #0
	adds r6, #0x52
	cmp r0, #0
	bne _0807B552
	ldr r1, [r5, #0x40]
	str r1, [r5, #0x48]
	ldr r2, [r5, #0x44]
	str r2, [r5, #0x4c]
	adds r0, r5, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r1, r0
	str r1, [r5, #0x40]
	movs r1, #0
	ldrsh r0, [r6, r1]
	subs r2, r2, r0
	str r2, [r5, #0x44]
_0807B552:
	ldrh r4, [r6]
	adds r0, r5, #0
	bl sub_0809D8C8
	strh r4, [r6]
	adds r0, r5, #0
	bl sub_0806F8BC
	mov r3, sl
	strb r3, [r7]
	mov r1, sb
	mov r0, r8
	strb r1, [r0]
	movs r3, #0
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bge _0807B57E
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r2, [r0]
	movs r1, #0xf7
	b _0807B58A
_0807B57E:
	cmp r0, #0
	ble _0807B592
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r2, [r0]
	movs r1, #0xfb
_0807B58A:
	ands r1, r2
	strb r1, [r0]
	adds r2, r0, #0
	b _0807B5A6
_0807B592:
	ldr r1, [r5, #0x4c]
	ldr r0, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x62
	cmp r1, r0
	bne _0807B5A6
	ldrb r1, [r2]
	movs r0, #0xf3
	ands r0, r1
	strb r0, [r2]
_0807B5A6:
	ldrb r0, [r2]
	cmp r0, #0
	beq _0807B5BA
	movs r0, #2
	adds r1, r5, #0
	bl sub_0806FE64
	adds r0, r5, #0
	bl sub_0807B5CC
_0807B5BA:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807B5CC
sub_0807B5CC: @ 0x0807B5CC
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0xc0
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r2, #8]
	movs r0, #0
	strh r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0807B602
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	strh r1, [r0]
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0xe5
	lsls r0, r0, #1
	b _0807B63A
_0807B602:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0807B624
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	strh r1, [r0]
	adds r1, r2, #0
	adds r1, #0x52
	ldr r0, _0807B620 @ =0x0000FE36
	b _0807B63A
	.align 2, 0
_0807B620: .4byte 0x0000FE36
_0807B624:
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	rsbs r1, r1, #0
	strh r1, [r0]
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
_0807B63A:
	strh r0, [r1]
	ldr r0, _0807B6B4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0807B6B8 @ =sub_0807B6D4
	str r0, [r1, #8]
	ldr r1, _0807B6BC @ =gKirbys
	ldr r0, _0807B6C0 @ =gUnk_0203AD3C
	ldrb r3, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r2, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807B6AE
	ldrb r0, [r2]
	cmp r0, #0
	bne _0807B670
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r3
	bne _0807B6AE
_0807B670:
	ldr r1, _0807B6C4 @ =gUnk_08D60FA4
	ldr r4, _0807B6C8 @ =gSongTable
	ldr r2, _0807B6CC @ =0x00000504
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807B696
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807B6AE
_0807B696:
	cmp r3, #0
	beq _0807B6A8
	ldr r0, _0807B6D0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807B6AE
_0807B6A8:
	movs r0, #0xa0
	bl m4aSongNumStart
_0807B6AE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807B6B4: .4byte gCurTask
_0807B6B8: .4byte sub_0807B6D4
_0807B6BC: .4byte gKirbys
_0807B6C0: .4byte gUnk_0203AD3C
_0807B6C4: .4byte gUnk_08D60FA4
_0807B6C8: .4byte gSongTable
_0807B6CC: .4byte 0x00000504
_0807B6D0: .4byte gUnk_0203AD10

	thumb_func_start sub_0807B6D4
sub_0807B6D4: @ 0x0807B6D4
	push {r4, r5, r6, lr}
	sub sp, #0x28
	ldr r0, _0807B6F4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807B6F8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807B700
	.align 2, 0
_0807B6F4: .4byte gCurTask
_0807B6F8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807B700:
	adds r5, r0, #0
	ldr r3, [r5, #0x78]
	cmp r3, #0xff
	bne _0807B70A
	b _0807B86C
_0807B70A:
	ldr r2, _0807B780 @ =gKirbys
	ldr r0, _0807B784 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807B7DC
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0807B794
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0807B800
	ldr r1, _0807B788 @ =gUnk_08351648
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r5, #0x1c]
	adds r2, r5, #0
	adds r2, #0x2a
	ldrb r2, [r2]
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _0807B78C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _0807B790 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _0807B800
	.align 2, 0
_0807B780: .4byte gKirbys
_0807B784: .4byte gUnk_0203AD3C
_0807B788: .4byte gUnk_08351648
_0807B78C: .4byte 0xFFF7FFFF
_0807B790: .4byte 0x0400000A
_0807B794:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0807B800
	ldr r1, _0807B7D0 @ =gUnk_08351648
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _0807B7D4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _0807B7D8 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _0807B800
	.align 2, 0
_0807B7D0: .4byte gUnk_08351648
_0807B7D4: .4byte 0xFFF7FFFF
_0807B7D8: .4byte 0x0400000A
_0807B7DC:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _0807B7F6
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _0807B7F6
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_0807B7F6:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_0807B800:
	ldr r2, _0807B858 @ =gKirbys
	ldr r0, _0807B85C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807B864
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _0807B86C
	ldr r6, _0807B860 @ =gUnk_08351648
	ldr r1, [r5, #0x78]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrh r0, [r0, #8]
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0807B86C
	ldr r1, [r5, #0x78]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrh r0, [r0, #8]
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _0807B86C
	.align 2, 0
_0807B858: .4byte gKirbys
_0807B85C: .4byte gUnk_0203AD3C
_0807B860: .4byte gUnk_08351648
_0807B864:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_0807B86C:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807B87A
	b _0807BAC2
_0807B87A:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc
	bgt _0807B88A
	b _0807BA7A
_0807B88A:
	ldr r2, _0807B8A4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0807B8A8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0807B8AC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _0807B8B0 @ =0x00005554
	cmp r2, r0
	bhi _0807B8B4
	movs r1, #0
	b _0807B8BE
	.align 2, 0
_0807B8A4: .4byte gRngVal
_0807B8A8: .4byte 0x00196225
_0807B8AC: .4byte 0x3C6EF35F
_0807B8B0: .4byte 0x00005554
_0807B8B4:
	ldr r0, _0807B8F0 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _0807B8BE
	movs r1, #1
_0807B8BE:
	cmp r1, #1
	beq _0807B8FC
	cmp r1, #2
	beq _0807B98C
	ldr r2, _0807B8F4 @ =gKirbys
	ldr r3, _0807B8F8 @ =gUnk_0203AD3C
	ldrb r1, [r3]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0807B8E4
	b _0807BA64
_0807B8E4:
	ldrb r0, [r5]
	cmp r0, #0
	beq _0807B8EC
	b _0807BA24
_0807B8EC:
	b _0807BA18
	.align 2, 0
_0807B8F0: .4byte 0x0000AAA9
_0807B8F4: .4byte gKirbys
_0807B8F8: .4byte gUnk_0203AD3C
_0807B8FC:
	ldr r1, _0807B974 @ =gKirbys
	ldr r0, _0807B978 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0807B91A
	b _0807BA64
_0807B91A:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0807B92C
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _0807B92C
	b _0807BA64
_0807B92C:
	ldr r1, _0807B97C @ =gUnk_08D60FA4
	ldr r4, _0807B980 @ =gSongTable
	ldr r2, _0807B984 @ =0x00000964
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807B954
	movs r1, #0x96
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _0807B954
	b _0807BA64
_0807B954:
	cmp r3, #0
	beq _0807B968
	ldr r0, _0807B988 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807B968
	b _0807BA64
_0807B968:
	movs r0, #0x96
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _0807BA64
	.align 2, 0
_0807B974: .4byte gKirbys
_0807B978: .4byte gUnk_0203AD3C
_0807B97C: .4byte gUnk_08D60FA4
_0807B980: .4byte gSongTable
_0807B984: .4byte 0x00000964
_0807B988: .4byte gUnk_0203AD10
_0807B98C:
	ldr r1, _0807B9F8 @ =gKirbys
	ldr r0, _0807B9FC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807BA64
	ldrb r0, [r5]
	cmp r0, #0
	bne _0807B9B8
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0807BA64
_0807B9B8:
	ldr r1, _0807BA00 @ =gUnk_08D60FA4
	ldr r4, _0807BA04 @ =gSongTable
	ldr r2, _0807BA08 @ =0x0000096C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807B9DC
	ldr r1, _0807BA0C @ =0x00000968
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807BA64
_0807B9DC:
	cmp r3, #0
	beq _0807B9EE
	ldr r0, _0807BA10 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807BA64
_0807B9EE:
	ldr r0, _0807BA14 @ =0x0000012D
	bl m4aSongNumStart
	b _0807BA64
	.align 2, 0
_0807B9F8: .4byte gKirbys
_0807B9FC: .4byte gUnk_0203AD3C
_0807BA00: .4byte gUnk_08D60FA4
_0807BA04: .4byte gSongTable
_0807BA08: .4byte 0x0000096C
_0807BA0C: .4byte 0x00000968
_0807BA10: .4byte gUnk_0203AD10
_0807BA14: .4byte 0x0000012D
_0807BA18:
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrb r3, [r3]
	cmp r0, r3
	bne _0807BA64
_0807BA24:
	ldr r1, _0807BACC @ =gUnk_08D60FA4
	ldr r4, _0807BAD0 @ =gSongTable
	ldr r2, _0807BAD4 @ =0x00000974
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807BA4A
	movs r1, #0x97
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807BA64
_0807BA4A:
	cmp r3, #0
	beq _0807BA5C
	ldr r0, _0807BAD8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807BA64
_0807BA5C:
	movs r0, #0x97
	lsls r0, r0, #1
	bl m4aSongNumStart
_0807BA64:
	ldr r2, _0807BADC @ =0x00000292
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
_0807BA7A:
	adds r3, r5, #0
	adds r3, #0x52
	ldrh r0, [r3]
	subs r0, #0x40
	strh r0, [r3]
	lsls r0, r0, #0x10
	movs r1, #0xfe
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _0807BA94
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r3]
_0807BA94:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0807BABC
	ldr r1, [r5, #0x40]
	str r1, [r5, #0x48]
	ldr r2, [r5, #0x44]
	str r2, [r5, #0x4c]
	adds r0, r5, #0
	adds r0, #0x50
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r1, r1, r0
	str r1, [r5, #0x40]
	movs r1, #0
	ldrsh r0, [r3, r1]
	subs r2, r2, r0
	str r2, [r5, #0x44]
_0807BABC:
	adds r0, r5, #0
	bl sub_0806F8BC
_0807BAC2:
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0807BACC: .4byte gUnk_08D60FA4
_0807BAD0: .4byte gSongTable
_0807BAD4: .4byte 0x00000974
_0807BAD8: .4byte gUnk_0203AD10
_0807BADC: .4byte 0x00000292

	thumb_func_start sub_0807BAE0
sub_0807BAE0: @ 0x0807BAE0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _0807BB10 @ =sub_0807BBDC
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807BB14 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807BB18
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807BB20
	.align 2, 0
_0807BB10: .4byte sub_0807BBDC
_0807BB14: .4byte sub_0803DCCC
_0807BB18:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807BB20:
	adds r4, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807BBA4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807BB6E
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0807BB6E:
	ldr r0, [r4, #8]
	ldr r1, _0807BBA8 @ =0x80000500
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _0807BBAC @ =0x20001003
	orrs r0, r1
	str r0, [r4, #0x68]
	adds r0, r5, #0
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0807BBB0
	movs r2, #0x14
	rsbs r2, r2, #0
	movs r0, #0x14
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0x14
	bl sub_0803E308
	b _0807BBC2
	.align 2, 0
_0807BBA4: .4byte gUnk_03000510
_0807BBA8: .4byte 0x80000500
_0807BBAC: .4byte 0x20001003
_0807BBB0:
	movs r2, #0xa
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0xa
	bl sub_0803E308
_0807BBC2:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807BBD2
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
_0807BBD2:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807BBDC
sub_0807BBDC: @ 0x0807BBDC
	push {r4, r5, r6, lr}
	ldr r2, _0807BBF8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807BBFC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807BC04
	.align 2, 0
_0807BBF8: .4byte gCurTask
_0807BBFC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807BC04:
	adds r5, r0, #0
	ldr r4, [r5, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r4, #0
	ands r0, r3
	cmp r0, #0
	beq _0807BC1C
	ldr r0, [r2]
	bl TaskDestroy
	b _0807BCD2
_0807BC1C:
	ldr r6, [r5, #0x70]
	ldr r0, [r6, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0807BC30
	orrs r4, r3
	str r4, [r5, #8]
	b _0807BCD2
_0807BC30:
	ldr r0, _0807BC5C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r5, #0
	adds r3, #0x56
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807BC60
	movs r0, #0x80
	lsls r0, r0, #6
	ands r4, r0
	cmp r4, #0
	bne _0807BC60
	adds r0, r5, #0
	bl sub_0803D9A8
	b _0807BCD2
	.align 2, 0
_0807BC5C: .4byte gUnk_03000510
_0807BC60:
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	ldr r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _0807BCD2
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _0807BC98
	ldr r2, _0807BC90 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _0807BC94 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _0807BC9A
	.align 2, 0
_0807BC90: .4byte gCurLevelInfo
_0807BC94: .4byte 0x0000065E
_0807BC98:
	movs r1, #0xff
_0807BC9A:
	cmp r1, #0xff
	beq _0807BCD2
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _0807BCD8 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0807BCDC @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0807BCD2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0807BCD8: .4byte gUnk_02022EB0
_0807BCDC: .4byte gUnk_02022F50

	thumb_func_start sub_0807BCE0
sub_0807BCE0: @ 0x0807BCE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _0807BD18 @ =sub_08070580
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807BD1C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807BD20
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807BD28
	.align 2, 0
_0807BD18: .4byte sub_08070580
_0807BD1C: .4byte sub_0803DCCC
_0807BD20:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807BD28:
	adds r4, r0, #0
	bl sub_0803E380
	movs r0, #0
	mov r8, r0
	movs r1, #2
	strb r1, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	mov r2, r8
	strh r2, [r4, #4]
	adds r3, r5, #0
	adds r3, #0x60
	ldrh r1, [r3]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r2, r5, #0
	adds r2, #0x56
	ldrb r0, [r2]
	movs r6, #0x56
	adds r6, r6, r4
	mov ip, r6
	strb r0, [r6]
	ldr r7, _0807BE20 @ =gUnk_03000510
	ldrb r1, [r7, #4]
	movs r0, #1
	ldrb r6, [r6]
	lsls r0, r6
	movs r7, #0x10
	mov sl, r7
	mov r6, sl
	orrs r0, r6
	ands r1, r0
	str r3, [sp, #8]
	mov sb, r2
	cmp r1, #0
	beq _0807BD84
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0807BD84:
	ldr r0, _0807BE24 @ =sub_08084B94
	str r0, [r4, #0x78]
	ldr r0, _0807BE28 @ =sub_08084BD8
	str r0, [r4, #0x7c]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r0, _0807BE2C @ =sub_0807C1A0
	str r0, [r1]
	adds r1, #4
	ldr r0, _0807BE30 @ =sub_08084E88
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x88
	movs r7, #0
	strb r7, [r0]
	adds r1, #5
	movs r2, #0
	strb r2, [r1]
	adds r1, #1
	mov r3, r8
	strh r3, [r1]
	strb r2, [r0]
	subs r1, #0x26
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x66
	strh r3, [r0]
	subs r0, #3
	movs r6, #2
	strb r6, [r0]
	ldr r2, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #0x18
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _0807BE34 @ =0x20000103
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r7, _0807BE20 @ =gUnk_03000510
	ldrb r1, [r7, #4]
	movs r0, #1
	mov r3, ip
	ldrb r3, [r3]
	lsls r0, r3
	mov r6, sl
	orrs r0, r6
	ands r1, r0
	cmp r1, #0
	beq _0807BDFA
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r4, #8]
_0807BDFA:
	ldr r0, [r5, #8]
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _0807BE38
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xf8
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r0, [r4, #8]
	orrs r0, r7
	str r0, [r4, #8]
	ldr r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	b _0807BE48
	.align 2, 0
_0807BE20: .4byte gUnk_03000510
_0807BE24: .4byte sub_08084B94
_0807BE28: .4byte sub_08084BD8
_0807BE2C: .4byte sub_0807C1A0
_0807BE30: .4byte sub_08084E88
_0807BE34: .4byte 0x20000103
_0807BE38:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	ldr r2, _0807BF0C @ =0xFFFFFE00
	adds r0, r0, r2
_0807BE48:
	str r0, [r4, #0x40]
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #3
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803E2B0
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #1
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	mov r3, sb
	ldrb r2, [r3]
	lsls r2, r2, #0xb
	ldr r6, _0807BF10 @ =0x06010600
	adds r2, r2, r6
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r3, #0xed
	bl sub_080708DC
	mov r7, sb
	ldrb r1, [r7]
	adds r0, r4, #0
	adds r0, #0x2f
	strb r1, [r0]
	ldr r1, _0807BF14 @ =gKirbys
	ldr r0, _0807BF18 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r1, [sp, #8]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807BEFC
	ldrb r0, [r5]
	cmp r0, #0
	bne _0807BEBE
	ldrb r0, [r7]
	cmp r0, r2
	bne _0807BEFC
_0807BEBE:
	ldr r1, _0807BF1C @ =gUnk_08D60FA4
	ldr r4, _0807BF20 @ =gSongTable
	ldr r2, _0807BF24 @ =0x0000053C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807BEE4
	movs r6, #0xa7
	lsls r6, r6, #3
	adds r0, r4, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807BEFC
_0807BEE4:
	cmp r3, #0
	beq _0807BEF6
	ldr r0, _0807BF28 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807BEFC
_0807BEF6:
	movs r0, #0xa7
	bl m4aSongNumStart
_0807BEFC:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807BF0C: .4byte 0xFFFFFE00
_0807BF10: .4byte 0x06010600
_0807BF14: .4byte gKirbys
_0807BF18: .4byte gUnk_0203AD3C
_0807BF1C: .4byte gUnk_08D60FA4
_0807BF20: .4byte gSongTable
_0807BF24: .4byte 0x0000053C
_0807BF28: .4byte gUnk_0203AD10

	thumb_func_start sub_0807BF2C
sub_0807BF2C: @ 0x0807BF2C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _0807BF64 @ =sub_08070580
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807BF68 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807BF6C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807BF74
	.align 2, 0
_0807BF64: .4byte sub_08070580
_0807BF68: .4byte sub_0803DCCC
_0807BF6C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807BF74:
	adds r5, r0, #0
	bl sub_0803E380
	movs r0, #0
	mov ip, r0
	movs r0, #2
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	str r6, [r5, #0x70]
	movs r7, #0
	mov r1, ip
	strh r1, [r5, #4]
	adds r4, r6, #0
	adds r4, #0x60
	ldrh r1, [r4]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r3, r6, #0
	adds r3, #0x56
	ldrb r0, [r3]
	adds r1, r5, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807C044 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	mov r8, r0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	mov sb, r4
	adds r4, r3, #0
	cmp r2, #0
	beq _0807BFCE
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_0807BFCE:
	ldr r0, _0807C048 @ =sub_08084B94
	str r0, [r5, #0x78]
	ldr r0, _0807C04C @ =sub_08084BD8
	str r0, [r5, #0x7c]
	adds r1, r5, #0
	adds r1, #0x80
	ldr r0, _0807C050 @ =sub_0807C1A0
	str r0, [r1]
	adds r1, #4
	ldr r0, _0807C054 @ =sub_08084EDC
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x88
	strb r7, [r0]
	adds r1, #5
	strb r7, [r1]
	adds r1, #1
	mov r2, ip
	strh r2, [r1]
	strb r7, [r0]
	subs r1, #0x26
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x66
	strh r2, [r0]
	subs r1, #1
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r5, #8]
	movs r0, #0xa0
	lsls r0, r0, #0x18
	orrs r2, r0
	ldr r0, [r5, #0x68]
	ldr r1, _0807C058 @ =0x20000103
	orrs r0, r1
	str r0, [r5, #0x68]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	str r2, [r5, #8]
	ldr r0, [r6, #8]
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	beq _0807C060
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0xf8
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r0, [r5, #8]
	orrs r0, r3
	str r0, [r5, #8]
	ldr r0, [r5, #0x40]
	ldr r1, _0807C05C @ =0xFFFFFC00
	adds r0, r0, r1
	b _0807C072
	.align 2, 0
_0807C044: .4byte gUnk_03000510
_0807C048: .4byte sub_08084B94
_0807C04C: .4byte sub_08084BD8
_0807C050: .4byte sub_0807C1A0
_0807C054: .4byte sub_08084EDC
_0807C058: .4byte 0x20000103
_0807C05C: .4byte 0xFFFFFC00
_0807C060:
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r1]
	ldr r0, [r5, #0x40]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
_0807C072:
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r5, #0x44]
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #6
	bl sub_0803E2B0
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #1
	bl sub_0803E308
	adds r1, r5, #0
	adds r1, #0x10
	ldrb r2, [r4]
	lsls r2, r2, #0xb
	ldr r0, _0807C17C @ =0x06010600
	adds r2, r2, r0
	ldr r3, _0807C180 @ =0x00000199
	movs r0, #0
	str r0, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080708DC
	ldr r1, _0807C184 @ =gKirbys
	ldr r0, _0807C188 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sb
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807C124
	ldrb r0, [r6]
	cmp r0, #0
	bne _0807C0E6
	ldrb r0, [r4]
	cmp r0, r2
	bne _0807C124
_0807C0E6:
	ldr r1, _0807C18C @ =gUnk_08D60FA4
	ldr r4, _0807C190 @ =gSongTable
	ldr r2, _0807C194 @ =0x0000057C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807C10C
	movs r1, #0xaf
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807C124
_0807C10C:
	cmp r3, #0
	beq _0807C11E
	ldr r0, _0807C198 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C124
_0807C11E:
	movs r0, #0xaf
	bl m4aSongNumStart
_0807C124:
	ldr r2, _0807C19C @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r3, [r5, #0x40]
	ldr r0, [r0]
	cmp r3, r0
	bgt _0807C16C
	adds r0, r2, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _0807C16C
	adds r0, r2, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r3, [r5, #0x44]
	ldr r0, [r0]
	cmp r3, r0
	bgt _0807C16C
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _0807C16C
	adds r0, r5, #0
	bl sub_0806FC70
_0807C16C:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807C17C: .4byte 0x06010600
_0807C180: .4byte 0x00000199
_0807C184: .4byte gKirbys
_0807C188: .4byte gUnk_0203AD3C
_0807C18C: .4byte gUnk_08D60FA4
_0807C190: .4byte gSongTable
_0807C194: .4byte 0x0000057C
_0807C198: .4byte gUnk_0203AD10
_0807C19C: .4byte gCurLevelInfo

	thumb_func_start sub_0807C1A0
sub_0807C1A0: @ 0x0807C1A0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0807C1B4
	b _0807C484
_0807C1B4:
	ldr r0, _0807C1F4 @ =gUnk_082D88B8
	adds r1, r4, #0
	adds r1, #0x57
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r1, r0
	movs r0, #0xc0
	lsls r0, r0, #0x17
	cmp r1, r0
	beq _0807C272
	cmp r1, r0
	bhi _0807C20A
	movs r0, #0xc0
	lsls r0, r0, #0x16
	cmp r1, r0
	beq _0807C244
	cmp r1, r0
	bhi _0807C1F8
	movs r0, #0x80
	lsls r0, r0, #0x15
	cmp r1, r0
	beq _0807C244
	movs r0, #0x80
	lsls r0, r0, #0x16
	cmp r1, r0
	beq _0807C244
	b _0807C320
	.align 2, 0
_0807C1F4: .4byte gUnk_082D88B8
_0807C1F8:
	movs r0, #0x80
	lsls r0, r0, #0x17
	cmp r1, r0
	beq _0807C272
	movs r0, #0xa0
	lsls r0, r0, #0x17
	cmp r1, r0
	beq _0807C272
	b _0807C320
_0807C20A:
	movs r0, #0x90
	lsls r0, r0, #0x18
	cmp r1, r0
	beq _0807C2AA
	cmp r1, r0
	bhi _0807C228
	movs r0, #0xe0
	lsls r0, r0, #0x17
	cmp r1, r0
	beq _0807C2AA
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	beq _0807C2AA
	b _0807C320
_0807C228:
	movs r0, #0xb0
	lsls r0, r0, #0x18
	cmp r1, r0
	beq _0807C2D4
	cmp r1, r0
	bhi _0807C23A
	movs r0, #0xa0
	lsls r0, r0, #0x18
	b _0807C23E
_0807C23A:
	movs r0, #0xc0
	lsls r0, r0, #0x18
_0807C23E:
	cmp r1, r0
	beq _0807C2D4
	b _0807C320
_0807C244:
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0
	ldrsh r1, [r2, r0]
	cmp r1, #0
	beq _0807C264
	cmp r1, #0
	bgt _0807C256
	b _0807C484
_0807C256:
	movs r0, #0
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #4
	b _0807C2F2
_0807C264:
	adds r3, r4, #0
	adds r3, #0x52
	movs r6, #0
	ldrsh r0, [r3, r6]
	cmp r0, #0
	blt _0807C30E
	b _0807C484
_0807C272:
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0
	ldrsh r1, [r2, r0]
	cmp r1, #0
	beq _0807C292
	cmp r1, #0
	blt _0807C284
	b _0807C484
_0807C284:
	movs r0, #0
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #4
	b _0807C2F2
_0807C292:
	adds r3, r4, #0
	adds r3, #0x52
	movs r6, #0
	ldrsh r0, [r3, r6]
	cmp r0, #0
	blt _0807C2A0
	b _0807C484
_0807C2A0:
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r2]
	strh r1, [r3]
	b _0807C2F4
_0807C2AA:
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0
	ldrsh r1, [r2, r0]
	cmp r1, #0
	beq _0807C2BC
	cmp r1, #0
	blt _0807C2E6
	b _0807C484
_0807C2BC:
	adds r3, r4, #0
	adds r3, #0x52
	movs r6, #0
	ldrsh r0, [r3, r6]
	cmp r0, #0
	bgt _0807C2CA
	b _0807C484
_0807C2CA:
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r2]
	strh r1, [r3]
	b _0807C2F4
_0807C2D4:
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0
	ldrsh r1, [r2, r0]
	cmp r1, #0
	beq _0807C300
	cmp r1, #0
	bgt _0807C2E6
	b _0807C484
_0807C2E6:
	movs r0, #0
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xf8
	lsls r0, r0, #8
_0807C2F2:
	strh r0, [r1]
_0807C2F4:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _0807C332
_0807C300:
	adds r3, r4, #0
	adds r3, #0x52
	movs r6, #0
	ldrsh r0, [r3, r6]
	cmp r0, #0
	bgt _0807C30E
	b _0807C484
_0807C30E:
	movs r0, #0xf8
	lsls r0, r0, #8
	strh r0, [r2]
	strh r1, [r3]
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	b _0807C332
_0807C320:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	b _0807C484
_0807C332:
	adds r1, r4, #0
	adds r1, #0x2a
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r1, [r4, #0x1c]
	ldr r0, _0807C3B8 @ =0x00000199
	cmp r1, r0
	bne _0807C3D4
	ldr r1, _0807C3BC @ =gKirbys
	ldr r0, _0807C3C0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807C43E
	ldrb r0, [r5]
	cmp r0, #0
	bne _0807C378
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0807C43E
_0807C378:
	ldr r1, _0807C3C4 @ =gUnk_08D60FA4
	ldr r5, _0807C3C8 @ =gSongTable
	ldr r2, _0807C3CC @ =0x00000594
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807C39E
	movs r6, #0xb2
	lsls r6, r6, #3
	adds r0, r5, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807C43E
_0807C39E:
	cmp r3, #0
	beq _0807C3B0
	ldr r0, _0807C3D0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C43E
_0807C3B0:
	movs r0, #0xb2
	bl m4aSongNumStart
	b _0807C43E
	.align 2, 0
_0807C3B8: .4byte 0x00000199
_0807C3BC: .4byte gKirbys
_0807C3C0: .4byte gUnk_0203AD3C
_0807C3C4: .4byte gUnk_08D60FA4
_0807C3C8: .4byte gSongTable
_0807C3CC: .4byte 0x00000594
_0807C3D0: .4byte gUnk_0203AD10
_0807C3D4:
	ldr r1, _0807C46C @ =gKirbys
	ldr r0, _0807C470 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807C43E
	ldrb r0, [r5]
	cmp r0, #0
	bne _0807C400
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0807C43E
_0807C400:
	ldr r1, _0807C474 @ =gUnk_08D60FA4
	ldr r5, _0807C478 @ =gSongTable
	ldr r2, _0807C47C @ =0x00000544
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807C426
	movs r6, #0xa8
	lsls r6, r6, #3
	adds r0, r5, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807C43E
_0807C426:
	cmp r3, #0
	beq _0807C438
	ldr r0, _0807C480 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C43E
_0807C438:
	movs r0, #0xa8
	bl m4aSongNumStart
_0807C43E:
	adds r1, r4, #0
	adds r1, #0x88
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0807C484
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xa3
	lsls r2, r2, #2
	movs r3, #2
	bl sub_0808AE30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #1
	b _0807C486
	.align 2, 0
_0807C46C: .4byte gKirbys
_0807C470: .4byte gUnk_0203AD3C
_0807C474: .4byte gUnk_08D60FA4
_0807C478: .4byte gSongTable
_0807C47C: .4byte 0x00000544
_0807C480: .4byte gUnk_0203AD10
_0807C484:
	movs r0, #0
_0807C486:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0807C48C
sub_0807C48C: @ 0x0807C48C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _0807C4C4 @ =sub_08070580
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807C4C8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807C4CC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807C4D4
	.align 2, 0
_0807C4C4: .4byte sub_08070580
_0807C4C8: .4byte sub_0803DCCC
_0807C4CC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807C4D4:
	adds r5, r0, #0
	bl sub_0803E380
	movs r0, #0
	mov ip, r0
	movs r0, #2
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	str r6, [r5, #0x70]
	movs r7, #0
	mov r1, ip
	strh r1, [r5, #4]
	adds r4, r6, #0
	adds r4, #0x60
	ldrh r1, [r4]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r3, r6, #0
	adds r3, #0x56
	ldrb r0, [r3]
	adds r1, r5, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807C5A4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	mov r8, r0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	mov sb, r4
	adds r4, r3, #0
	cmp r2, #0
	beq _0807C52E
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_0807C52E:
	mov r1, ip
	str r1, [r5, #0x78]
	ldr r0, _0807C5A8 @ =sub_08084BFC
	str r0, [r5, #0x7c]
	adds r1, r5, #0
	adds r1, #0x80
	ldr r0, _0807C5AC @ =sub_08084C20
	str r0, [r1]
	adds r1, #4
	ldr r0, _0807C5B0 @ =sub_08084EDC
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x88
	strb r7, [r0]
	adds r1, #5
	strb r7, [r1]
	adds r1, #1
	mov r2, ip
	strh r2, [r1]
	strb r7, [r0]
	subs r1, #0x26
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x66
	strh r2, [r0]
	subs r1, #1
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #0xa0
	lsls r1, r1, #0x18
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0x68]
	ldr r1, _0807C5B4 @ =0x20000103
	orrs r0, r1
	str r0, [r5, #0x68]
	ldr r0, [r6, #8]
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	beq _0807C5BC
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r0, [r5, #8]
	orrs r0, r3
	str r0, [r5, #8]
	ldr r0, [r5, #0x40]
	ldr r1, _0807C5B8 @ =0xFFFFF600
	adds r0, r0, r1
	b _0807C5CE
	.align 2, 0
_0807C5A4: .4byte gUnk_03000510
_0807C5A8: .4byte sub_08084BFC
_0807C5AC: .4byte sub_08084C20
_0807C5B0: .4byte sub_08084EDC
_0807C5B4: .4byte 0x20000103
_0807C5B8: .4byte 0xFFFFF600
_0807C5BC:
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [r5, #0x40]
	movs r2, #0xa0
	lsls r2, r2, #4
	adds r0, r0, r2
_0807C5CE:
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r5, #0x44]
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xc
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #6
	bl sub_0803E308
	adds r1, r5, #0
	adds r1, #0x10
	ldrb r2, [r4]
	lsls r2, r2, #0xb
	ldr r0, _0807C6A0 @ =0x06010400
	adds r2, r2, r0
	movs r3, #0xcd
	lsls r3, r3, #1
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080708DC
	ldr r2, _0807C6A4 @ =0x000002AF
	adds r0, r5, #0
	movs r1, #0
	movs r3, #1
	bl sub_08092944
	ldr r1, _0807C6A8 @ =gKirbys
	ldr r0, _0807C6AC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sb
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807C690
	ldrb r0, [r6]
	cmp r0, #0
	bne _0807C652
	ldrb r0, [r4]
	cmp r0, r2
	bne _0807C690
_0807C652:
	ldr r1, _0807C6B0 @ =gUnk_08D60FA4
	ldr r4, _0807C6B4 @ =gSongTable
	ldr r2, _0807C6B8 @ =0x00000584
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807C678
	movs r1, #0xb0
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807C690
_0807C678:
	cmp r3, #0
	beq _0807C68A
	ldr r0, _0807C6BC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C690
_0807C68A:
	movs r0, #0xb0
	bl m4aSongNumStart
_0807C690:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807C6A0: .4byte 0x06010400
_0807C6A4: .4byte 0x000002AF
_0807C6A8: .4byte gKirbys
_0807C6AC: .4byte gUnk_0203AD3C
_0807C6B0: .4byte gUnk_08D60FA4
_0807C6B4: .4byte gSongTable
_0807C6B8: .4byte 0x00000584
_0807C6BC: .4byte gUnk_0203AD10

	thumb_func_start sub_0807C6C0
sub_0807C6C0: @ 0x0807C6C0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _0807C6F8 @ =sub_08070580
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807C6FC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807C700
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807C708
	.align 2, 0
_0807C6F8: .4byte sub_08070580
_0807C6FC: .4byte sub_0803DCCC
_0807C700:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807C708:
	adds r5, r0, #0
	bl sub_0803E380
	movs r7, #0
	movs r0, #2
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	str r6, [r5, #0x70]
	movs r0, #0
	mov ip, r0
	strh r7, [r5, #4]
	adds r4, r6, #0
	adds r4, #0x60
	ldrh r1, [r4]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r3, r6, #0
	adds r3, #0x56
	ldrb r0, [r3]
	adds r1, r5, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807C7DC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	mov r8, r0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	mov sb, r4
	adds r4, r3, #0
	cmp r2, #0
	beq _0807C760
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_0807C760:
	str r7, [r5, #0x78]
	str r7, [r5, #0x7c]
	adds r0, r5, #0
	adds r0, #0x80
	str r7, [r0]
	adds r1, r5, #0
	adds r1, #0x84
	ldr r0, _0807C7E0 @ =sub_08084EDC
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x88
	mov r1, ip
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x89
	mov r2, ip
	strb r2, [r1]
	adds r1, #1
	strh r7, [r1]
	strb r2, [r0]
	subs r1, #0x26
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x66
	strh r7, [r0]
	subs r1, #1
	movs r0, #0x12
	strb r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #0xa0
	lsls r1, r1, #0x18
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0x68]
	ldr r1, _0807C7E4 @ =0x20001103
	orrs r0, r1
	str r0, [r5, #0x68]
	ldr r0, [r6, #8]
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	beq _0807C7EC
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r0, [r5, #8]
	orrs r0, r3
	str r0, [r5, #8]
	ldr r0, [r5, #0x40]
	ldr r1, _0807C7E8 @ =0xFFFFF600
	adds r0, r0, r1
	b _0807C7FE
	.align 2, 0
_0807C7DC: .4byte gUnk_03000510
_0807C7E0: .4byte sub_08084EDC
_0807C7E4: .4byte 0x20001103
_0807C7E8: .4byte 0xFFFFF600
_0807C7EC:
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [r5, #0x40]
	movs r2, #0xa0
	lsls r2, r2, #4
	adds r0, r0, r2
_0807C7FE:
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r5, #0x44]
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0xe
	rsbs r2, r2, #0
	movs r0, #0xe
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #6
	bl sub_0803E308
	adds r1, r5, #0
	adds r1, #0x10
	ldrb r2, [r4]
	lsls r2, r2, #0xb
	ldr r0, _0807C8D0 @ =0x06010400
	adds r2, r2, r0
	movs r3, #0xcc
	lsls r3, r3, #1
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080708DC
	ldr r2, _0807C8D4 @ =0x000002AF
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_08092944
	ldr r1, _0807C8D8 @ =gKirbys
	ldr r0, _0807C8DC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sb
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807C8C0
	ldrb r0, [r6]
	cmp r0, #0
	bne _0807C882
	ldrb r0, [r4]
	cmp r0, r2
	bne _0807C8C0
_0807C882:
	ldr r1, _0807C8E0 @ =gUnk_08D60FA4
	ldr r4, _0807C8E4 @ =gSongTable
	ldr r2, _0807C8E8 @ =0x0000058C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807C8A8
	movs r1, #0xb1
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807C8C0
_0807C8A8:
	cmp r3, #0
	beq _0807C8BA
	ldr r0, _0807C8EC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C8C0
_0807C8BA:
	movs r0, #0xb1
	bl m4aSongNumStart
_0807C8C0:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807C8D0: .4byte 0x06010400
_0807C8D4: .4byte 0x000002AF
_0807C8D8: .4byte gKirbys
_0807C8DC: .4byte gUnk_0203AD3C
_0807C8E0: .4byte gUnk_08D60FA4
_0807C8E4: .4byte gSongTable
_0807C8E8: .4byte 0x0000058C
_0807C8EC: .4byte gUnk_0203AD10

	thumb_func_start sub_0807C8F0
sub_0807C8F0: @ 0x0807C8F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x70]
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r2, [r0]
	adds r0, r2, #0
	subs r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _0807C92C
	ldr r3, _0807C948 @ =0x00000103
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _0807C92C
	movs r1, #0
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x5a
	bne _0807C928
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
_0807C928:
	cmp r1, #0
	beq _0807C940
_0807C92C:
	ldr r2, _0807C94C @ =0x0000028E
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r1, r4, #0
	adds r1, #0x60
	ldr r0, _0807C950 @ =0x0000FFFF
	strh r0, [r1]
_0807C940:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807C948: .4byte 0x00000103
_0807C94C: .4byte 0x0000028E
_0807C950: .4byte 0x0000FFFF

	thumb_func_start sub_0807C954
sub_0807C954: @ 0x0807C954
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0807C98C @ =sub_08070580
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807C990 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807C994
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0807C99C
	.align 2, 0
_0807C98C: .4byte sub_08070580
_0807C990: .4byte sub_0803DCCC
_0807C994:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0807C99C:
	adds r0, r4, #0
	bl sub_0803E380
	movs r7, #0
	movs r0, #2
	mov sb, r0
	mov r1, sb
	strb r1, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	movs r3, #0
	strh r7, [r4, #4]
	movs r2, #0x60
	adds r2, r2, r5
	mov sl, r2
	ldrh r1, [r2]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	movs r0, #0x56
	adds r0, r0, r5
	mov r8, r0
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807CB14 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r6, #1
	adds r0, r6, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807C9F6
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0807C9F6:
	ldr r0, _0807CB18 @ =sub_0807CB4C
	str r0, [r4, #0x78]
	str r7, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0x80
	str r7, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	ldr r0, _0807CB1C @ =sub_0807C8F0
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x88
	strb r3, [r0]
	adds r1, #5
	strb r3, [r1]
	adds r1, #1
	strh r7, [r1]
	strb r3, [r0]
	subs r1, #0x26
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x66
	strh r7, [r0]
	subs r1, #1
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r4, #8]
	ldr r0, _0807CB20 @ =0xA0000100
	orrs r2, r0
	ldr r0, [r4, #0x68]
	ldr r1, _0807CB24 @ =0x20000403
	orrs r0, r1
	str r0, [r4, #0x68]
	mov r1, sb
	orrs r2, r1
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	movs r0, #5
	strb r0, [r4, #1]
	ldr r0, _0807CB28 @ =0xFFFFDFFF
	ands r2, r0
	str r2, [r4, #8]
	ldr r0, [r5, #8]
	ands r0, r6
	cmp r0, #0
	beq _0807CA5C
	orrs r2, r6
	str r2, [r4, #8]
_0807CA5C:
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E2B0
	movs r2, #2
	rsbs r2, r2, #0
	mov r3, sb
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #2
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	mov r0, r8
	ldrb r2, [r0]
	lsls r2, r2, #0xb
	ldr r3, _0807CB2C @ =0x06010400
	adds r2, r2, r3
	ldr r3, _0807CB30 @ =0x00000195
	str r7, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	ldr r1, _0807CB34 @ =gKirbys
	ldr r0, _0807CB38 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sl
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807CB02
	ldrb r0, [r5]
	cmp r0, #0
	bne _0807CAC4
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, r2
	bne _0807CB02
_0807CAC4:
	ldr r1, _0807CB3C @ =gUnk_08D60FA4
	ldr r4, _0807CB40 @ =gSongTable
	ldr r2, _0807CB44 @ =0x00000574
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807CAEA
	movs r1, #0xae
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807CB02
_0807CAEA:
	cmp r3, #0
	beq _0807CAFC
	ldr r0, _0807CB48 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807CB02
_0807CAFC:
	movs r0, #0xae
	bl m4aSongNumStart
_0807CB02:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807CB14: .4byte gUnk_03000510
_0807CB18: .4byte sub_0807CB4C
_0807CB1C: .4byte sub_0807C8F0
_0807CB20: .4byte 0xA0000100
_0807CB24: .4byte 0x20000403
_0807CB28: .4byte 0xFFFFDFFF
_0807CB2C: .4byte 0x06010400
_0807CB30: .4byte 0x00000195
_0807CB34: .4byte gKirbys
_0807CB38: .4byte gUnk_0203AD3C
_0807CB3C: .4byte gUnk_08D60FA4
_0807CB40: .4byte gSongTable
_0807CB44: .4byte 0x00000574
_0807CB48: .4byte gUnk_0203AD10

	thumb_func_start sub_0807CB4C
sub_0807CB4C: @ 0x0807CB4C
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #1]
	cmp r0, #5
	bne _0807CC08
	ldr r4, [r3, #0x70]
	movs r0, #0
	strb r0, [r3, #1]
	strh r0, [r3, #2]
	ldr r1, [r3, #8]
	ldr r0, _0807CB80 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r3, #8]
	movs r2, #4
	ldrsh r0, [r3, r2]
	cmp r0, #7
	ble _0807CB84
	movs r0, #0xc0
	lsls r0, r0, #3
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r3, #8]
	movs r0, #1
	b _0807CC0A
	.align 2, 0
_0807CB80: .4byte 0xFFFBFFFF
_0807CB84:
	movs r0, #4
	orrs r0, r1
	str r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807CBC8
	ldr r2, _0807CBC0 @ =gUnk_08350D1E
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	adds r1, r3, #0
	adds r1, #0x50
	strh r0, [r1]
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	ldr r2, _0807CBC4 @ =0xFFFFF600
	b _0807CBF4
	.align 2, 0
_0807CBC0: .4byte gUnk_08350D1E
_0807CBC4: .4byte 0xFFFFF600
_0807CBC8:
	ldr r2, _0807CC10 @ =gUnk_08350D1E
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x50
	strh r1, [r0]
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	movs r2, #0xa0
	lsls r2, r2, #4
_0807CBF4:
	adds r0, r0, r2
	str r0, [r3, #0x40]
	ldr r0, [r4, #0x44]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r3, #0x44]
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
_0807CC08:
	movs r0, #0
_0807CC0A:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0807CC10: .4byte gUnk_08350D1E

	thumb_func_start sub_0807CC14
sub_0807CC14: @ 0x0807CC14
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0807CC48 @ =sub_08070580
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807CC4C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807CC50
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0807CC58
	.align 2, 0
_0807CC48: .4byte sub_08070580
_0807CC4C: .4byte sub_0803DCCC
_0807CC50:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0807CC58:
	adds r0, r4, #0
	bl sub_0803E380
	movs r7, #0
	movs r0, #2
	mov r8, r0
	mov r1, r8
	strb r1, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	movs r3, #0
	strh r7, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	movs r0, #0x56
	adds r0, r0, r5
	mov ip, r0
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807CD28 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r6, #1
	adds r0, r6, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807CCB0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0807CCB0:
	ldr r0, _0807CD2C @ =sub_0807CD3C
	str r0, [r4, #0x78]
	str r7, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0x80
	str r7, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	ldr r0, _0807CD30 @ =sub_0807C8F0
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x88
	strb r3, [r0]
	adds r1, #5
	strb r3, [r1]
	adds r1, #1
	strh r7, [r1]
	strb r3, [r0]
	ldr r1, [r4, #8]
	movs r0, #0xc0
	lsls r0, r0, #2
	orrs r1, r0
	mov r0, r8
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r1, r0
	movs r0, #5
	strb r0, [r4, #1]
	ldr r0, _0807CD34 @ =0xFFFFDFFF
	ands r1, r0
	str r1, [r4, #8]
	ldr r0, [r5, #8]
	ands r0, r6
	cmp r0, #0
	beq _0807CCFC
	orrs r1, r6
	str r1, [r4, #8]
_0807CCFC:
	adds r1, r4, #0
	adds r1, #0x10
	mov r0, ip
	ldrb r2, [r0]
	lsls r2, r2, #0xb
	ldr r0, _0807CD38 @ =0x06010400
	adds r2, r2, r0
	movs r3, #0xcb
	lsls r3, r3, #1
	str r7, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807CD28: .4byte gUnk_03000510
_0807CD2C: .4byte sub_0807CD3C
_0807CD30: .4byte sub_0807C8F0
_0807CD34: .4byte 0xFFFFDFFF
_0807CD38: .4byte 0x06010400

	thumb_func_start sub_0807CD3C
sub_0807CD3C: @ 0x0807CD3C
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #1]
	cmp r0, #5
	bne _0807CDF0
	ldr r4, [r3, #0x70]
	movs r0, #0
	strb r0, [r3, #1]
	strh r0, [r3, #2]
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #7
	ble _0807CD6A
	ldr r0, [r3, #8]
	movs r1, #0xc0
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
	movs r0, #1
	b _0807CDF2
_0807CD6A:
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807CDB0
	ldr r2, _0807CDA8 @ =gUnk_08350D3E
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	adds r1, r3, #0
	adds r1, #0x50
	strh r0, [r1]
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	ldr r1, _0807CDAC @ =0xFFFFF600
	b _0807CDDC
	.align 2, 0
_0807CDA8: .4byte gUnk_08350D3E
_0807CDAC: .4byte 0xFFFFF600
_0807CDB0:
	ldr r2, _0807CDF8 @ =gUnk_08350D3E
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x50
	strh r1, [r0]
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #4
_0807CDDC:
	adds r0, r0, r1
	str r0, [r3, #0x40]
	ldr r0, [r4, #0x44]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r3, #0x44]
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
_0807CDF0:
	movs r0, #0
_0807CDF2:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0807CDF8: .4byte gUnk_08350D3E

	thumb_func_start sub_0807CDFC
sub_0807CDFC: @ 0x0807CDFC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0807CE30 @ =sub_08070580
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807CE34 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807CE38
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0807CE40
	.align 2, 0
_0807CE30: .4byte sub_08070580
_0807CE34: .4byte sub_0803DCCC
_0807CE38:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0807CE40:
	adds r0, r4, #0
	bl sub_0803E380
	movs r7, #0
	movs r0, #2
	mov r8, r0
	mov r1, r8
	strb r1, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	movs r3, #0
	strh r7, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	movs r0, #0x56
	adds r0, r0, r5
	mov ip, r0
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807CF0C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r6, #1
	adds r0, r6, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807CE98
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0807CE98:
	ldr r0, _0807CF10 @ =sub_0807CF24
	str r0, [r4, #0x78]
	str r7, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0x80
	str r7, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	ldr r0, _0807CF14 @ =sub_0807C8F0
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x88
	strb r3, [r0]
	adds r1, #5
	strb r3, [r1]
	adds r1, #1
	strh r7, [r1]
	strb r3, [r0]
	ldr r1, [r4, #8]
	movs r0, #0xc0
	lsls r0, r0, #2
	orrs r1, r0
	mov r0, r8
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r1, r0
	movs r0, #5
	strb r0, [r4, #1]
	ldr r0, _0807CF18 @ =0xFFFFDFFF
	ands r1, r0
	str r1, [r4, #8]
	ldr r0, [r5, #8]
	ands r0, r6
	cmp r0, #0
	beq _0807CEE4
	orrs r1, r6
	str r1, [r4, #8]
_0807CEE4:
	adds r1, r4, #0
	adds r1, #0x10
	mov r0, ip
	ldrb r2, [r0]
	lsls r2, r2, #0xb
	ldr r0, _0807CF1C @ =0x06010400
	adds r2, r2, r0
	ldr r3, _0807CF20 @ =0x00000197
	str r7, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807CF0C: .4byte gUnk_03000510
_0807CF10: .4byte sub_0807CF24
_0807CF14: .4byte sub_0807C8F0
_0807CF18: .4byte 0xFFFFDFFF
_0807CF1C: .4byte 0x06010400
_0807CF20: .4byte 0x00000197

	thumb_func_start sub_0807CF24
sub_0807CF24: @ 0x0807CF24
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #1]
	cmp r0, #5
	bne _0807CFD8
	ldr r4, [r3, #0x70]
	movs r0, #0
	strb r0, [r3, #1]
	strh r0, [r3, #2]
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #5
	ble _0807CF52
	ldr r0, [r3, #8]
	movs r1, #0xc0
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
	movs r0, #1
	b _0807CFDA
_0807CF52:
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807CF98
	ldr r2, _0807CF90 @ =gUnk_08350D5E
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	adds r1, r3, #0
	adds r1, #0x50
	strh r0, [r1]
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	ldr r1, _0807CF94 @ =0xFFFFF600
	b _0807CFC4
	.align 2, 0
_0807CF90: .4byte gUnk_08350D5E
_0807CF94: .4byte 0xFFFFF600
_0807CF98:
	ldr r2, _0807CFE0 @ =gUnk_08350D5E
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x50
	strh r1, [r0]
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #4
_0807CFC4:
	adds r0, r0, r1
	str r0, [r3, #0x40]
	ldr r0, [r4, #0x44]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r3, #0x44]
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
_0807CFD8:
	movs r0, #0
_0807CFDA:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0807CFE0: .4byte gUnk_08350D5E

	thumb_func_start sub_0807CFE4
sub_0807CFE4: @ 0x0807CFE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _0807D01C @ =sub_08070580
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807D020 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807D024
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0807D02C
	.align 2, 0
_0807D01C: .4byte sub_08070580
_0807D020: .4byte sub_0803DCCC
_0807D024:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0807D02C:
	adds r0, r4, #0
	bl sub_0803E380
	movs r0, #0
	mov r8, r0
	movs r1, #2
	mov sb, r1
	mov r2, sb
	strb r2, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	movs r2, #0
	mov r3, r8
	strh r3, [r4, #4]
	adds r7, r5, #0
	adds r7, #0x60
	str r7, [sp, #8]
	ldrh r1, [r7]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	str r0, [sp, #0xc]
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r1, _0807D1D4 @ =gUnk_03000510
	mov sl, r1
	ldrb r1, [r1, #4]
	movs r6, #1
	adds r0, r6, #0
	ldrb r7, [r3]
	lsls r0, r7
	movs r7, #0x10
	mov ip, r7
	orrs r0, r7
	ands r1, r0
	cmp r1, #0
	beq _0807D08E
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0807D08E:
	ldr r0, _0807D1D8 @ =sub_0807D208
	str r0, [r4, #0x78]
	mov r0, r8
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0x80
	mov r1, r8
	str r1, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	ldr r0, _0807D1DC @ =sub_08084F30
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x88
	strb r2, [r0]
	adds r1, #5
	strb r2, [r1]
	adds r1, #1
	mov r7, r8
	strh r7, [r1]
	strb r2, [r0]
	subs r1, #0x26
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x66
	mov r1, r8
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #3
	strb r0, [r1]
	ldr r2, [r4, #8]
	ldr r0, _0807D1E0 @ =0xA0000100
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _0807D1E4 @ =0x20000403
	orrs r0, r1
	str r0, [r4, #0x68]
	mov r7, sl
	ldrb r1, [r7, #4]
	adds r0, r6, #0
	ldrb r3, [r3]
	lsls r0, r3
	mov r3, ip
	orrs r0, r3
	ands r1, r0
	cmp r1, #0
	beq _0807D0FC
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r4, #8]
_0807D0FC:
	ldr r1, [r4, #8]
	mov r7, sb
	orrs r1, r7
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r1, r0
	str r1, [r4, #8]
	movs r0, #5
	strb r0, [r4, #1]
	ldr r0, [r5, #8]
	ands r0, r6
	cmp r0, #0
	beq _0807D11A
	orrs r1, r6
	str r1, [r4, #8]
_0807D11A:
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E2B0
	movs r2, #2
	rsbs r2, r2, #0
	mov r0, sb
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #2
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	ldr r3, [sp, #0xc]
	ldrb r2, [r3]
	lsls r2, r2, #0xb
	ldr r7, _0807D1E8 @ =0x06010400
	adds r2, r2, r7
	ldr r3, _0807D1EC @ =0x00000103
	mov r0, r8
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	ldr r1, _0807D1F0 @ =gKirbys
	ldr r0, _0807D1F4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r1, [sp, #8]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807D1C2
	ldrb r0, [r5]
	cmp r0, #0
	bne _0807D184
	ldr r3, [sp, #0xc]
	ldrb r0, [r3]
	cmp r0, r2
	bne _0807D1C2
_0807D184:
	ldr r1, _0807D1F8 @ =gUnk_08D60FA4
	ldr r4, _0807D1FC @ =gSongTable
	ldr r7, _0807D200 @ =0x000004BC
	adds r0, r4, r7
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807D1AA
	movs r1, #0x97
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807D1C2
_0807D1AA:
	cmp r3, #0
	beq _0807D1BC
	ldr r0, _0807D204 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807D1C2
_0807D1BC:
	movs r0, #0x97
	bl m4aSongNumStart
_0807D1C2:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807D1D4: .4byte gUnk_03000510
_0807D1D8: .4byte sub_0807D208
_0807D1DC: .4byte sub_08084F30
_0807D1E0: .4byte 0xA0000100
_0807D1E4: .4byte 0x20000403
_0807D1E8: .4byte 0x06010400
_0807D1EC: .4byte 0x00000103
_0807D1F0: .4byte gKirbys
_0807D1F4: .4byte gUnk_0203AD3C
_0807D1F8: .4byte gUnk_08D60FA4
_0807D1FC: .4byte gSongTable
_0807D200: .4byte 0x000004BC
_0807D204: .4byte gUnk_0203AD10

	thumb_func_start sub_0807D208
sub_0807D208: @ 0x0807D208
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #1]
	cmp r0, #5
	bne _0807D2C4
	ldr r4, [r3, #0x70]
	movs r0, #0
	strb r0, [r3, #1]
	strh r0, [r3, #2]
	ldr r1, [r3, #8]
	ldr r0, _0807D23C @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r3, #8]
	movs r2, #4
	ldrsh r0, [r3, r2]
	cmp r0, #5
	ble _0807D240
	movs r0, #0xc0
	lsls r0, r0, #3
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r3, #8]
	movs r0, #1
	b _0807D2C6
	.align 2, 0
_0807D23C: .4byte 0xFFFBFFFF
_0807D240:
	movs r0, #4
	orrs r0, r1
	str r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807D284
	ldr r2, _0807D27C @ =gUnk_08350D7E
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	adds r1, r3, #0
	adds r1, #0x50
	strh r0, [r1]
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	ldr r2, _0807D280 @ =0xFFFFF300
	b _0807D2B0
	.align 2, 0
_0807D27C: .4byte gUnk_08350D7E
_0807D280: .4byte 0xFFFFF300
_0807D284:
	ldr r2, _0807D2CC @ =gUnk_08350D7E
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x50
	strh r1, [r0]
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	movs r2, #0xd0
	lsls r2, r2, #4
_0807D2B0:
	adds r0, r0, r2
	str r0, [r3, #0x40]
	ldr r0, [r4, #0x44]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3, #0x44]
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
_0807D2C4:
	movs r0, #0
_0807D2C6:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0807D2CC: .4byte gUnk_08350D7E

	thumb_func_start sub_0807D2D0
sub_0807D2D0: @ 0x0807D2D0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0807D304 @ =sub_08070580
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807D308 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807D30C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0807D314
	.align 2, 0
_0807D304: .4byte sub_08070580
_0807D308: .4byte sub_0803DCCC
_0807D30C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0807D314:
	adds r0, r4, #0
	bl sub_0803E380
	movs r7, #0
	movs r0, #2
	mov r8, r0
	mov r1, r8
	strb r1, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	movs r3, #0
	strh r7, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	movs r0, #0x56
	adds r0, r0, r5
	mov ip, r0
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807D3E0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r6, #1
	adds r0, r6, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807D36C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0807D36C:
	ldr r0, _0807D3E4 @ =sub_0807D3F0
	str r0, [r4, #0x78]
	str r7, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0x80
	str r7, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	ldr r0, _0807D3E8 @ =sub_08084F30
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x88
	strb r3, [r0]
	adds r1, #5
	strb r3, [r1]
	adds r1, #1
	strh r7, [r1]
	strb r3, [r0]
	ldr r1, [r4, #8]
	movs r0, #0xc0
	lsls r0, r0, #2
	orrs r1, r0
	mov r0, r8
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r1, r0
	str r1, [r4, #8]
	movs r0, #5
	strb r0, [r4, #1]
	ldr r0, [r5, #8]
	ands r0, r6
	cmp r0, #0
	beq _0807D3B4
	orrs r1, r6
	str r1, [r4, #8]
_0807D3B4:
	adds r1, r4, #0
	adds r1, #0x10
	mov r0, ip
	ldrb r2, [r0]
	lsls r2, r2, #0xb
	ldr r0, _0807D3EC @ =0x06010400
	adds r2, r2, r0
	movs r3, #0x81
	lsls r3, r3, #1
	str r7, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807D3E0: .4byte gUnk_03000510
_0807D3E4: .4byte sub_0807D3F0
_0807D3E8: .4byte sub_08084F30
_0807D3EC: .4byte 0x06010400

	thumb_func_start sub_0807D3F0
sub_0807D3F0: @ 0x0807D3F0
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #1]
	cmp r0, #5
	bne _0807D4A4
	ldr r4, [r3, #0x70]
	movs r0, #0
	strb r0, [r3, #1]
	strh r0, [r3, #2]
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #5
	ble _0807D41E
	ldr r0, [r3, #8]
	movs r1, #0xc0
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
	movs r0, #1
	b _0807D4A6
_0807D41E:
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807D464
	ldr r2, _0807D45C @ =gUnk_08350D96
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	adds r1, r3, #0
	adds r1, #0x50
	strh r0, [r1]
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	ldr r1, _0807D460 @ =0xFFFFF300
	b _0807D490
	.align 2, 0
_0807D45C: .4byte gUnk_08350D96
_0807D460: .4byte 0xFFFFF300
_0807D464:
	ldr r2, _0807D4AC @ =gUnk_08350D96
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x50
	strh r1, [r0]
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	movs r1, #0xd0
	lsls r1, r1, #4
_0807D490:
	adds r0, r0, r1
	str r0, [r3, #0x40]
	ldr r0, [r4, #0x44]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3, #0x44]
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
_0807D4A4:
	movs r0, #0
_0807D4A6:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0807D4AC: .4byte gUnk_08350D96

	thumb_func_start sub_0807D4B0
sub_0807D4B0: @ 0x0807D4B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0807D4E4 @ =sub_08070580
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807D4E8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807D4EC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0807D4F4
	.align 2, 0
_0807D4E4: .4byte sub_08070580
_0807D4E8: .4byte sub_0803DCCC
_0807D4EC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0807D4F4:
	adds r0, r4, #0
	bl sub_0803E380
	movs r3, #0
	movs r0, #2
	mov r8, r0
	mov r1, r8
	strb r1, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	movs r6, #0
	strh r3, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	movs r0, #0x56
	adds r0, r0, r5
	mov ip, r0
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807D5C0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r7, #1
	adds r0, r7, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807D54C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0807D54C:
	ldr r0, _0807D5C4 @ =sub_0807D5D0
	str r0, [r4, #0x78]
	str r3, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0x80
	str r3, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	ldr r0, _0807D5C8 @ =sub_08084F30
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x88
	strb r6, [r0]
	adds r1, #5
	strb r6, [r1]
	adds r1, #1
	strh r3, [r1]
	strb r6, [r0]
	ldr r1, [r4, #8]
	movs r0, #0xc0
	lsls r0, r0, #2
	orrs r1, r0
	mov r0, r8
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r1, r0
	str r1, [r4, #8]
	movs r0, #5
	strb r0, [r4, #1]
	ldr r0, [r5, #8]
	ands r0, r7
	cmp r0, #0
	beq _0807D594
	orrs r1, r7
	str r1, [r4, #8]
_0807D594:
	adds r1, r4, #0
	adds r1, #0x10
	mov r0, ip
	ldrb r2, [r0]
	lsls r2, r2, #0xb
	ldr r0, _0807D5CC @ =0x06010400
	adds r2, r2, r0
	movs r3, #0x81
	lsls r3, r3, #1
	str r7, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807D5C0: .4byte gUnk_03000510
_0807D5C4: .4byte sub_0807D5D0
_0807D5C8: .4byte sub_08084F30
_0807D5CC: .4byte 0x06010400

	thumb_func_start sub_0807D5D0
sub_0807D5D0: @ 0x0807D5D0
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #1]
	cmp r0, #5
	bne _0807D684
	ldr r4, [r3, #0x70]
	movs r0, #0
	strb r0, [r3, #1]
	strh r0, [r3, #2]
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #5
	ble _0807D5FE
	ldr r0, [r3, #8]
	movs r1, #0xc0
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
	movs r0, #1
	b _0807D686
_0807D5FE:
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807D644
	ldr r2, _0807D63C @ =gUnk_08350DAE
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	adds r1, r3, #0
	adds r1, #0x50
	strh r0, [r1]
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	ldr r1, _0807D640 @ =0xFFFFF300
	b _0807D670
	.align 2, 0
_0807D63C: .4byte gUnk_08350DAE
_0807D640: .4byte 0xFFFFF300
_0807D644:
	ldr r2, _0807D68C @ =gUnk_08350DAE
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x50
	strh r1, [r0]
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	movs r1, #0xd0
	lsls r1, r1, #4
_0807D670:
	adds r0, r0, r1
	str r0, [r3, #0x40]
	ldr r0, [r4, #0x44]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3, #0x44]
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
_0807D684:
	movs r0, #0
_0807D686:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0807D68C: .4byte gUnk_08350DAE

	thumb_func_start sub_0807D690
sub_0807D690: @ 0x0807D690
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r0, _0807D6C8 @ =sub_080737D8
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807D6CC @ =sub_08084FA8
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807D6D0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807D6D8
	.align 2, 0
_0807D6C8: .4byte sub_080737D8
_0807D6CC: .4byte sub_08084FA8
_0807D6D0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807D6D8:
	adds r7, r0, #0
	bl sub_0803E380
	movs r5, #0
	movs r0, #2
	strb r0, [r7]
	mov r1, sb
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x44]
	str r1, [r7, #0x70]
	strh r5, [r7, #4]
	mov r0, sb
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x60
	strh r1, [r0]
	mov r2, sb
	adds r2, #0x56
	ldrb r0, [r2]
	adds r3, r7, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r6, _0807D814 @ =gUnk_03000510
	ldrb r1, [r6, #4]
	movs r4, #1
	mov r8, r4
	mov r0, r8
	ldrb r4, [r3]
	lsls r0, r4
	movs r4, #0x10
	orrs r0, r4
	ands r1, r0
	mov sl, r2
	cmp r1, #0
	beq _0807D72E
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r7, #8]
_0807D72E:
	adds r1, r7, #0
	adds r1, #0x64
	movs r0, #0x80
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x66
	strh r5, [r0]
	subs r1, #1
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r7, #8]
	ldr r0, _0807D818 @ =0xA0100100
	orrs r2, r0
	ldr r1, [r7, #0x68]
	ldr r0, _0807D81C @ =0x20000203
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	str r2, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r7, #0x68]
	ldr r0, [r7, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r7, #0x5c]
	ldrb r1, [r6, #4]
	mov r0, r8
	ldrb r3, [r3]
	lsls r0, r3
	orrs r0, r4
	ands r1, r0
	cmp r1, #0
	beq _0807D780
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r7, #8]
_0807D780:
	movs r1, #0xa
	rsbs r1, r1, #0
	movs r2, #0xc
	rsbs r2, r2, #0
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #0xa
	bl sub_0803E2B0
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #3
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r2, #0
	movs r3, #3
	bl sub_0803E308
	mov r1, sb
	ldr r0, [r1, #8]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq _0807D7B6
	ldr r0, [r7, #8]
	orrs r0, r2
	str r0, [r7, #8]
_0807D7B6:
	adds r6, r7, #0
	adds r6, #0x50
	movs r0, #0x84
	lsls r0, r0, #1
	strh r0, [r6]
	adds r0, r7, #0
	adds r0, #0x52
	strh r5, [r0]
	ldr r4, _0807D820 @ =gRngVal
	ldr r0, [r4]
	ldr r5, _0807D824 @ =0x00196225
	adds r3, r0, #0
	muls r3, r5, r3
	ldr r0, _0807D828 @ =0x3C6EF35F
	adds r3, r3, r0
	str r3, [r4]
	lsrs r1, r3, #0x10
	movs r2, #0x1f
	ands r1, r2
	movs r0, #0x38
	subs r0, r0, r1
	str r0, [r7, #0x48]
	adds r0, r3, #0
	muls r0, r5, r0
	ldr r1, _0807D828 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r4]
	lsrs r0, r0, #0x10
	bics r2, r0
	str r2, [r7, #0x4c]
	ldr r0, [r7, #8]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq _0807D830
	ldr r0, [r7, #0x40]
	ldr r4, _0807D82C @ =0xFFFFE800
	adds r0, r0, r4
	str r0, [r7, #0x40]
	ldrh r0, [r6]
	rsbs r0, r0, #0
	strh r0, [r6]
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	b _0807D83A
	.align 2, 0
_0807D814: .4byte gUnk_03000510
_0807D818: .4byte 0xA0100100
_0807D81C: .4byte 0x20000203
_0807D820: .4byte gRngVal
_0807D824: .4byte 0x00196225
_0807D828: .4byte 0x3C6EF35F
_0807D82C: .4byte 0xFFFFE800
_0807D830:
	ldr r0, [r7, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r7, #0x40]
_0807D83A:
	mov r2, sl
	ldrb r1, [r2]
	lsls r1, r1, #0xb
	ldr r4, _0807D954 @ =0x06010600
	adds r1, r1, r4
	ldr r0, _0807D958 @ =sub_080730E0
	str r0, [sp]
	ldr r0, _0807D95C @ =sub_08073068
	mov r8, r0
	str r0, [sp, #4]
	mov r0, sb
	movs r2, #0xd8
	movs r3, #0
	bl sub_080706A0
	adds r1, r0, #0
	mov r2, sl
	ldrb r0, [r2]
	adds r0, #4
	adds r2, r1, #0
	adds r2, #0x2b
	strb r0, [r2]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r1, #0x20]
	mov r4, sl
	ldrb r1, [r4]
	lsls r1, r1, #0xb
	ldr r0, _0807D960 @ =0x06010400
	adds r1, r1, r0
	ldr r0, _0807D964 @ =sub_0807D978
	str r0, [sp]
	mov r2, r8
	str r2, [sp, #4]
	mov r0, sb
	movs r2, #0xd8
	movs r3, #2
	bl sub_080706A0
	adds r1, r0, #0
	ldrb r0, [r4]
	adds r0, #4
	adds r2, r1, #0
	adds r2, #0x2b
	strb r0, [r2]
	movs r4, #0xa0
	lsls r4, r4, #2
	strh r4, [r1, #0x20]
	mov r0, sl
	ldrb r1, [r0]
	lsls r1, r1, #0xb
	ldr r2, _0807D960 @ =0x06010400
	adds r1, r1, r2
	ldr r0, _0807D968 @ =sub_080732E4
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	mov r0, sb
	movs r2, #0xd8
	movs r3, #3
	bl sub_080706A0
	adds r1, r0, #0
	mov r2, sl
	ldrb r0, [r2]
	adds r0, #4
	adds r2, r1, #0
	adds r2, #0x2b
	strb r0, [r2]
	strh r4, [r1, #0x20]
	mov r0, sl
	ldrb r1, [r0]
	lsls r1, r1, #0xb
	ldr r2, _0807D960 @ =0x06010400
	adds r1, r1, r2
	ldr r0, _0807D96C @ =sub_080733D8
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	mov r0, sb
	movs r2, #0xd8
	movs r3, #4
	bl sub_080706A0
	adds r1, r0, #0
	mov r2, sl
	ldrb r0, [r2]
	adds r0, #4
	adds r2, r1, #0
	adds r2, #0x2b
	strb r0, [r2]
	strh r4, [r1, #0x20]
	mov r0, sb
	bl sub_08073A74
	ldr r2, _0807D970 @ =0x00000293
	ldr r0, _0807D974 @ =sub_08073C98
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	mov r0, sb
	movs r1, #0
	movs r3, #2
	bl sub_080706A0
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x2b
	movs r0, #0xf
	strb r0, [r2]
	strh r4, [r1, #0x20]
	adds r1, r7, #0
	adds r1, #0x10
	mov r4, sl
	ldrb r2, [r4]
	lsls r2, r2, #0xb
	ldr r0, _0807D960 @ =0x06010400
	adds r2, r2, r0
	movs r4, #0
	str r4, [sp]
	movs r0, #0xb
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r3, #0xd7
	bl sub_080708DC
	mov r1, sl
	ldrb r0, [r1]
	adds r0, #4
	adds r1, r7, #0
	adds r1, #0x2f
	strb r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807D954: .4byte 0x06010600
_0807D958: .4byte sub_080730E0
_0807D95C: .4byte sub_08073068
_0807D960: .4byte 0x06010400
_0807D964: .4byte sub_0807D978
_0807D968: .4byte sub_080732E4
_0807D96C: .4byte sub_080733D8
_0807D970: .4byte 0x00000293
_0807D974: .4byte sub_08073C98

	thumb_func_start sub_0807D978
sub_0807D978: @ 0x0807D978
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r4, [r6, #0x44]
	adds r0, r4, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	beq _0807D99C
	ldrh r1, [r6, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0807D9C6
	ldrb r1, [r6, #1]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0807D9C6
_0807D99C:
	movs r2, #0
	ldr r1, [r6, #0x44]
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	beq _0807D9B4
	ldr r3, _0807D9CC @ =0x00000103
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807D9C2
_0807D9B4:
	ldrh r1, [r6, #6]
	movs r2, #0xa0
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r6, #6]
	movs r2, #1
_0807D9C2:
	cmp r2, #0
	beq _0807D9D0
_0807D9C6:
	movs r0, #1
	b _0807DBC4
	.align 2, 0
_0807D9CC: .4byte 0x00000103
_0807D9D0:
	ldrh r1, [r6, #6]
	movs r0, #2
	ands r0, r1
	ldrb r3, [r6, #1]
	cmp r0, #0
	bne _0807D9E6
	movs r0, #0xf
	ands r0, r3
	cmp r0, #0
	beq _0807D9E6
	b _0807DBC2
_0807D9E6:
	movs r2, #4
	orrs r2, r1
	ldr r0, _0807DA20 @ =0x0000FFFE
	ands r2, r0
	strh r2, [r6, #6]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	orrs r0, r2
	strh r0, [r6, #6]
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r6, #0x38]
	lsls r0, r3, #0x18
	lsrs r1, r0, #0x1c
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0807DA24
	cmp r1, #1
	ble _0807DA1A
	cmp r1, #2
	beq _0807DA28
	cmp r1, #3
	beq _0807DA34
_0807DA1A:
	movs r0, #8
	mov ip, r0
	b _0807DA38
	.align 2, 0
_0807DA20: .4byte 0x0000FFFE
_0807DA24:
	movs r2, #4
	b _0807DA36
_0807DA28:
	ldr r0, _0807DA30 @ =0x0000FFFC
	mov ip, r0
	b _0807DA38
	.align 2, 0
_0807DA30: .4byte 0x0000FFFC
_0807DA34:
	ldr r2, _0807DA50 @ =0x0000FFF8
_0807DA36:
	mov ip, r2
_0807DA38:
	ldr r1, _0807DA54 @ =gUnk_08350DF0
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0807DA70
	lsls r0, r0, #2
	ldr r1, _0807DA58 @ =_0807DA5C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807DA50: .4byte 0x0000FFF8
_0807DA54: .4byte gUnk_08350DF0
_0807DA58: .4byte _0807DA5C
_0807DA5C: @ jump table
	.4byte _0807DA70 @ case 0
	.4byte _0807DAA4 @ case 1
	.4byte _0807DADC @ case 2
	.4byte _0807DB10 @ case 3
	.4byte _0807DB48 @ case 4
_0807DA70:
	ldr r5, _0807DA98 @ =gRngVal
	ldr r0, [r5]
	ldr r4, _0807DA9C @ =0x00196225
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r3, _0807DAA0 @ =0x3C6EF35F
	adds r2, r2, r3
	lsrs r0, r2, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r7, r0, #0
	adds r7, #0x10
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #7
	b _0807DB6C
	.align 2, 0
_0807DA98: .4byte gRngVal
_0807DA9C: .4byte 0x00196225
_0807DAA0: .4byte 0x3C6EF35F
_0807DAA4:
	ldr r5, _0807DAD0 @ =gRngVal
	ldr r0, [r5]
	ldr r4, _0807DAD4 @ =0x00196225
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r3, _0807DAD8 @ =0x3C6EF35F
	adds r2, r2, r3
	lsrs r0, r2, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r7, r0, #0
	adds r7, #0xc
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	subs r0, #4
	b _0807DB70
	.align 2, 0
_0807DAD0: .4byte gRngVal
_0807DAD4: .4byte 0x00196225
_0807DAD8: .4byte 0x3C6EF35F
_0807DADC:
	ldr r5, _0807DB04 @ =gRngVal
	ldr r0, [r5]
	ldr r4, _0807DB08 @ =0x00196225
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r3, _0807DB0C @ =0x3C6EF35F
	adds r2, r2, r3
	lsrs r0, r2, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r7, r0, #0
	adds r7, #0xc
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #7
	b _0807DB34
	.align 2, 0
_0807DB04: .4byte gRngVal
_0807DB08: .4byte 0x00196225
_0807DB0C: .4byte 0x3C6EF35F
_0807DB10:
	ldr r5, _0807DB3C @ =gRngVal
	ldr r0, [r5]
	ldr r4, _0807DB40 @ =0x00196225
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r3, _0807DB44 @ =0x3C6EF35F
	adds r2, r2, r3
	lsrs r0, r2, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r7, r0, #0
	adds r7, #0x10
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #0xf
_0807DB34:
	ands r0, r1
	adds r2, r0, #4
	b _0807DB74
	.align 2, 0
_0807DB3C: .4byte gRngVal
_0807DB40: .4byte 0x00196225
_0807DB44: .4byte 0x3C6EF35F
_0807DB48:
	ldr r5, _0807DBA4 @ =gRngVal
	ldr r0, [r5]
	ldr r4, _0807DBA8 @ =0x00196225
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r3, _0807DBAC @ =0x3C6EF35F
	adds r2, r2, r3
	lsrs r0, r2, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r7, r0, #0
	adds r7, #0x10
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #0xf
_0807DB6C:
	ands r0, r1
	subs r0, #0xc
_0807DB70:
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0807DB74:
	movs r3, #0
	strh r3, [r6, #0x3c]
	strh r3, [r6, #0x3e]
	movs r4, #0x20
	strh r4, [r6, #4]
	mov r0, ip
	strh r0, [r6, #8]
	ldrh r1, [r6, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807DBB0
	lsls r1, r7, #8
	ldr r0, [r6, #0x34]
	subs r0, r0, r1
	str r0, [r6, #0x34]
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x38]
	subs r0, r0, r1
	str r0, [r6, #0x38]
	rsbs r0, r4, #0
	strh r0, [r6, #4]
	b _0807DBC2
	.align 2, 0
_0807DBA4: .4byte gRngVal
_0807DBA8: .4byte 0x00196225
_0807DBAC: .4byte 0x3C6EF35F
_0807DBB0:
	lsls r1, r7, #8
	ldr r0, [r6, #0x34]
	adds r0, r0, r1
	str r0, [r6, #0x34]
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x38]
	subs r0, r0, r1
	str r0, [r6, #0x38]
_0807DBC2:
	movs r0, #0
_0807DBC4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807DBCC
sub_0807DBCC: @ 0x0807DBCC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0807DC04 @ =sub_08070580
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807DC08 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807DC0C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807DC14
	.align 2, 0
_0807DC04: .4byte sub_08070580
_0807DC08: .4byte sub_0803DCCC
_0807DC0C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807DC14:
	adds r4, r0, #0
	bl sub_0803E380
	movs r3, #0
	movs r0, #2
	mov sb, r0
	mov r1, sb
	strb r1, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	movs r6, #0
	strh r3, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r2, r4, #0
	adds r2, #0x56
	strb r0, [r2]
	ldr r0, _0807DD34 @ =gUnk_03000510
	ldrb r1, [r0, #4]
	movs r0, #1
	ldrb r2, [r2]
	lsls r0, r2
	movs r2, #0x10
	mov r8, r2
	orrs r0, r2
	ands r1, r0
	cmp r1, #0
	beq _0807DC6A
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0807DC6A:
	ldr r0, _0807DD38 @ =sub_0807DE28
	str r0, [r4, #0x78]
	ldr r0, _0807DD3C @ =sub_0807E098
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0x80
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	adds r0, #4
	strb r6, [r0]
	adds r1, r4, #0
	adds r1, #0x89
	strb r6, [r1]
	adds r1, #1
	strh r3, [r1]
	strb r6, [r0]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	ldr r0, _0807DD40 @ =gUnk_08351648
	mov ip, r0
	adds r2, r5, #0
	adds r2, #0x82
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, ip
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	adds r0, #9
	adds r3, r4, #0
	adds r3, #0x63
	strb r0, [r3]
	movs r1, #0
	ldrsb r1, [r3, r1]
	adds r0, r4, #0
	adds r0, #0x64
	strh r1, [r0]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r1, r4, #0
	adds r1, #0x66
	strh r0, [r1]
	ldr r1, [r4, #8]
	ldr r0, _0807DD44 @ =0x00300100
	orrs r1, r0
	ldr r0, _0807DD48 @ =0x00080220
	str r0, [r4, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	str r1, [r4, #8]
	ldr r0, _0807DD4C @ =0x10880007
	str r0, [r4, #0x68]
	ldr r3, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	adds r7, r2, #0
	cmp r3, #0
	bne _0807DD10
	ldrb r2, [r7]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	mov r1, ip
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	subs r0, #9
	cmp r0, #0xf
	bls _0807DD10
	adds r0, r2, #0
	cmp r0, #0x1a
	beq _0807DD10
	cmp r0, #0x33
	beq _0807DD10
	cmp r0, #0x31
	bne _0807DD54
_0807DD10:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x10
	ldr r3, _0807DD50 @ =0x0000028B
	movs r0, #1
	str r0, [sp]
	movs r0, #0xd0
	lsls r0, r0, #2
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #9
	bl sub_080708DC
	b _0807DD9A
	.align 2, 0
_0807DD34: .4byte gUnk_03000510
_0807DD38: .4byte sub_0807DE28
_0807DD3C: .4byte sub_0807E098
_0807DD40: .4byte gUnk_08351648
_0807DD44: .4byte 0x00300100
_0807DD48: .4byte 0x00080220
_0807DD4C: .4byte 0x10880007
_0807DD50: .4byte 0x0000028B
_0807DD54:
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	movs r0, #0xd0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	subs r0, #0xb5
	strh r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x2a
	mov r1, sb
	strb r1, [r0]
	strh r3, [r4, #0x26]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0xff
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2c
	mov r2, r8
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0xf
	strb r0, [r1]
	strh r3, [r4, #0x20]
	strh r3, [r4, #0x22]
	movs r0, #0x84
	lsls r0, r0, #0xb
	str r0, [r4, #0x18]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
	str r3, [r5, #0x10]
_0807DD9A:
	ldr r1, _0807DDCC @ =gUnk_08351648
	ldrb r3, [r7]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #8
	bhi _0807DDD0
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #5
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #5
	bl sub_0803E2B0
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	b _0807DE1A
	.align 2, 0
_0807DDCC: .4byte gUnk_08351648
_0807DDD0:
	cmp r0, #0x18
	bls _0807DDEE
	ldr r2, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r2, r0
	cmp r2, #0
	bne _0807DDEE
	adds r0, r3, #0
	cmp r0, #0x1a
	beq _0807DDEE
	cmp r0, #0x33
	beq _0807DDEE
	cmp r0, #0x31
	bne _0807DE02
_0807DDEE:
	movs r2, #0xb
	rsbs r2, r2, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0xb
	bl sub_0803E2B0
	b _0807DE1A
_0807DE02:
	adds r0, r4, #0
	adds r0, #0x2a
	strb r2, [r0]
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0x10
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0x10
	bl sub_0803E2B0
_0807DE1A:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807DE28
sub_0807DE28: @ 0x0807DE28
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r0, #0
	adds r0, #0x88
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807DE88
	ldr r2, [r5, #0x70]
	ldr r0, [r2, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r2, #0x44]
	str r0, [r5, #0x44]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0807DE58
	ldr r0, [r5, #8]
	ldr r1, _0807DE54 @ =0xFFFFFBFF
	ands r0, r1
	b _0807DE5C
	.align 2, 0
_0807DE54: .4byte 0xFFFFFBFF
_0807DE58:
	ldr r0, [r5, #8]
	orrs r0, r1
_0807DE5C:
	str r0, [r5, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0807DE88
	adds r1, r5, #0
	adds r1, #0x88
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	str r2, [r5, #0x70]
	ldr r0, [r5, #8]
	ldr r1, _0807DEF8 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #0x17
	orrs r0, r1
	ldr r1, _0807DEFC @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
_0807DE88:
	ldr r6, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r6, r0
	cmp r6, #0
	beq _0807DF10
	ldr r2, _0807DF00 @ =gKirbys
	ldr r0, _0807DF04 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	beq _0807DEB4
	b _0807DFC4
_0807DEB4:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0807DEBC
	b _0807DFCE
_0807DEBC:
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #9
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _0807DF08 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _0807DF0C @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _0807DFCE
	.align 2, 0
_0807DEF8: .4byte 0xFFFFFBFF
_0807DEFC: .4byte 0xFFFFFDFF
_0807DF00: .4byte gKirbys
_0807DF04: .4byte gUnk_0203AD3C
_0807DF08: .4byte 0xFFF7FFFF
_0807DF0C: .4byte 0x0400000A
_0807DF10:
	ldr r4, [r5, #0xc]
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _0807DF5A
	ldr r2, _0807DF44 @ =gKirbys
	ldr r0, _0807DF48 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r2, [r7]
	cmp r0, r2
	bne _0807DF4C
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0807DFCE
	movs r0, #4
	b _0807DF80
	.align 2, 0
_0807DF44: .4byte gKirbys
_0807DF48: .4byte gUnk_0203AD3C
_0807DF4C:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0807DFC4
	bl sub_08157190
	str r6, [r5, #0x10]
	b _0807DFC4
_0807DF5A:
	ldr r2, _0807DFA8 @ =gKirbys
	ldr r0, _0807DFAC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _0807DFB8
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0807DFCE
	movs r0, #0x19
_0807DF80:
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _0807DFB0 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _0807DFB4 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _0807DFCE
	.align 2, 0
_0807DFA8: .4byte gKirbys
_0807DFAC: .4byte gUnk_0203AD3C
_0807DFB0: .4byte 0xFFF7FFFF
_0807DFB4: .4byte 0x0400000A
_0807DFB8:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0807DFC4
	bl sub_08157190
	str r4, [r5, #0x10]
_0807DFC4:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_0807DFCE:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0807E08C
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	ble _0807E08C
	ldr r1, _0807E068 @ =gKirbys
	ldr r0, _0807E06C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _0807E04C
	ldrb r0, [r5]
	cmp r0, #0
	bne _0807E010
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0807E04C
_0807E010:
	ldr r1, _0807E070 @ =gUnk_08D60FA4
	ldr r4, _0807E074 @ =gSongTable
	ldr r2, _0807E078 @ =0x000009BC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807E034
	ldr r1, _0807E07C @ =0x000009B8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807E04C
_0807E034:
	cmp r3, #0
	beq _0807E046
	ldr r0, _0807E080 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807E04C
_0807E046:
	ldr r0, _0807E084 @ =0x00000137
	bl m4aSongNumStart
_0807E04C:
	ldr r2, _0807E088 @ =0x00000292
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	movs r0, #1
	b _0807E08E
	.align 2, 0
_0807E068: .4byte gKirbys
_0807E06C: .4byte gUnk_0203AD3C
_0807E070: .4byte gUnk_08D60FA4
_0807E074: .4byte gSongTable
_0807E078: .4byte 0x000009BC
_0807E07C: .4byte 0x000009B8
_0807E080: .4byte gUnk_0203AD10
_0807E084: .4byte 0x00000137
_0807E088: .4byte 0x00000292
_0807E08C:
	movs r0, #0
_0807E08E:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807E098
sub_0807E098: @ 0x0807E098
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x6c]
	adds r2, r5, #0
	adds r2, #0x50
	movs r3, #0x80
	lsls r3, r3, #3
	strh r3, [r2]
	ldr r1, [r4, #0x40]
	ldr r0, [r5, #0x40]
	cmp r1, r0
	ble _0807E0B4
	rsbs r0, r3, #0
	strh r0, [r2]
_0807E0B4:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	ldr r1, _0807E0D8 @ =0xAFFBFFFF
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, _0807E0DC @ =0x20000043
	str r0, [r5, #0x68]
	ldrb r0, [r4]
	cmp r0, #0
	bne _0807E0E0
	adds r0, r4, #0
	movs r1, #4
	bl sub_080853C8
	str r4, [r5, #0x70]
	b _0807E0FC
	.align 2, 0
_0807E0D8: .4byte 0xAFFBFFFF
_0807E0DC: .4byte 0x20000043
_0807E0E0:
	ldr r0, [r4, #0x68]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0807E0FC
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _0807E0FC
	movs r1, #4
	bl sub_080853C8
	ldr r0, [r4, #0x70]
	str r0, [r5, #0x70]
_0807E0FC:
	ldr r1, _0807E174 @ =gKirbys
	ldr r0, _0807E178 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807E166
	ldrb r0, [r4]
	cmp r0, #0
	bne _0807E128
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0807E166
_0807E128:
	ldr r1, _0807E17C @ =gUnk_08D60FA4
	ldr r4, _0807E180 @ =gSongTable
	ldr r2, _0807E184 @ =0x00000484
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807E14E
	movs r1, #0x90
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807E166
_0807E14E:
	cmp r3, #0
	beq _0807E160
	ldr r0, _0807E188 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807E166
_0807E160:
	movs r0, #0x90
	bl m4aSongNumStart
_0807E166:
	ldr r0, _0807E18C @ =sub_08084C34
	str r0, [r5, #0x7c]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0807E174: .4byte gKirbys
_0807E178: .4byte gUnk_0203AD3C
_0807E17C: .4byte gUnk_08D60FA4
_0807E180: .4byte gSongTable
_0807E184: .4byte 0x00000484
_0807E188: .4byte gUnk_0203AD10
_0807E18C: .4byte sub_08084C34

	thumb_func_start sub_0807E190
sub_0807E190: @ 0x0807E190
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _0807E1C0 @ =sub_0807E2FC
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807E1C4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807E1CC
	.align 2, 0
_0807E1C0: .4byte sub_0807E2FC
_0807E1C4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807E1CC:
	adds r4, r0, #0
	bl sub_0803E380
	movs r2, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r2, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r6, r4, #0
	adds r6, #0x56
	strb r0, [r6]
	ldr r0, _0807E2A0 @ =gUnk_03000510
	ldrb r1, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r7, [r6]
	lsls r0, r7
	movs r7, #0x10
	orrs r0, r7
	ands r1, r0
	cmp r1, #0
	beq _0807E21C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0807E21C:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x66
	strh r2, [r0]
	subs r1, #1
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #0x18
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _0807E2A4 @ =0x30400043
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _0807E25C
	orrs r2, r3
	str r2, [r4, #8]
_0807E25C:
	str r7, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0x10
	bl sub_0803E2B0
	str r7, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0x10
	bl sub_0803E308
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _0807E2EA
	ldrb r0, [r6]
	cmp r0, #0xff
	beq _0807E2B0
	ldr r2, _0807E2A8 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _0807E2AC @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _0807E2B2
	.align 2, 0
_0807E2A0: .4byte gUnk_03000510
_0807E2A4: .4byte 0x30400043
_0807E2A8: .4byte gCurLevelInfo
_0807E2AC: .4byte 0x0000065E
_0807E2B0:
	movs r1, #0xff
_0807E2B2:
	cmp r1, #0xff
	beq _0807E2EA
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _0807E2F4 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0807E2F8 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0807E2EA:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E2F4: .4byte gUnk_02022EB0
_0807E2F8: .4byte gUnk_02022F50

	thumb_func_start sub_0807E2FC
sub_0807E2FC: @ 0x0807E2FC
	push {r4, r5, lr}
	ldr r0, _0807E318 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807E31C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807E324
	.align 2, 0
_0807E318: .4byte gCurTask
_0807E31C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807E324:
	adds r4, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807E332
	b _0807E42A
_0807E332:
	ldr r5, [r4, #0x70]
	adds r0, r5, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x68
	beq _0807E348
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	b _0807E428
_0807E348:
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _0807E390
	ldr r1, [r4, #0x6c]
	cmp r1, #0
	beq _0807E370
	ldrb r0, [r1]
	cmp r0, #1
	bne _0807E370
	adds r0, r1, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #6
	bne _0807E370
	ldr r0, _0807E38C @ =0xFFFBFFFF
	ands r2, r0
	str r2, [r4, #8]
_0807E370:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _0807E390
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r4, #8]
	adds r0, r5, #0
	bl sub_080666C0
	b _0807E42A
	.align 2, 0
_0807E38C: .4byte 0xFFFBFFFF
_0807E390:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _0807E3FE
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0807E3C4
	ldr r2, _0807E3BC @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _0807E3C0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _0807E3C6
	.align 2, 0
_0807E3BC: .4byte gCurLevelInfo
_0807E3C0: .4byte 0x0000065E
_0807E3C4:
	movs r1, #0xff
_0807E3C6:
	cmp r1, #0xff
	beq _0807E3FE
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _0807E418 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0807E41C @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0807E3FE:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807E420
	ldr r0, [r4, #8]
	orrs r0, r1
	b _0807E428
	.align 2, 0
_0807E418: .4byte gUnk_02022EB0
_0807E41C: .4byte gUnk_02022F50
_0807E420:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0807E428:
	str r0, [r4, #8]
_0807E42A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0807E430
sub_0807E430: @ 0x0807E430
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _0807E460 @ =sub_0807E518
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807E464
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0807E46C
	.align 2, 0
_0807E460: .4byte sub_0807E518
_0807E464:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0807E46C:
	adds r0, r4, #0
	bl sub_0803E380
	movs r3, #0
	movs r7, #2
	strb r7, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r3, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807E510 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r6, #1
	adds r0, r6, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807E4BC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0807E4BC:
	adds r0, r4, #0
	adds r0, #0x64
	strh r3, [r0]
	adds r0, #2
	strh r3, [r0]
	subs r0, #3
	strb r7, [r0]
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x16
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _0807E514 @ =0x20008003
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r6
	cmp r0, #0
	beq _0807E4F4
	orrs r2, r6
	str r2, [r4, #8]
_0807E4F4:
	movs r1, #0x78
	rsbs r1, r1, #0
	movs r2, #0x50
	rsbs r2, r2, #0
	movs r0, #0x50
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x78
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E510: .4byte gUnk_03000510
_0807E514: .4byte 0x20008003

	thumb_func_start sub_0807E518
sub_0807E518: @ 0x0807E518
	push {r4, r5, r6, r7, lr}
	ldr r0, _0807E534 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807E538
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0807E540
	.align 2, 0
_0807E534: .4byte gCurTask
_0807E538:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0807E540:
	adds r6, r4, #0
	ldr r5, [r4, #0x70]
	adds r0, r4, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807E552
	b _0807E664
_0807E552:
	ldr r1, _0807E584 @ =0x00000103
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0807E576
	adds r0, r4, #0
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807E576
	adds r0, r5, #0
	bl sub_0805BEC4
	cmp r0, #0
	beq _0807E588
_0807E576:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r6, #8]
	b _0807E664
	.align 2, 0
_0807E584: .4byte 0x00000103
_0807E588:
	adds r0, r5, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x36
	beq _0807E59E
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0807E5AA
_0807E59E:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _0807E664
_0807E5AA:
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _0807E65C
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	ldr r7, _0807E5DC @ =gCurLevelInfo
	cmp r0, #0
	bne _0807E61E
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0807E5E4
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r7
	ldr r1, _0807E5E0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _0807E5E6
	.align 2, 0
_0807E5DC: .4byte gCurLevelInfo
_0807E5E0: .4byte 0x0000065E
_0807E5E4:
	movs r1, #0xff
_0807E5E6:
	cmp r1, #0xff
	beq _0807E61E
	lsls r3, r1, #6
	ldrb r0, [r6]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _0807E654 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r6]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0807E658 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r6, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0807E61E:
	adds r3, r5, #0
	adds r3, #0x56
	ldrb r0, [r3]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldrb r0, [r3]
	muls r0, r2, r0
	adds r1, r7, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r6, #0x44]
	movs r0, #1
	strh r0, [r6, #4]
	b _0807E664
	.align 2, 0
_0807E654: .4byte gUnk_02022EB0
_0807E658: .4byte gUnk_02022F50
_0807E65C:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
_0807E664:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807E66C
sub_0807E66C: @ 0x0807E66C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0807E6A4 @ =sub_0807E820
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807E6A8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807E6AC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0807E6B4
	.align 2, 0
_0807E6A4: .4byte sub_0807E820
_0807E6A8: .4byte sub_0803DCCC
_0807E6AC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0807E6B4:
	adds r0, r4, #0
	bl sub_0803E380
	movs r7, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r7, [r4, #4]
	movs r0, #0x60
	adds r0, r0, r5
	mov r8, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r6, r5, #0
	adds r6, #0x56
	ldrb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807E7F8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807E706
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0807E706:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x66
	strh r7, [r0]
	subs r0, #3
	strb r3, [r0]
	ldr r2, [r4, #8]
	ldr r0, _0807E7FC @ =0xA0000100
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _0807E800 @ =0x30000043
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x18
	mov sb, r1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r3
	orrs r2, r0
	str r2, [r4, #8]
	str r7, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E2B0
	str r7, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	ldrb r2, [r6]
	lsls r2, r2, #0xb
	ldr r3, _0807E804 @ =0x06010400
	adds r2, r2, r3
	movs r3, #0xfd
	lsls r3, r3, #1
	str r7, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	ldrb r0, [r6]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2f
	strb r0, [r1]
	ldr r1, _0807E808 @ =gKirbys
	ldr r0, _0807E80C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, r8
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807E7EA
	ldrb r0, [r5]
	cmp r0, #0
	bne _0807E7A8
	ldrb r0, [r6]
	cmp r0, r2
	bne _0807E7EA
_0807E7A8:
	ldr r1, _0807E810 @ =gUnk_08D60FA4
	ldr r4, _0807E814 @ =gSongTable
	ldr r2, _0807E818 @ =0x0000064C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	bne _0807E7D2
	movs r1, #0xc9
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807E7EA
_0807E7D2:
	cmp r3, #0
	beq _0807E7E4
	ldr r0, _0807E81C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807E7EA
_0807E7E4:
	movs r0, #0xc9
	bl m4aSongNumStart
_0807E7EA:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E7F8: .4byte gUnk_03000510
_0807E7FC: .4byte 0xA0000100
_0807E800: .4byte 0x30000043
_0807E804: .4byte 0x06010400
_0807E808: .4byte gKirbys
_0807E80C: .4byte gUnk_0203AD3C
_0807E810: .4byte gUnk_08D60FA4
_0807E814: .4byte gSongTable
_0807E818: .4byte 0x0000064C
_0807E81C: .4byte gUnk_0203AD10

	thumb_func_start sub_0807E820
sub_0807E820: @ 0x0807E820
	push {r4, r5, lr}
	sub sp, #4
	ldr r2, _0807E840 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807E844
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807E84C
	.align 2, 0
_0807E840: .4byte gCurTask
_0807E844:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807E84C:
	adds r4, r0, #0
	ldr r0, [r4, #0x70]
	mov ip, r0
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r3, r0
	cmp r3, #0
	beq _0807E866
	ldr r0, [r2]
	bl TaskDestroy
	b _0807EA6E
_0807E866:
	mov r1, ip
	ldr r0, [r1, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r4, #0x44]
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _0807E884
	adds r0, r4, #0
	adds r0, #0x2c
	strb r3, [r0]
	b _0807E88C
_0807E884:
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0x10
	strb r0, [r1]
_0807E88C:
	ldr r0, _0807E8BC @ =0x00000103
	add r0, ip
	ldrb r0, [r0]
	ldr r1, [r4, #8]
	cmp r0, #0x14
	bne _0807E8B2
	adds r3, r1, #0
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	bne _0807E8B2
	mov r0, ip
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x34
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _0807E8C0
_0807E8B2:
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r4, #8]
	b _0807EA6E
	.align 2, 0
_0807E8BC: .4byte 0x00000103
_0807E8C0:
	ldr r0, _0807E8EC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807E8F0
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r3
	cmp r0, #0
	bne _0807E8F0
	adds r0, r4, #0
	bl sub_0803D9A8
	b _0807EA6E
	.align 2, 0
_0807E8EC: .4byte gUnk_03000510
_0807E8F0:
	ldrh r2, [r4, #4]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0807E91C
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0807E91C
	adds r0, r2, #1
	strh r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807E91C
	ldr r0, [r4, #8]
	ldr r1, _0807EA18 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
_0807E91C:
	ldrh r1, [r4, #0x1c]
	movs r0, #0xfd
	lsls r0, r0, #1
	cmp r1, r0
	bne _0807E9BC
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807E9BC
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0807E9BC
	ldrb r0, [r4, #1]
	cmp r0, #6
	beq _0807E948
	cmp r0, #0xa
	bne _0807E9BC
_0807E948:
	ldr r0, [r4, #8]
	ldr r1, _0807EA18 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _0807EA1C @ =gKirbys
	ldr r0, _0807EA20 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	mov r1, ip
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807E9BC
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _0807E97E
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0807E9BC
_0807E97E:
	ldr r1, _0807EA24 @ =gUnk_08D60FA4
	ldr r5, _0807EA28 @ =gSongTable
	ldr r2, _0807EA2C @ =0x0000064C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807E9A4
	movs r1, #0xc9
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807E9BC
_0807E9A4:
	cmp r3, #0
	beq _0807E9B6
	ldr r0, _0807EA30 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807E9BC
_0807E9B6:
	movs r0, #0xc9
	bl m4aSongNumStart
_0807E9BC:
	ldr r0, [r4, #8]
	ldr r1, _0807EA34 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _0807E9D8
	movs r2, #0x26
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _0807E9D8
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
_0807E9D8:
	adds r0, r4, #0
	bl sub_0806F8BC
	ldr r1, [r4, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0807EA5E
	ldr r0, [r4, #8]
	ldr r1, _0807EA34 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807EA38
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r1, [r0]
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	subs r0, #1
	ldrb r3, [r0]
	rsbs r3, r3, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, #3
	b _0807EA4E
	.align 2, 0
_0807EA18: .4byte 0xFFFBFFFF
_0807EA1C: .4byte gKirbys
_0807EA20: .4byte gUnk_0203AD3C
_0807EA24: .4byte gUnk_08D60FA4
_0807EA28: .4byte gSongTable
_0807EA2C: .4byte 0x0000064C
_0807EA30: .4byte gUnk_0203AD10
_0807EA34: .4byte 0xFFFFFDFF
_0807EA38:
	adds r0, r4, #0
	adds r0, #0x34
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, #1
_0807EA4E:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0803E308
	b _0807EA6E
_0807EA5E:
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
_0807EA6E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807EA78
sub_0807EA78: @ 0x0807EA78
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0807EAAC @ =sub_0807E820
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807EAB0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807EAB4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0807EABC
	.align 2, 0
_0807EAAC: .4byte sub_0807E820
_0807EAB0: .4byte sub_0803DCCC
_0807EAB4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0807EABC:
	adds r0, r4, #0
	bl sub_0803E380
	movs r0, #0
	mov r8, r0
	movs r3, #2
	strb r3, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	mov r0, r8
	strh r0, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r6, r5, #0
	adds r6, #0x56
	ldrb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807EB9C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r7, #1
	adds r0, r7, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807EB10
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0807EB10:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #2
	subs r0, #0x40
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, [r4, #8]
	ldr r0, _0807EBA0 @ =0xA0000100
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _0807EBA4 @ =0x30000043
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r7
	orrs r2, r0
	str r2, [r4, #8]
	mov r0, r8
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E2B0
	mov r0, r8
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	ldrb r2, [r6]
	lsls r2, r2, #0xb
	ldr r0, _0807EBA8 @ =0x06010400
	adds r2, r2, r0
	movs r3, #0xfd
	lsls r3, r3, #1
	str r7, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	ldrb r0, [r6]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2f
	strb r0, [r1]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807EB9C: .4byte gUnk_03000510
_0807EBA0: .4byte 0xA0000100
_0807EBA4: .4byte 0x30000043
_0807EBA8: .4byte 0x06010400

	thumb_func_start sub_0807EBAC
sub_0807EBAC: @ 0x0807EBAC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0807EBE0 @ =sub_0807E820
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807EBE4 @ =sub_08084FEC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807EBE8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0807EBF0
	.align 2, 0
_0807EBE0: .4byte sub_0807E820
_0807EBE4: .4byte sub_08084FEC
_0807EBE8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0807EBF0:
	adds r0, r4, #0
	bl sub_0803E380
	movs r7, #0
	movs r0, #2
	mov r8, r0
	mov r0, r8
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r7, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r6, r5, #0
	adds r6, #0x56
	ldrb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807ECCC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807EC44
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0807EC44:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0807ECD0 @ =0x0000FDC0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, [r4, #8]
	ldr r0, _0807ECD4 @ =0xA0000100
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _0807ECD8 @ =0x30000043
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r3
	orrs r2, r0
	str r2, [r4, #8]
	strh r3, [r4, #4]
	str r7, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E2B0
	str r7, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	ldrb r2, [r6]
	lsls r2, r2, #0xb
	ldr r0, _0807ECDC @ =0x06010400
	adds r2, r2, r0
	movs r3, #0xfd
	lsls r3, r3, #1
	mov r0, r8
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	ldrb r0, [r6]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2f
	strb r0, [r1]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807ECCC: .4byte gUnk_03000510
_0807ECD0: .4byte 0x0000FDC0
_0807ECD4: .4byte 0xA0000100
_0807ECD8: .4byte 0x30000043
_0807ECDC: .4byte 0x06010400

	thumb_func_start sub_0807ECE0
sub_0807ECE0: @ 0x0807ECE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	ldr r0, _0807ED18 @ =sub_08070580
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807ED1C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807ED20
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807ED28
	.align 2, 0
_0807ED18: .4byte sub_08070580
_0807ED1C: .4byte sub_0803DCCC
_0807ED20:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807ED28:
	adds r7, r0, #0
	bl sub_0803E380
	movs r0, #0
	mov ip, r0
	movs r1, #2
	mov sb, r1
	mov r2, sb
	strb r2, [r7]
	mov r3, r8
	ldr r0, [r3, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r3, #0x44]
	str r0, [r7, #0x44]
	str r3, [r7, #0x70]
	movs r5, #0
	mov r0, ip
	strh r0, [r7, #4]
	mov r4, r8
	adds r4, #0x60
	ldrh r1, [r4]
	adds r0, r7, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r3, #0x56
	ldrb r0, [r3]
	adds r1, r7, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807EDF8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r6, #1
	adds r0, r6, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	mov sl, r4
	str r3, [sp, #8]
	cmp r2, #0
	beq _0807ED86
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r7, #8]
_0807ED86:
	ldr r0, _0807EDFC @ =sub_08084CF8
	str r0, [r7, #0x78]
	ldr r0, _0807EE00 @ =sub_08084C8C
	str r0, [r7, #0x7c]
	adds r1, r7, #0
	adds r1, #0x80
	ldr r0, _0807EE04 @ =sub_08084CB0
	str r0, [r1]
	adds r1, #4
	ldr r0, _0807EE08 @ =sub_08085030
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0x88
	strb r5, [r0]
	adds r1, #5
	strb r5, [r1]
	adds r1, #1
	mov r2, ip
	strh r2, [r1]
	strb r5, [r0]
	ldr r0, [r7, #8]
	movs r1, #0xa0
	lsls r1, r1, #0x18
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r7, #8]
	adds r1, r7, #0
	adds r1, #0x64
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x66
	strh r2, [r0]
	subs r0, #3
	mov r3, sb
	strb r3, [r0]
	ldr r0, _0807EE0C @ =0x30000043
	str r0, [r7, #0x68]
	mov r1, r8
	ldr r0, [r1, #8]
	ands r0, r6
	cmp r0, #0
	beq _0807EE18
	adds r1, r7, #0
	adds r1, #0x50
	ldr r0, _0807EE10 @ =0x0000FCE0
	strh r0, [r1]
	ldr r0, [r7, #8]
	orrs r0, r6
	str r0, [r7, #8]
	ldr r0, [r7, #0x40]
	ldr r2, _0807EE14 @ =0xFFFFF800
	adds r0, r0, r2
	b _0807EE2A
	.align 2, 0
_0807EDF8: .4byte gUnk_03000510
_0807EDFC: .4byte sub_08084CF8
_0807EE00: .4byte sub_08084C8C
_0807EE04: .4byte sub_08084CB0
_0807EE08: .4byte sub_08085030
_0807EE0C: .4byte 0x30000043
_0807EE10: .4byte 0x0000FCE0
_0807EE14: .4byte 0xFFFFF800
_0807EE18:
	adds r1, r7, #0
	adds r1, #0x50
	movs r0, #0xc8
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r7, #0x40]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
_0807EE2A:
	str r0, [r7, #0x40]
	movs r5, #6
	rsbs r5, r5, #0
	movs r4, #3
	rsbs r4, r4, #0
	movs r6, #3
	str r6, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #6
	bl sub_0803E2B0
	movs r0, #6
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #3
	bl sub_0803E308
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r7, #8]
	adds r1, r7, #0
	adds r1, #0x10
	ldr r2, _0807EEEC @ =0x06012000
	ldr r3, _0807EEF0 @ =0x000002B7
	str r6, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080708DC
	ldr r1, _0807EEF4 @ =gKirbys
	ldr r0, _0807EEF8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sl
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807EEDA
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #0
	bne _0807EE9C
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	cmp r0, r2
	bne _0807EEDA
_0807EE9C:
	ldr r1, _0807EEFC @ =gUnk_08D60FA4
	ldr r4, _0807EF00 @ =gSongTable
	ldr r2, _0807EF04 @ =0x00000684
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807EEC2
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807EEDA
_0807EEC2:
	cmp r3, #0
	beq _0807EED4
	ldr r0, _0807EF08 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807EEDA
_0807EED4:
	movs r0, #0xd0
	bl m4aSongNumStart
_0807EEDA:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807EEEC: .4byte 0x06012000
_0807EEF0: .4byte 0x000002B7
_0807EEF4: .4byte gKirbys
_0807EEF8: .4byte gUnk_0203AD3C
_0807EEFC: .4byte gUnk_08D60FA4
_0807EF00: .4byte gSongTable
_0807EF04: .4byte 0x00000684
_0807EF08: .4byte gUnk_0203AD10

	thumb_func_start sub_0807EF0C
sub_0807EF0C: @ 0x0807EF0C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _0807EF44 @ =sub_08070580
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807EF48 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807EF4C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807EF54
	.align 2, 0
_0807EF44: .4byte sub_08070580
_0807EF48: .4byte sub_0803DCCC
_0807EF4C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807EF54:
	adds r5, r0, #0
	bl sub_0803E380
	movs r7, #0
	movs r0, #2
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	str r6, [r5, #0x70]
	movs r0, #0
	mov ip, r0
	strh r7, [r5, #4]
	adds r4, r6, #0
	adds r4, #0x60
	ldrh r1, [r4]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r3, r6, #0
	adds r3, #0x56
	ldrb r0, [r3]
	adds r1, r5, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807F020 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	mov r8, r0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	mov sb, r3
	cmp r2, #0
	beq _0807EFAA
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_0807EFAA:
	ldr r0, _0807F024 @ =sub_08084CF8
	str r0, [r5, #0x78]
	str r7, [r5, #0x7c]
	adds r1, r5, #0
	adds r1, #0x80
	ldr r0, _0807F028 @ =sub_08084CC4
	str r0, [r1]
	adds r1, #4
	ldr r0, _0807F02C @ =sub_08085030
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x88
	mov r1, ip
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x89
	mov r2, ip
	strb r2, [r1]
	adds r1, #1
	strh r7, [r1]
	strb r2, [r0]
	ldr r0, [r5, #8]
	movs r1, #0xa0
	lsls r1, r1, #0x18
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x64
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x66
	strh r7, [r0]
	subs r1, #1
	movs r0, #4
	strb r0, [r1]
	ldr r0, _0807F030 @ =0x30000043
	str r0, [r5, #0x68]
	ldr r0, [r6, #8]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0807F03C
	adds r1, r5, #0
	adds r1, #0x50
	ldr r0, _0807F034 @ =0x0000FC40
	strh r0, [r1]
	ldr r0, [r5, #8]
	mov r2, r8
	orrs r0, r2
	str r0, [r5, #8]
	ldr r0, [r5, #0x40]
	ldr r1, _0807F038 @ =0xFFFFF800
	adds r0, r0, r1
	b _0807F04E
	.align 2, 0
_0807F020: .4byte gUnk_03000510
_0807F024: .4byte sub_08084CF8
_0807F028: .4byte sub_08084CC4
_0807F02C: .4byte sub_08085030
_0807F030: .4byte 0x30000043
_0807F034: .4byte 0x0000FC40
_0807F038: .4byte 0xFFFFF800
_0807F03C:
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r5, #0x40]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
_0807F04E:
	str r0, [r5, #0x40]
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #8
	bl sub_0803E2B0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E308
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x10
	ldr r2, _0807F108 @ =0x06012000
	ldr r3, _0807F10C @ =0x000002B7
	movs r0, #4
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080708DC
	ldr r1, _0807F110 @ =gKirbys
	ldr r0, _0807F114 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r4, [r4]
	cmp r0, r4
	bne _0807F0FA
	ldrb r0, [r6]
	cmp r0, #0
	bne _0807F0BC
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, r2
	bne _0807F0FA
_0807F0BC:
	ldr r1, _0807F118 @ =gUnk_08D60FA4
	ldr r4, _0807F11C @ =gSongTable
	ldr r2, _0807F120 @ =0x0000068C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807F0E2
	movs r1, #0xd1
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807F0FA
_0807F0E2:
	cmp r3, #0
	beq _0807F0F4
	ldr r0, _0807F124 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807F0FA
_0807F0F4:
	movs r0, #0xd1
	bl m4aSongNumStart
_0807F0FA:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807F108: .4byte 0x06012000
_0807F10C: .4byte 0x000002B7
_0807F110: .4byte gKirbys
_0807F114: .4byte gUnk_0203AD3C
_0807F118: .4byte gUnk_08D60FA4
_0807F11C: .4byte gSongTable
_0807F120: .4byte 0x0000068C
_0807F124: .4byte gUnk_0203AD10

	thumb_func_start sub_0807F128
sub_0807F128: @ 0x0807F128
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _0807F160 @ =sub_08070580
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807F164 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807F168
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807F170
	.align 2, 0
_0807F160: .4byte sub_08070580
_0807F164: .4byte sub_0803DCCC
_0807F168:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807F170:
	adds r5, r0, #0
	bl sub_0803E380
	movs r7, #0
	movs r0, #2
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	str r6, [r5, #0x70]
	movs r0, #0
	mov ip, r0
	strh r7, [r5, #4]
	adds r4, r6, #0
	adds r4, #0x60
	ldrh r1, [r4]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r3, r6, #0
	adds r3, #0x56
	ldrb r0, [r3]
	adds r1, r5, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807F238 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	mov r8, r0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	mov sb, r4
	mov sl, r3
	cmp r2, #0
	beq _0807F1C8
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_0807F1C8:
	ldr r0, _0807F23C @ =sub_08084CF8
	str r0, [r5, #0x78]
	str r7, [r5, #0x7c]
	adds r0, r5, #0
	adds r0, #0x80
	str r7, [r0]
	adds r1, r5, #0
	adds r1, #0x84
	ldr r0, _0807F240 @ =sub_08085030
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x88
	mov r1, ip
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x89
	mov r2, ip
	strb r2, [r1]
	adds r1, #1
	strh r7, [r1]
	strb r2, [r0]
	ldr r0, [r5, #8]
	ldr r1, _0807F244 @ =0xA0000100
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x64
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x66
	strh r7, [r0]
	subs r1, #1
	movs r0, #6
	strb r0, [r1]
	ldr r0, _0807F248 @ =0x30000043
	str r0, [r5, #0x68]
	ldr r0, [r6, #8]
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	beq _0807F254
	subs r1, #0x13
	ldr r0, _0807F24C @ =0x0000FBE0
	strh r0, [r1]
	ldr r0, [r5, #8]
	orrs r0, r3
	str r0, [r5, #8]
	ldr r0, [r5, #0x40]
	ldr r1, _0807F250 @ =0xFFFFF800
	adds r0, r0, r1
	b _0807F266
	.align 2, 0
_0807F238: .4byte gUnk_03000510
_0807F23C: .4byte sub_08084CF8
_0807F240: .4byte sub_08085030
_0807F244: .4byte 0xA0000100
_0807F248: .4byte 0x30000043
_0807F24C: .4byte 0x0000FBE0
_0807F250: .4byte 0xFFFFF800
_0807F254:
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0x84
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [r5, #0x40]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
_0807F266:
	str r0, [r5, #0x40]
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0xe
	rsbs r2, r2, #0
	movs r0, #0xe
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_0803E2B0
	movs r2, #0xa
	rsbs r2, r2, #0
	movs r4, #0xa
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #0xa
	bl sub_0803E308
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x10
	ldr r2, _0807F324 @ =0x06012000
	ldr r3, _0807F328 @ =0x000002B7
	movs r0, #5
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r5, #0
	bl sub_080708DC
	ldr r1, _0807F32C @ =gKirbys
	ldr r0, _0807F330 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	mov r3, sb
	ldrh r3, [r3]
	cmp r0, r3
	bne _0807F312
	ldrb r0, [r6]
	cmp r0, #0
	bne _0807F2D4
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, r2
	bne _0807F312
_0807F2D4:
	ldr r1, _0807F334 @ =gUnk_08D60FA4
	ldr r4, _0807F338 @ =gSongTable
	ldr r2, _0807F33C @ =0x00000694
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807F2FA
	movs r1, #0xd2
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807F312
_0807F2FA:
	cmp r3, #0
	beq _0807F30C
	ldr r0, _0807F340 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807F312
_0807F30C:
	movs r0, #0xd2
	bl m4aSongNumStart
_0807F312:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807F324: .4byte 0x06012000
_0807F328: .4byte 0x000002B7
_0807F32C: .4byte gKirbys
_0807F330: .4byte gUnk_0203AD3C
_0807F334: .4byte gUnk_08D60FA4
_0807F338: .4byte gSongTable
_0807F33C: .4byte 0x00000694
_0807F340: .4byte gUnk_0203AD10

	thumb_func_start sub_0807F344
sub_0807F344: @ 0x0807F344
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _0807F374 @ =sub_0807F46C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807F378 @ =sub_08084D28
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807F37C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _0807F384
	.align 2, 0
_0807F374: .4byte sub_0807F46C
_0807F378: .4byte sub_08084D28
_0807F37C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_0807F384:
	adds r0, r5, #0
	bl sub_0803E380
	movs r7, #0
	movs r0, #2
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x44]
	str r4, [r5, #0x70]
	strh r7, [r5, #4]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r6, r4, #0
	adds r6, #0x56
	ldrb r0, [r6]
	adds r1, r5, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807F458 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807F3D4
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_0807F3D4:
	adds r1, r5, #0
	adds r1, #0x64
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r1]
	subs r1, #3
	movs r0, #0
	strb r0, [r1]
	ldr r2, [r5, #8]
	ldr r0, _0807F45C @ =0xA0000100
	orrs r2, r0
	str r2, [r5, #8]
	ldr r0, [r5, #0x68]
	ldr r1, _0807F460 @ =0x30000043
	orrs r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r5, #0x68]
	ldr r0, [r4, #8]
	ands r0, r3
	orrs r2, r0
	str r2, [r5, #8]
	movs r2, #5
	rsbs r2, r2, #0
	movs r4, #0xe
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #1
	movs r3, #0x10
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #5
	movs r2, #5
	movs r3, #0x10
	bl sub_0803E308
	adds r1, r5, #0
	adds r1, #0x10
	ldrb r2, [r6]
	lsls r2, r2, #0xb
	ldr r0, _0807F464 @ =0x06010400
	adds r2, r2, r0
	ldr r3, _0807F468 @ =0x000001FD
	str r7, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080708DC
	ldrb r0, [r6]
	adds r0, #4
	adds r1, r5, #0
	adds r1, #0x2f
	strb r0, [r1]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807F458: .4byte gUnk_03000510
_0807F45C: .4byte 0xA0000100
_0807F460: .4byte 0x30000043
_0807F464: .4byte 0x06010400
_0807F468: .4byte 0x000001FD

	thumb_func_start sub_0807F46C
sub_0807F46C: @ 0x0807F46C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r2, _0807F48C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807F490
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807F498
	.align 2, 0
_0807F48C: .4byte gCurTask
_0807F490:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807F498:
	adds r5, r0, #0
	ldr r6, [r5, #0x70]
	ldr r3, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r3, r0
	cmp r3, #0
	beq _0807F4B0
	ldr r0, [r2]
	bl TaskDestroy
	b _0807F718
_0807F4B0:
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _0807F4CC
	adds r0, r5, #0
	adds r0, #0x2c
	strb r3, [r0]
	b _0807F4D4
_0807F4CC:
	adds r1, r5, #0
	adds r1, #0x2c
	movs r0, #0x10
	strb r0, [r1]
_0807F4D4:
	ldr r1, _0807F51C @ =0x00000103
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0x14
	beq _0807F4E0
	b _0807F608
_0807F4E0:
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	adds r7, r0, #0
	cmp r1, #0x6a
	bhi _0807F4EE
	b _0807F608
_0807F4EE:
	ldr r0, _0807F520 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	ldr r1, [r5, #8]
	cmp r2, #0
	beq _0807F524
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0807F524
	adds r0, r5, #0
	bl sub_0803D9A8
	b _0807F718
	.align 2, 0
_0807F51C: .4byte 0x00000103
_0807F520: .4byte gUnk_03000510
_0807F524:
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #8]
	ldrh r0, [r7]
	cmp r0, #0x6b
	bhi _0807F532
	b _0807F6F8
_0807F532:
	ldrb r0, [r5, #1]
	cmp r0, #1
	bne _0807F53E
	adds r0, r5, #0
	bl sub_08099AC4
_0807F53E:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0807F5F4
	movs r4, #0
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
	adds r1, r5, #0
	adds r1, #0x63
	movs r0, #2
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #2
	adds r0, #0xc0
	strh r0, [r1]
	ldr r0, [r5, #8]
	ldr r1, _0807F614 @ =0xFFFFFDFF
	ands r0, r1
	ldr r1, _0807F618 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #8]
	ldr r1, _0807F61C @ =gKirbys
	ldr r0, _0807F620 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807F5F4
	ldrb r0, [r6]
	cmp r0, #0
	bne _0807F5B6
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0807F5F4
_0807F5B6:
	ldr r1, _0807F624 @ =gUnk_08D60FA4
	ldr r4, _0807F628 @ =gSongTable
	ldr r2, _0807F62C @ =0x0000069C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807F5DC
	movs r1, #0xd3
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807F5F4
_0807F5DC:
	cmp r3, #0
	beq _0807F5EE
	ldr r0, _0807F630 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807F5F4
_0807F5EE:
	movs r0, #0xd3
	bl m4aSongNumStart
_0807F5F4:
	ldrh r0, [r7]
	cmp r0, #0x6d
	bne _0807F634
	adds r1, r5, #0
	adds r1, #0x2a
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r6, #1]
	cmp r0, #4
	bls _0807F642
_0807F608:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	b _0807F718
	.align 2, 0
_0807F614: .4byte 0xFFFFFDFF
_0807F618: .4byte 0xFFFFFBFF
_0807F61C: .4byte gKirbys
_0807F620: .4byte gUnk_0203AD3C
_0807F624: .4byte gUnk_08D60FA4
_0807F628: .4byte gSongTable
_0807F62C: .4byte 0x0000069C
_0807F630: .4byte gUnk_0203AD10
_0807F634:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r6, #8]
	movs r0, #0x80
	str r0, [r6, #0x68]
_0807F642:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0807F664
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807F664
	ldr r0, [r5, #8]
	ldr r1, _0807F6B8 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r5, #8]
_0807F664:
	ldr r0, [r5, #0x30]
	cmp r0, #0
	bne _0807F678
	movs r2, #0x26
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _0807F678
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x30]
_0807F678:
	adds r0, r5, #0
	bl sub_0806F8BC
	ldr r1, [r5, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0807F6E6
	ldr r0, [r5, #8]
	ldr r1, _0807F6BC @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807F6C0
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r1, [r0]
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	subs r0, #1
	ldrb r3, [r0]
	rsbs r3, r3, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, #3
	b _0807F6D6
	.align 2, 0
_0807F6B8: .4byte 0xFFFBFFFF
_0807F6BC: .4byte 0xFFFFFDFF
_0807F6C0:
	adds r0, r5, #0
	adds r0, #0x34
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, #1
_0807F6D6:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r5, #0
	bl sub_0803E308
	b _0807F718
_0807F6E6:
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
	b _0807F718
_0807F6F8:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_0806F8BC
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x30]
_0807F718:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807F720
sub_0807F720: @ 0x0807F720
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _0807F750 @ =sub_0807F840
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807F754 @ =sub_08084D28
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807F758
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0807F760
	.align 2, 0
_0807F750: .4byte sub_0807F840
_0807F754: .4byte sub_08084D28
_0807F758:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0807F760:
	adds r0, r4, #0
	bl sub_0803E380
	movs r1, #0
	movs r7, #2
	strb r7, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807F834 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r6, #1
	adds r0, r6, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807F7B0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0807F7B0:
	adds r3, r4, #0
	adds r3, #0x64
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3]
	adds r1, r4, #0
	adds r1, #0x66
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x63
	strb r7, [r0]
	ldr r1, [r4, #8]
	ldr r0, _0807F838 @ =0xA0000100
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	str r1, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r2, _0807F83C @ =0x30000043
	orrs r0, r2
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r6
	orrs r1, r0
	str r1, [r4, #8]
	ldr r0, [r5, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807F802
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
	ldr r0, [r4, #0x68]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r4, #0x68]
_0807F802:
	movs r1, #0x13
	rsbs r1, r1, #0
	movs r2, #0xa
	rsbs r2, r2, #0
	movs r0, #0xe
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x13
	bl sub_0803E2B0
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0803E308
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807F834: .4byte gUnk_03000510
_0807F838: .4byte 0xA0000100
_0807F83C: .4byte 0x30000043

	thumb_func_start sub_0807F840
sub_0807F840: @ 0x0807F840
	push {r4, lr}
	ldr r2, _0807F85C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807F860
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807F868
	.align 2, 0
_0807F85C: .4byte gCurTask
_0807F860:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807F868:
	adds r4, r0, #0
	ldr r0, [r4, #0x70]
	mov ip, r0
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _0807F882
	ldr r0, [r2]
	bl TaskDestroy
	b _0807F9DE
_0807F882:
	ldr r0, _0807F8AC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807F8B0
	movs r0, #0x80
	lsls r0, r0, #6
	ands r3, r0
	cmp r3, #0
	bne _0807F8B0
	adds r0, r4, #0
	bl sub_0803D9A8
	b _0807F9DE
	.align 2, 0
_0807F8AC: .4byte gUnk_03000510
_0807F8B0:
	mov r1, ip
	ldr r0, [r1, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r4, #0x44]
	ldr r0, _0807F8DC @ =0x00000103
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _0807F8CE
	mov r2, ip
	adds r2, #0xd4
	ldrh r0, [r2]
	cmp r0, #0x6e
	bhi _0807F8E0
_0807F8CE:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _0807F9DE
	.align 2, 0
_0807F8DC: .4byte 0x00000103
_0807F8E0:
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	mov r0, ip
	str r1, [r0, #8]
	ldrh r0, [r2]
	cmp r0, #0x70
	bne _0807F958
	adds r3, r4, #0
	adds r3, #0x64
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bne _0807F91E
	ldr r2, _0807F948 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0807F94C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0807F950 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsls r0, r0, #7
	lsrs r0, r0, #0x17
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	strh r1, [r3]
_0807F91E:
	mov r0, ip
	ldr r2, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r2, r0
	cmp r2, #0
	bne _0807F970
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0807F970
	ldr r0, [r4, #8]
	ldr r1, _0807F954 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	strh r2, [r4, #4]
	b _0807F970
	.align 2, 0
_0807F948: .4byte gRngVal
_0807F94C: .4byte 0x00196225
_0807F950: .4byte 0x3C6EF35F
_0807F954: .4byte 0xFFFBFFFF
_0807F958:
	cmp r0, #0x71
	bne _0807F970
	mov r2, ip
	ldrb r0, [r2, #1]
	cmp r0, #4
	bls _0807F9DE
	ldr r0, _0807F96C @ =0xFFFF7FFF
	ands r1, r0
	str r1, [r2, #8]
	b _0807F9DE
	.align 2, 0
_0807F96C: .4byte 0xFFFF7FFF
_0807F970:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _0807F9DE
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0807F9A4
	ldr r2, _0807F99C @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _0807F9A0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _0807F9A6
	.align 2, 0
_0807F99C: .4byte gCurLevelInfo
_0807F9A0: .4byte 0x0000065E
_0807F9A4:
	movs r1, #0xff
_0807F9A6:
	cmp r1, #0xff
	beq _0807F9DE
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _0807F9E4 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0807F9E8 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0807F9DE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807F9E4: .4byte gUnk_02022EB0
_0807F9E8: .4byte gUnk_02022F50

	thumb_func_start sub_0807F9EC
sub_0807F9EC: @ 0x0807F9EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0807FA20 @ =sub_0807FB80
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807FA24 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807FA28
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0807FA30
	.align 2, 0
_0807FA20: .4byte sub_0807FB80
_0807FA24: .4byte sub_0803DCCC
_0807FA28:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0807FA30:
	adds r0, r4, #0
	bl sub_0803E380
	movs r0, #0
	mov ip, r0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	mov r1, ip
	strh r1, [r4, #4]
	adds r7, r5, #0
	adds r7, #0x60
	ldrh r1, [r7]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r6, r5, #0
	adds r6, #0x56
	ldrb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807FB54 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807FA84
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0807FA84:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	subs r1, #3
	movs r0, #3
	strb r0, [r1]
	ldr r2, [r4, #8]
	ldr r0, _0807FB58 @ =0xA0000100
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _0807FB5C @ =0x30000043
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x18
	mov r8, r1
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r3
	orrs r2, r0
	str r2, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x10
	ldrb r2, [r6]
	lsls r2, r2, #0xb
	ldr r0, _0807FB60 @ =0x06010400
	adds r2, r2, r0
	ldr r3, _0807FB64 @ =0x000001FF
	mov r0, ip
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	ldrb r0, [r6]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2f
	strb r0, [r1]
	ldr r1, _0807FB68 @ =gKirbys
	ldr r0, _0807FB6C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _0807FB48
	ldrb r0, [r5]
	cmp r0, #0
	bne _0807FB06
	ldrb r0, [r6]
	cmp r0, r2
	bne _0807FB48
_0807FB06:
	ldr r1, _0807FB70 @ =gUnk_08D60FA4
	ldr r4, _0807FB74 @ =gSongTable
	ldr r2, _0807FB78 @ =0x000006AC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _0807FB30
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0807FB48
_0807FB30:
	cmp r3, #0
	beq _0807FB42
	ldr r0, _0807FB7C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807FB48
_0807FB42:
	movs r0, #0xd5
	bl m4aSongNumStart
_0807FB48:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807FB54: .4byte gUnk_03000510
_0807FB58: .4byte 0xA0000100
_0807FB5C: .4byte 0x30000043
_0807FB60: .4byte 0x06010400
_0807FB64: .4byte 0x000001FF
_0807FB68: .4byte gKirbys
_0807FB6C: .4byte gUnk_0203AD3C
_0807FB70: .4byte gUnk_08D60FA4
_0807FB74: .4byte gSongTable
_0807FB78: .4byte 0x000006AC
_0807FB7C: .4byte gUnk_0203AD10

	thumb_func_start sub_0807FB80
sub_0807FB80: @ 0x0807FB80
	push {r4, r5, lr}
	sub sp, #4
	ldr r2, _0807FBA0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _0807FBA4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807FBAC
	.align 2, 0
_0807FBA0: .4byte gCurTask
_0807FBA4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807FBAC:
	adds r4, r0, #0
	ldr r2, [r4, #0x70]
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r3, r0
	cmp r3, #0
	beq _0807FBC4
	ldr r0, [r5]
	bl TaskDestroy
	b _0807FCCA
_0807FBC4:
	ldr r0, [r2, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r2, #0x44]
	str r0, [r4, #0x44]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _0807FBE0
	adds r0, r4, #0
	adds r0, #0x2c
	strb r3, [r0]
	b _0807FBE8
_0807FBE0:
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0x10
	strb r0, [r1]
_0807FBE8:
	ldr r1, _0807FC08 @ =0x00000103
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _0807FBFC
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x6e
	beq _0807FC0C
_0807FBFC:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _0807FCCA
	.align 2, 0
_0807FC08: .4byte 0x00000103
_0807FC0C:
	ldr r0, _0807FC38 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807FC3C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0807FC3C
	adds r0, r4, #0
	bl sub_0803D9A8
	b _0807FCCA
	.align 2, 0
_0807FC38: .4byte gUnk_03000510
_0807FC3C:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _0807FC50
	movs r1, #0x26
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0807FC50
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
_0807FC50:
	adds r0, r4, #0
	bl sub_0806F8BC
	ldr r1, [r4, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0807FCBA
	ldr r0, [r4, #8]
	ldr r1, _0807FC90 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807FC94
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r1, [r0]
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	subs r0, #1
	ldrb r3, [r0]
	rsbs r3, r3, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, #3
	b _0807FCAA
	.align 2, 0
_0807FC90: .4byte 0xFFFFFDFF
_0807FC94:
	adds r0, r4, #0
	adds r0, #0x34
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, #1
_0807FCAA:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0803E308
	b _0807FCCA
_0807FCBA:
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
_0807FCCA:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807FCD4
sub_0807FCD4: @ 0x0807FCD4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _0807FD04 @ =sub_0807FDC8
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0807FD08 @ =sub_08085084
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807FD0C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0807FD14
	.align 2, 0
_0807FD04: .4byte sub_0807FDC8
_0807FD08: .4byte sub_08085084
_0807FD0C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0807FD14:
	adds r0, r4, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0807FDC0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0807FD64
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0807FD64:
	ldr r2, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #0x18
	orrs r2, r0
	movs r0, #0x82
	lsls r0, r0, #9
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _0807FDC4 @ =0x30001043
	orrs r0, r1
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _0807FD94
	orrs r2, r3
	str r2, [r4, #8]
_0807FD94:
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #2
	movs r3, #0xe
	bl sub_0803E2B0
	movs r2, #0xd
	rsbs r2, r2, #0
	movs r0, #0xd
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0xd
	bl sub_0803E308
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807FDC0: .4byte gUnk_03000510
_0807FDC4: .4byte 0x30001043

	thumb_func_start sub_0807FDC8
sub_0807FDC8: @ 0x0807FDC8
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0807FDE8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807FDEC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0807FDF4
	.align 2, 0
_0807FDE8: .4byte gCurTask
_0807FDEC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0807FDF4:
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807FE04
	b _0807FFFC
_0807FE04:
	ldr r1, _0807FEA0 @ =gKirbys
	ldr r0, _0807FEA4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0807FE5C
	ldrb r0, [r5]
	cmp r0, #0
	bne _0807FE30
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0807FE5C
_0807FE30:
	ldr r1, _0807FEA8 @ =gUnk_08D60FA4
	ldr r3, _0807FEAC @ =gSongTable
	ldr r2, _0807FEB0 @ =0x0000063C
	adds r0, r3, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0807FE56
	movs r1, #0xc7
	lsls r1, r1, #3
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhs _0807FE5C
_0807FE56:
	movs r0, #0xc7
	bl m4aSongNumStart
_0807FE5C:
	adds r1, r5, #0
	adds r1, #0xd4
	ldrh r2, [r1]
	adds r0, r2, #0
	subs r0, #0x67
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, r1, #0
	cmp r0, #7
	bls _0807FE80
	cmp r2, #0x35
	bne _0807FE92
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0807FE92
_0807FE80:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _0807FEB4
	adds r0, r5, #0
	bl sub_08067458
_0807FE92:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _0807FFFC
	.align 2, 0
_0807FEA0: .4byte gKirbys
_0807FEA4: .4byte gUnk_0203AD3C
_0807FEA8: .4byte gUnk_08D60FA4
_0807FEAC: .4byte gSongTable
_0807FEB0: .4byte 0x0000063C
_0807FEB4:
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _0807FF1E
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0807FEE4
	ldr r2, _0807FEDC @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _0807FEE0 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _0807FEE6
	.align 2, 0
_0807FEDC: .4byte gCurLevelInfo
_0807FEE0: .4byte 0x0000065E
_0807FEE4:
	movs r1, #0xff
_0807FEE6:
	cmp r1, #0xff
	beq _0807FF1E
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _0807FF38 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0807FF3C @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0807FF1E:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	ldrh r0, [r6]
	subs r0, #0x67
	cmp r0, #7
	bhi _0807FFFC
	lsls r0, r0, #2
	ldr r1, _0807FF40 @ =_0807FF44
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807FF38: .4byte gUnk_02022EB0
_0807FF3C: .4byte gUnk_02022F50
_0807FF40: .4byte _0807FF44
_0807FF44: @ jump table
	.4byte _0807FF64 @ case 0
	.4byte _0807FFEA @ case 1
	.4byte _0807FFD2 @ case 2
	.4byte _0807FFBE @ case 3
	.4byte _0807FFA6 @ case 4
	.4byte _0807FF98 @ case 5
	.4byte _0807FF8A @ case 6
	.4byte _0807FF78 @ case 7
_0807FF64:
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #2
	movs r3, #0xe
	bl sub_0803E2B0
	b _0807FFFC
_0807FF78:
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xc
	bl sub_0803E2B0
	b _0807FFFC
_0807FF8A:
	movs r1, #7
	rsbs r1, r1, #0
	movs r0, #0xe
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #2
	b _0807FFE2
_0807FF98:
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	b _0807FFCA
_0807FFA6:
	movs r1, #0xe
	rsbs r1, r1, #0
	movs r2, #7
	rsbs r2, r2, #0
	movs r3, #2
	rsbs r3, r3, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0803E2B0
	b _0807FFFC
_0807FFBE:
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
_0807FFCA:
	movs r3, #0
	bl sub_0803E2B0
	b _0807FFFC
_0807FFD2:
	movs r1, #7
	rsbs r1, r1, #0
	movs r2, #0xe
	rsbs r2, r2, #0
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [sp]
	adds r0, r4, #0
_0807FFE2:
	movs r3, #7
	bl sub_0803E2B0
	b _0807FFFC
_0807FFEA:
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0xc
	bl sub_0803E2B0
_0807FFFC:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08080004
sub_08080004: @ 0x08080004
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08080034 @ =sub_08080130
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08080038 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808003C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08080044
	.align 2, 0
_08080034: .4byte sub_08080130
_08080038: .4byte sub_0803DCCC
_0808003C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08080044:
	adds r0, r4, #0
	bl sub_0803E380
	movs r7, #0
	movs r0, #2
	mov ip, r0
	mov r1, ip
	strb r1, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r7, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r6, r5, #0
	adds r6, #0x56
	ldrb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0808011C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08080098
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_08080098:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0x88
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x66
	strh r7, [r0]
	subs r0, #3
	mov r1, ip
	strb r1, [r0]
	ldr r2, [r4, #8]
	ldr r0, _08080120 @ =0xA0000100
	orrs r2, r0
	ldr r0, [r4, #0x68]
	ldr r1, _08080124 @ =0x30002003
	orrs r0, r1
	ldr r1, _08080128 @ =0xEFFFDFFF
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #0x68]
	movs r0, #4
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r5, #8]
	ands r0, r3
	orrs r2, r0
	str r2, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0xc4
	lsls r2, r2, #3
	strh r2, [r1]
	ldr r0, [r4, #8]
	ands r0, r3
	cmp r0, #0
	beq _080800EE
	rsbs r0, r2, #0
	strh r0, [r1]
_080800EE:
	adds r1, r4, #0
	adds r1, #0x10
	ldrb r2, [r6]
	lsls r2, r2, #0xb
	ldr r0, _0808012C @ =0x06010600
	adds r2, r2, r0
	str r7, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r3, #0x9c
	bl sub_080708DC
	ldrb r0, [r6]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2f
	strb r0, [r1]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808011C: .4byte gUnk_03000510
_08080120: .4byte 0xA0000100
_08080124: .4byte 0x30002003
_08080128: .4byte 0xEFFFDFFF
_0808012C: .4byte 0x06010600

	thumb_func_start sub_08080130
sub_08080130: @ 0x08080130
	push {r4, lr}
	sub sp, #4
	ldr r2, _08080150 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08080154
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808015C
	.align 2, 0
_08080150: .4byte gCurTask
_08080154:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808015C:
	adds r4, r0, #0
	ldr r3, [r4, #0x70]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08080174
	ldr r0, [r2]
	bl TaskDestroy
	b _080802C2
_08080174:
	ldr r1, _080801A0 @ =0x00000103
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _08080186
	cmp r0, #0x1a
	beq _08080186
	cmp r0, #0x16
	bne _08080194
_08080186:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _080801A4
_08080194:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _080802C2
	.align 2, 0
_080801A0: .4byte 0x00000103
_080801A4:
	ldr r0, _080801D0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080801D4
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080801D4
	adds r0, r4, #0
	bl sub_0803D9A8
	b _080802C2
	.align 2, 0
_080801D0: .4byte gUnk_03000510
_080801D4:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #8
	bne _08080202
	adds r0, r4, #0
	adds r0, #0x2a
	movs r1, #1
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xe0
	lsls r3, r3, #2
	strh r3, [r2]
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _08080202
	rsbs r0, r3, #0
	strh r0, [r2]
_08080202:
	ldr r0, [r4, #8]
	ldr r1, _08080288 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _0808021E
	movs r1, #0x26
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0808021E
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
_0808021E:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08080246
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x44]
_08080246:
	adds r0, r4, #0
	bl sub_0806F8BC
	ldr r1, [r4, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080802B2
	ldr r0, [r4, #8]
	ldr r1, _08080288 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808028C
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r1, [r0]
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	subs r0, #1
	ldrb r3, [r0]
	rsbs r3, r3, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, #3
	b _080802A2
	.align 2, 0
_08080288: .4byte 0xFFFFFDFF
_0808028C:
	adds r0, r4, #0
	adds r0, #0x34
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, #1
_080802A2:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0803E308
	b _080802C2
_080802B2:
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
_080802C2:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080802CC
sub_080802CC: @ 0x080802CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	movs r0, #0
	mov r8, r0
	ldr r0, _08080310 @ =sub_0808049C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08080314 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08080318
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08080320
	.align 2, 0
_08080310: .4byte sub_0808049C
_08080314: .4byte sub_0803DCCC
_08080318:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08080320:
	adds r0, r4, #0
	bl sub_0803E380
	movs r7, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r7, [r4, #4]
	movs r1, #0x60
	adds r1, r1, r5
	mov sb, r1
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r6, r5, #0
	adds r6, #0x56
	ldrb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08080470 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08080372
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_08080372:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x66
	strh r7, [r0]
	subs r0, #3
	strb r3, [r0]
	ldr r2, [r4, #8]
	ldr r0, _08080474 @ =0xA0000100
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _08080478 @ =0x30000043
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r3
	orrs r2, r0
	str r2, [r4, #8]
	str r7, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E2B0
	str r7, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
	mov r2, sl
	cmp r2, #0
	beq _080803CE
	movs r3, #1
	mov r8, r3
	mov r0, r8
	strh r0, [r4, #4]
_080803CE:
	adds r1, r4, #0
	adds r1, #0x10
	ldrb r2, [r6]
	lsls r2, r2, #0xb
	ldr r3, _0808047C @ =0x06010400
	adds r2, r2, r3
	mov r0, r8
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	ldr r3, _08080480 @ =0x00000283
	bl sub_080708DC
	ldrb r0, [r6]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2f
	strb r0, [r1]
	ldr r1, _08080484 @ =gKirbys
	ldr r0, _08080488 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sb
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808045E
	ldrb r0, [r5]
	cmp r0, #0
	bne _0808041A
	ldrb r0, [r6]
	cmp r0, r2
	bne _0808045E
_0808041A:
	ldr r1, _0808048C @ =gUnk_08D60FA4
	ldr r4, _08080490 @ =gSongTable
	ldr r2, _08080494 @ =0x0000064C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	ands r0, r1
	cmp r0, #0
	bne _08080446
	movs r1, #0xc9
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0808045E
_08080446:
	cmp r3, #0
	beq _08080458
	ldr r0, _08080498 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0808045E
_08080458:
	movs r0, #0xc9
	bl m4aSongNumStart
_0808045E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08080470: .4byte gUnk_03000510
_08080474: .4byte 0xA0000100
_08080478: .4byte 0x30000043
_0808047C: .4byte 0x06010400
_08080480: .4byte 0x00000283
_08080484: .4byte gKirbys
_08080488: .4byte gUnk_0203AD3C
_0808048C: .4byte gUnk_08D60FA4
_08080490: .4byte gSongTable
_08080494: .4byte 0x0000064C
_08080498: .4byte gUnk_0203AD10

	thumb_func_start sub_0808049C
sub_0808049C: @ 0x0808049C
	push {r4, r5, lr}
	sub sp, #4
	ldr r2, _080804BC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080804C0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080804C8
	.align 2, 0
_080804BC: .4byte gCurTask
_080804C0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080804C8:
	adds r4, r0, #0
	ldr r3, [r4, #0x70]
	ldr r1, [r4, #8]
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _080804E2
	ldr r0, [r2]
	bl TaskDestroy
	b _080806F2
_080804E2:
	ldr r0, [r3, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r3, #0x44]
	str r0, [r4, #0x44]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _08080514
	ldrb r1, [r3, #1]
	cmp r1, #6
	bne _080804FE
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _08080562
_080804FE:
	adds r2, r4, #0
	adds r2, #0x2c
	cmp r1, #0
	bne _08080534
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _08080534
	ldrb r0, [r2]
	cmp r0, #0
	beq _08080534
	b _08080562
_08080514:
	ldrb r0, [r3, #1]
	cmp r0, #0x14
	beq _0808052E
	adds r2, r4, #0
	adds r2, #0x2c
	cmp r0, #0
	bne _08080534
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _08080534
	ldrb r0, [r2]
	cmp r0, #0
	beq _08080534
_0808052E:
	orrs r1, r5
	str r1, [r4, #8]
	b _080806F2
_08080534:
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _08080544
	movs r0, #0
	b _08080546
_08080544:
	movs r0, #0x10
_08080546:
	strb r0, [r2]
	ldr r1, _08080570 @ =0x00000103
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0x16
	bne _08080562
	adds r0, r3, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x6f
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08080574
_08080562:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _080806F2
	.align 2, 0
_08080570: .4byte 0x00000103
_08080574:
	ldr r0, _080805A0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080805A4
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080805A4
	adds r0, r4, #0
	bl sub_0803D9A8
	b _080806F2
	.align 2, 0
_080805A0: .4byte gUnk_03000510
_080805A4:
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08080640
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080805C4
	ldrb r0, [r4, #1]
	cmp r0, #2
	beq _080805CE
	cmp r0, #4
	bne _08080640
	b _080805CE
_080805C4:
	ldrb r0, [r4, #1]
	cmp r0, #6
	beq _080805CE
	cmp r0, #0xb
	bne _08080640
_080805CE:
	ldr r1, _0808069C @ =gKirbys
	ldr r0, _080806A0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08080638
	ldrb r0, [r3]
	cmp r0, #0
	bne _080805FA
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08080638
_080805FA:
	ldr r1, _080806A4 @ =gUnk_08D60FA4
	ldr r5, _080806A8 @ =gSongTable
	ldr r2, _080806AC @ =0x0000064C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08080620
	movs r1, #0xc9
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08080638
_08080620:
	cmp r3, #0
	beq _08080632
	ldr r0, _080806B0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08080638
_08080632:
	movs r0, #0xc9
	bl m4aSongNumStart
_08080638:
	ldr r0, [r4, #8]
	ldr r1, _080806B4 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
_08080640:
	ldr r0, [r4, #8]
	ldr r1, _080806B8 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _0808065C
	movs r2, #0x26
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _0808065C
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
_0808065C:
	adds r0, r4, #0
	bl sub_0806F8BC
	ldr r1, [r4, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080806E2
	ldr r0, [r4, #8]
	ldr r1, _080806B8 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080806BC
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r1, [r0]
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	subs r0, #1
	ldrb r3, [r0]
	rsbs r3, r3, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, #3
	b _080806D2
	.align 2, 0
_0808069C: .4byte gKirbys
_080806A0: .4byte gUnk_0203AD3C
_080806A4: .4byte gUnk_08D60FA4
_080806A8: .4byte gSongTable
_080806AC: .4byte 0x0000064C
_080806B0: .4byte gUnk_0203AD10
_080806B4: .4byte 0xFFFBFFFF
_080806B8: .4byte 0xFFFFFDFF
_080806BC:
	adds r0, r4, #0
	adds r0, #0x34
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, #1
_080806D2:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0803E308
	b _080806F2
_080806E2:
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
_080806F2:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080806FC
sub_080806FC: @ 0x080806FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08080730 @ =sub_08080870
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08080734 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08080738
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08080740
	.align 2, 0
_08080730: .4byte sub_08080870
_08080734: .4byte sub_0803DCCC
_08080738:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08080740:
	adds r4, r0, #0
	bl sub_0803E380
	movs r7, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r7, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r3, r5, #0
	adds r3, #0x56
	ldrb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08080808 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	mov r8, r0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	adds r6, r3, #0
	cmp r2, #0
	beq _08080792
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_08080792:
	ldr r2, [r4, #8]
	ldr r0, _0808080C @ =0xA0000100
	orrs r2, r0
	ldr r0, [r4, #0x68]
	ldr r1, _08080810 @ =0x30005003
	orrs r0, r1
	ldr r1, _08080814 @ =0x04000008
	orrs r0, r1
	str r0, [r4, #0x68]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r4, #8]
	str r7, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E2B0
	str r7, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
	adds r0, r5, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x71
	bne _0808081C
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	subs r1, #3
	movs r0, #9
	strb r0, [r1]
	subs r1, #0x53
	ldrb r2, [r6]
	lsls r2, r2, #0xb
	ldr r0, _08080818 @ =0x06010400
	adds r2, r2, r0
	movs r3, #0xee
	lsls r3, r3, #1
	mov r0, r8
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	b _0808084A
	.align 2, 0
_08080808: .4byte gUnk_03000510
_0808080C: .4byte 0xA0000100
_08080810: .4byte 0x30005003
_08080814: .4byte 0x04000008
_08080818: .4byte 0x06010400
_0808081C:
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0xa
	strb r0, [r1]
	subs r1, #0x53
	ldrb r2, [r6]
	lsls r2, r2, #0xb
	ldr r0, _08080868 @ =0x06010400
	adds r2, r2, r0
	ldr r3, _0808086C @ =0x00000287
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
_0808084A:
	ldrb r0, [r6]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2f
	strb r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08080868: .4byte 0x06010400
_0808086C: .4byte 0x00000287

	thumb_func_start sub_08080870
sub_08080870: @ 0x08080870
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r2, _08080898 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808089C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080808A4
	.align 2, 0
_08080898: .4byte gCurTask
_0808089C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080808A4:
	adds r4, r0, #0
	ldr r6, [r4, #0x70]
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080808BC
	ldr r0, [r2]
	bl TaskDestroy
	b _08080E82
_080808BC:
	ldr r1, _080808F8 @ =0xFFFFDBFE
	ands r1, r3
	str r1, [r4, #8]
	ldr r0, [r6, #8]
	ldr r2, _080808FC @ =0x00002405
	ands r0, r2
	orrs r1, r0
	str r1, [r4, #8]
	adds r2, r6, #0
	adds r2, #0x60
	ldrh r1, [r2]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	str r2, [sp, #0x10]
	cmp r0, #0
	beq _08080900
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0
	b _0808090E
	.align 2, 0
_080808F8: .4byte 0xFFFFDBFE
_080808FC: .4byte 0x00002405
_08080900:
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r0, [r0]
_0808090E:
	strb r0, [r1]
	adds r7, r1, #0
	ldr r1, _08080938 @ =0x00000103
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0x16
	bne _0808092C
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	str r0, [sp, #8]
	cmp r1, #0x67
	beq _0808093C
	cmp r1, #0x71
	beq _0808093C
_0808092C:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _08080E82
	.align 2, 0
_08080938: .4byte 0x00000103
_0808093C:
	ldr r0, _0808098C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r6, #0
	adds r3, #0x56
	movs r5, #1
	adds r0, r5, #0
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	str r3, [sp, #0xc]
	cmp r2, #0
	bne _0808095A
	b _08080B24
_0808095A:
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	beq _08080968
	b _08080B24
_08080968:
	ldrb r2, [r7]
	str r2, [sp, #4]
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	bne _08080974
	b _08080E82
_08080974:
	strb r1, [r7]
	ldr r0, [r4, #8]
	ands r0, r5
	cmp r0, #0
	beq _08080990
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _0808099A
	.align 2, 0
_0808098C: .4byte gUnk_03000510
_08080990:
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	ldr r2, _08080A10 @ =0xFFFFFBFF
	ands r1, r2
_0808099A:
	str r1, [r0, #8]
	mov r8, r0
	ldr r3, [r4, #8]
	movs r5, #8
	ands r5, r3
	cmp r5, #0
	bne _08080A2A
	adds r0, r4, #0
	adds r0, #0x2b
	adds r2, r4, #0
	adds r2, #0x2a
	ldrb r1, [r0]
	mov sb, r0
	ldrb r2, [r2]
	cmp r1, r2
	bne _080809C2
	ldrh r0, [r4, #0x28]
	ldrh r1, [r4, #0x1c]
	cmp r0, r1
	beq _080809D4
_080809C2:
	ldrb r0, [r7]
	cmp r0, #0
	beq _080809D4
	strb r5, [r4, #1]
	strh r5, [r4, #2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r4, #8]
_080809D4:
	mov r0, r8
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08080A14
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08080A2A
	ldrb r0, [r7]
	cmp r0, #0
	beq _08080A2A
	movs r0, #0xff
	mov r3, sb
	strb r0, [r3]
	ldr r0, [r4, #8]
	subs r1, #9
	ands r0, r1
	str r0, [r4, #8]
	strb r2, [r4, #1]
	strh r2, [r4, #2]
	mov r0, r8
	bl sub_08155128
	b _08080A2A
	.align 2, 0
_08080A10: .4byte 0xFFFFFBFF
_08080A14:
	ldrb r1, [r7]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_08080A2A:
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, _08080B0C @ =gCurLevelInfo
	ldr r6, _08080B10 @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov sb, r3
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	movs r3, #0xc
	adds r3, r3, r2
	mov sl, r3
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r5, r4, #0
	adds r5, #0x54
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	movs r1, #0
	mov ip, r1
	strh r0, [r4, #0x20]
	ldr r1, [r4, #0x44]
	asrs r1, r1, #8
	ldrb r0, [r6]
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x55
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	ldrb r0, [r7]
	cmp r0, #0
	beq _08080A8C
	mov r0, ip
	strb r0, [r5]
	strb r0, [r3]
_08080A8C:
	mov r1, sp
	ldrb r1, [r1, #4]
	strb r1, [r7]
	ldrb r0, [r6]
	ldr r3, [sp, #0xc]
	ldrb r3, [r3]
	cmp r0, r3
	bne _08080ABE
	mov r1, sb
	muls r1, r0, r1
	add r1, sl
	ldr r0, [r4, #0x40]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x20]
	ldrb r0, [r6]
	mov r1, sb
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x44]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x22]
_08080ABE:
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	beq _08080ACC
	b _08080E82
_08080ACC:
	ldr r2, _08080B14 @ =gKirbys
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08080AE8
	b _08080E82
_08080AE8:
	ldr r1, _08080B18 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r4, #0x20]
	adds r0, r0, r2
	strh r0, [r4, #0x20]
	ldrh r0, [r1, #2]
	ldrh r1, [r4, #0x22]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _08080B1C
	mov r0, r8
	bl sub_081564D8
	b _08080E82
	.align 2, 0
_08080B0C: .4byte gCurLevelInfo
_08080B10: .4byte gUnk_0203AD3C
_08080B14: .4byte gKirbys
_08080B18: .4byte gUnk_0203AD18
_08080B1C:
	mov r0, r8
	bl sub_0815604C
	b _08080E82
_08080B24:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _08080B48
	ldr r1, [r4, #8]
	ldr r0, _08080B60 @ =0xFFFFFDFF
	ands r1, r0
	str r1, [r4, #8]
	movs r2, #0x26
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _08080B48
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	str r1, [r4, #8]
_08080B48:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08080B64
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _08080B6E
	.align 2, 0
_08080B60: .4byte 0xFFFFFDFF
_08080B64:
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	ldr r2, _08080BE4 @ =0xFFFFFBFF
	ands r1, r2
_08080B6E:
	str r1, [r0, #8]
	mov r8, r0
	ldr r3, [r4, #8]
	movs r5, #8
	ands r5, r3
	cmp r5, #0
	bne _08080BFE
	adds r0, r4, #0
	adds r0, #0x2b
	adds r2, r4, #0
	adds r2, #0x2a
	ldrb r1, [r0]
	mov sb, r0
	ldrb r2, [r2]
	cmp r1, r2
	bne _08080B96
	ldrh r0, [r4, #0x28]
	ldrh r1, [r4, #0x1c]
	cmp r0, r1
	beq _08080BA8
_08080B96:
	ldrb r0, [r7]
	cmp r0, #0
	beq _08080BA8
	strb r5, [r4, #1]
	strh r5, [r4, #2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r4, #8]
_08080BA8:
	mov r0, r8
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08080BE8
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08080BFE
	ldrb r0, [r7]
	cmp r0, #0
	beq _08080BFE
	movs r0, #0xff
	mov r3, sb
	strb r0, [r3]
	ldr r0, [r4, #8]
	subs r1, #9
	ands r0, r1
	str r0, [r4, #8]
	strb r2, [r4, #1]
	strh r2, [r4, #2]
	mov r0, r8
	bl sub_08155128
	b _08080BFE
	.align 2, 0
_08080BE4: .4byte 0xFFFFFBFF
_08080BE8:
	ldrb r1, [r7]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_08080BFE:
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, _08080CE0 @ =gCurLevelInfo
	ldr r0, _08080CE4 @ =gUnk_0203AD3C
	mov ip, r0
	ldrb r0, [r0]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov sb, r3
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r3, _08080CE8 @ =gCurLevelInfo+0xC
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r5, r4, #0
	adds r5, #0x54
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	movs r1, #0
	mov sl, r1
	strh r0, [r4, #0x20]
	ldr r1, [r4, #0x44]
	asrs r1, r1, #8
	mov r3, ip
	ldrb r0, [r3]
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x55
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	ldrb r0, [r7]
	cmp r0, #0
	beq _08080C60
	mov r0, sl
	strb r0, [r5]
	strb r0, [r3]
_08080C60:
	mov r1, ip
	ldrb r0, [r1]
	ldr r3, [sp, #0xc]
	ldrb r3, [r3]
	cmp r0, r3
	bne _08080C92
	mov r1, sb
	muls r1, r0, r1
	ldr r0, _08080CE8 @ =gCurLevelInfo+0xC
	adds r1, r1, r0
	ldr r0, [r4, #0x40]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x20]
	mov r1, ip
	ldrb r0, [r1]
	mov r1, sb
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x44]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x22]
_08080C92:
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _08080CFA
	ldr r2, _08080CEC @ =gKirbys
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08080CFA
	ldr r1, _08080CF0 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r4, #0x20]
	adds r0, r0, r2
	strh r0, [r4, #0x20]
	ldrh r0, [r1, #2]
	ldrh r1, [r4, #0x22]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _08080CF4
	mov r0, r8
	bl sub_081564D8
	b _08080CFA
	.align 2, 0
_08080CE0: .4byte gCurLevelInfo
_08080CE4: .4byte gUnk_0203AD3C
_08080CE8: .4byte gCurLevelInfo+0xC
_08080CEC: .4byte gKirbys
_08080CF0: .4byte gUnk_0203AD18
_08080CF4:
	mov r0, r8
	bl sub_0815604C
_08080CFA:
	ldr r1, [r4, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08080D06
	b _08080E06
_08080D06:
	ldr r2, [sp, #8]
	ldrh r0, [r2]
	cmp r0, #0x71
	bne _08080D8E
	ldrb r0, [r6, #1]
	cmp r0, #9
	bne _08080D8E
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08080D8E
	ldr r0, [r4, #8]
	ldr r1, _08080DC0 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _08080DC4 @ =gKirbys
	ldr r0, _08080DC8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r3, [sp, #0x10]
	ldrh r3, [r3]
	cmp r0, r3
	bne _08080D8E
	ldrb r0, [r6]
	cmp r0, #0
	bne _08080D50
	ldr r1, [sp, #0xc]
	ldrb r0, [r1]
	cmp r0, r2
	bne _08080D8E
_08080D50:
	ldr r1, _08080DCC @ =gUnk_08D60FA4
	ldr r5, _08080DD0 @ =gSongTable
	ldr r2, _08080DD4 @ =0x000005CC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08080D76
	movs r1, #0xb9
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08080D8E
_08080D76:
	cmp r3, #0
	beq _08080D88
	ldr r0, _08080DD8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08080D8E
_08080D88:
	movs r0, #0xb9
	bl m4aSongNumStart
_08080D8E:
	ldr r0, [r4, #8]
	ldr r1, _08080DDC @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08080DE0
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r1, [r0]
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	subs r0, #1
	ldrb r3, [r0]
	rsbs r3, r3, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, #3
	b _08080DF6
	.align 2, 0
_08080DC0: .4byte 0xFFFBFFFF
_08080DC4: .4byte gKirbys
_08080DC8: .4byte gUnk_0203AD3C
_08080DCC: .4byte gUnk_08D60FA4
_08080DD0: .4byte gSongTable
_08080DD4: .4byte 0x000005CC
_08080DD8: .4byte gUnk_0203AD10
_08080DDC: .4byte 0xFFFFFDFF
_08080DE0:
	adds r0, r4, #0
	adds r0, #0x34
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, #1
_08080DF6:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0803E308
	b _08080E16
_08080E06:
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
_08080E16:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08080E82
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08080E48
	ldr r2, _08080E40 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _08080E44 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _08080E4A
	.align 2, 0
_08080E40: .4byte gCurLevelInfo
_08080E44: .4byte 0x0000065E
_08080E48:
	movs r1, #0xff
_08080E4A:
	cmp r1, #0xff
	beq _08080E82
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08080E94 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08080E98 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08080E82:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08080E94: .4byte gUnk_02022EB0
_08080E98: .4byte gUnk_02022F50

	thumb_func_start sub_08080E9C
sub_08080E9C: @ 0x08080E9C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08080ECC @ =sub_08080FBC
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08080ED0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08080ED4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08080EDC
	.align 2, 0
_08080ECC: .4byte sub_08080FBC
_08080ED0: .4byte sub_0803DCCC
_08080ED4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08080EDC:
	adds r0, r4, #0
	bl sub_0803E380
	movs r6, #0
	movs r3, #2
	strb r3, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r6, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r5, #0x56
	ldrb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08080FA8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08080F28
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_08080F28:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0x80
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, [r4, #8]
	ldr r0, _08080FAC @ =0xA0000100
	orrs r2, r0
	ldr r0, [r4, #0x68]
	ldr r1, _08080FB0 @ =0x30002003
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #0x68]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r4, #8]
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E2B0
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	ldrb r2, [r5]
	lsls r2, r2, #0xb
	ldr r0, _08080FB4 @ =0x06010400
	adds r2, r2, r0
	ldr r3, _08080FB8 @ =0x00000285
	str r6, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	ldrb r0, [r5]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2f
	strb r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08080FA8: .4byte gUnk_03000510
_08080FAC: .4byte 0xA0000100
_08080FB0: .4byte 0x30002003
_08080FB4: .4byte 0x06010400
_08080FB8: .4byte 0x00000285

	thumb_func_start sub_08080FBC
sub_08080FBC: @ 0x08080FBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r2, _08080FE4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08080FE8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08080FF0
	.align 2, 0
_08080FE4: .4byte gCurTask
_08080FE8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08080FF0:
	adds r4, r0, #0
	movs r0, #0x10
	adds r0, r0, r4
	mov r8, r0
	ldr r6, [r4, #0x70]
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _0808100E
	ldr r0, [r2]
	bl TaskDestroy
	b _08081596
_0808100E:
	ldr r1, _08081048 @ =0xFFFFDBFE
	ands r1, r3
	str r1, [r4, #8]
	ldr r0, [r6, #8]
	ldr r2, _0808104C @ =0x00002405
	ands r0, r2
	orrs r1, r0
	str r1, [r4, #8]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _08081050
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0
	b _0808105E
	.align 2, 0
_08081048: .4byte 0xFFFFDBFE
_0808104C: .4byte 0x00002405
_08081050:
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r0, [r0]
_0808105E:
	strb r0, [r1]
	adds r7, r1, #0
	ldr r1, _08081088 @ =0x00000103
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0x16
	bne _0808107C
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	str r0, [sp, #8]
	cmp r1, #0x69
	bls _0808107C
	cmp r1, #0x6e
	bls _0808108C
_0808107C:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _08081596
	.align 2, 0
_08081088: .4byte 0x00000103
_0808108C:
	ldr r0, _080810DC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r6, #0
	adds r3, #0x56
	movs r5, #1
	adds r0, r5, #0
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	str r3, [sp, #0xc]
	cmp r2, #0
	bne _080810AA
	b _08081274
_080810AA:
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	beq _080810B8
	b _08081274
_080810B8:
	ldrb r2, [r7]
	str r2, [sp, #4]
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	bne _080810C4
	b _08081596
_080810C4:
	strb r1, [r7]
	ldr r0, [r4, #8]
	ands r0, r5
	cmp r0, #0
	beq _080810E0
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _080810EA
	.align 2, 0
_080810DC: .4byte gUnk_03000510
_080810E0:
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	ldr r2, _08081160 @ =0xFFFFFBFF
	ands r1, r2
_080810EA:
	str r1, [r0, #8]
	mov r8, r0
	ldr r3, [r4, #8]
	movs r5, #8
	ands r5, r3
	cmp r5, #0
	bne _0808117A
	adds r0, r4, #0
	adds r0, #0x2b
	adds r2, r4, #0
	adds r2, #0x2a
	ldrb r1, [r0]
	mov sb, r0
	ldrb r2, [r2]
	cmp r1, r2
	bne _08081112
	ldrh r0, [r4, #0x28]
	ldrh r1, [r4, #0x1c]
	cmp r0, r1
	beq _08081124
_08081112:
	ldrb r0, [r7]
	cmp r0, #0
	beq _08081124
	strb r5, [r4, #1]
	strh r5, [r4, #2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r4, #8]
_08081124:
	mov r0, r8
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08081164
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0808117A
	ldrb r0, [r7]
	cmp r0, #0
	beq _0808117A
	movs r0, #0xff
	mov r3, sb
	strb r0, [r3]
	ldr r0, [r4, #8]
	subs r1, #9
	ands r0, r1
	str r0, [r4, #8]
	strb r2, [r4, #1]
	strh r2, [r4, #2]
	mov r0, r8
	bl sub_08155128
	b _0808117A
	.align 2, 0
_08081160: .4byte 0xFFFFFBFF
_08081164:
	ldrb r1, [r7]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_0808117A:
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, _0808125C @ =gCurLevelInfo
	ldr r6, _08081260 @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov sb, r3
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	movs r3, #0xc
	adds r3, r3, r2
	mov sl, r3
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r5, r4, #0
	adds r5, #0x54
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	movs r1, #0
	mov ip, r1
	strh r0, [r4, #0x20]
	ldr r1, [r4, #0x44]
	asrs r1, r1, #8
	ldrb r0, [r6]
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x55
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	ldrb r0, [r7]
	cmp r0, #0
	beq _080811DC
	mov r0, ip
	strb r0, [r5]
	strb r0, [r3]
_080811DC:
	mov r1, sp
	ldrb r1, [r1, #4]
	strb r1, [r7]
	ldrb r0, [r6]
	ldr r3, [sp, #0xc]
	ldrb r3, [r3]
	cmp r0, r3
	bne _0808120E
	mov r1, sb
	muls r1, r0, r1
	add r1, sl
	ldr r0, [r4, #0x40]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x20]
	ldrb r0, [r6]
	mov r1, sb
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x44]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x22]
_0808120E:
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	beq _0808121C
	b _08081596
_0808121C:
	ldr r2, _08081264 @ =gKirbys
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08081238
	b _08081596
_08081238:
	ldr r1, _08081268 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r4, #0x20]
	adds r0, r0, r2
	strh r0, [r4, #0x20]
	ldrh r0, [r1, #2]
	ldrh r1, [r4, #0x22]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _0808126C
	mov r0, r8
	bl sub_081564D8
	b _08081596
	.align 2, 0
_0808125C: .4byte gCurLevelInfo
_08081260: .4byte gUnk_0203AD3C
_08081264: .4byte gKirbys
_08081268: .4byte gUnk_0203AD18
_0808126C:
	mov r0, r8
	bl sub_0815604C
	b _08081596
_08081274:
	mov r2, r8
	ldrb r1, [r2, #0x1a]
	ldr r3, [sp, #8]
	ldrh r2, [r3]
	adds r0, r2, #0
	subs r0, #0x6a
	cmp r1, r0
	beq _08081288
	mov r1, r8
	strb r0, [r1, #0x1a]
_08081288:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _080812B8
	ldr r0, [r4, #8]
	ldr r1, _080812D0 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	movs r2, #0x26
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _080812B8
	ldr r0, [r6, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080812AE
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
_080812AE:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
_080812B8:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080812D4
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _080812DE
	.align 2, 0
_080812D0: .4byte 0xFFFFFDFF
_080812D4:
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [r4, #0x18]
	ldr r2, _08081354 @ =0xFFFFFBFF
	ands r1, r2
_080812DE:
	str r1, [r0, #8]
	mov r8, r0
	ldr r3, [r4, #8]
	movs r5, #8
	ands r5, r3
	cmp r5, #0
	bne _0808136E
	adds r0, r4, #0
	adds r0, #0x2b
	adds r2, r4, #0
	adds r2, #0x2a
	ldrb r1, [r0]
	mov sb, r0
	ldrb r2, [r2]
	cmp r1, r2
	bne _08081306
	ldrh r0, [r4, #0x28]
	ldrh r1, [r4, #0x1c]
	cmp r0, r1
	beq _08081318
_08081306:
	ldrb r0, [r7]
	cmp r0, #0
	beq _08081318
	strb r5, [r4, #1]
	strh r5, [r4, #2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r4, #8]
_08081318:
	mov r0, r8
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08081358
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0808136E
	ldrb r0, [r7]
	cmp r0, #0
	beq _0808136E
	movs r0, #0xff
	mov r3, sb
	strb r0, [r3]
	ldr r0, [r4, #8]
	subs r1, #9
	ands r0, r1
	str r0, [r4, #8]
	strb r2, [r4, #1]
	strh r2, [r4, #2]
	mov r0, r8
	bl sub_08155128
	b _0808136E
	.align 2, 0
_08081354: .4byte 0xFFFFFBFF
_08081358:
	ldrb r1, [r7]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_0808136E:
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, _08081450 @ =gCurLevelInfo
	ldr r0, _08081454 @ =gUnk_0203AD3C
	mov ip, r0
	ldrb r0, [r0]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov sb, r3
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r3, _08081458 @ =gCurLevelInfo+0xC
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r5, r4, #0
	adds r5, #0x54
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	movs r1, #0
	mov sl, r1
	strh r0, [r4, #0x20]
	ldr r1, [r4, #0x44]
	asrs r1, r1, #8
	mov r3, ip
	ldrb r0, [r3]
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x55
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	ldrb r0, [r7]
	cmp r0, #0
	beq _080813D0
	mov r0, sl
	strb r0, [r5]
	strb r0, [r3]
_080813D0:
	mov r1, ip
	ldrb r0, [r1]
	ldr r3, [sp, #0xc]
	ldrb r3, [r3]
	cmp r0, r3
	bne _08081402
	mov r1, sb
	muls r1, r0, r1
	ldr r0, _08081458 @ =gCurLevelInfo+0xC
	adds r1, r1, r0
	ldr r0, [r4, #0x40]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x20]
	mov r1, ip
	ldrb r0, [r1]
	mov r1, sb
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x44]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x22]
_08081402:
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _0808146A
	ldr r2, _0808145C @ =gKirbys
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808146A
	ldr r1, _08081460 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r4, #0x20]
	adds r0, r0, r2
	strh r0, [r4, #0x20]
	ldrh r0, [r1, #2]
	ldrh r1, [r4, #0x22]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _08081464
	mov r0, r8
	bl sub_081564D8
	b _0808146A
	.align 2, 0
_08081450: .4byte gCurLevelInfo
_08081454: .4byte gUnk_0203AD3C
_08081458: .4byte gCurLevelInfo+0xC
_0808145C: .4byte gKirbys
_08081460: .4byte gUnk_0203AD18
_08081464:
	mov r0, r8
	bl sub_0815604C
_0808146A:
	ldr r2, [sp, #8]
	ldrh r0, [r2]
	cmp r0, #0x6c
	bne _080814AA
	ldrb r0, [r6, #1]
	cmp r0, #0xc
	bne _080814AA
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080814E4 @ =0x0000FC80
	strh r0, [r1]
	subs r1, #3
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r4, #0x68]
	ldr r1, _080814E8 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080814AA
	ldr r0, [r4, #8]
	ldr r1, _080814EC @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
_080814AA:
	ldr r1, [r4, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0808151A
	ldr r0, [r4, #8]
	ldr r1, _080814F0 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080814F4
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r1, [r0]
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	subs r0, #1
	ldrb r3, [r0]
	rsbs r3, r3, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, #3
	b _0808150A
	.align 2, 0
_080814E4: .4byte 0x0000FC80
_080814E8: .4byte 0x7FFFFFFF
_080814EC: .4byte 0xFFFBFFFF
_080814F0: .4byte 0xFFFFFDFF
_080814F4:
	adds r0, r4, #0
	adds r0, #0x34
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, #1
_0808150A:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0803E308
	b _0808152A
_0808151A:
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
_0808152A:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08081596
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0808155C
	ldr r2, _08081554 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r3, _08081558 @ =0x0000065E
	adds r0, r0, r3
	ldrb r1, [r0]
	b _0808155E
	.align 2, 0
_08081554: .4byte gCurLevelInfo
_08081558: .4byte 0x0000065E
_0808155C:
	movs r1, #0xff
_0808155E:
	cmp r1, #0xff
	beq _08081596
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080815A8 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080815AC @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08081596:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080815A8: .4byte gUnk_02022EB0
_080815AC: .4byte gUnk_02022F50

	thumb_func_start sub_080815B0
sub_080815B0: @ 0x080815B0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080815E0 @ =sub_08081724
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080815E4 @ =sub_08084D28
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080815E8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080815F0
	.align 2, 0
_080815E0: .4byte sub_08081724
_080815E4: .4byte sub_08084D28
_080815E8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080815F0:
	adds r4, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r7, #2
	strb r7, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r6, r4, #0
	adds r6, #0x56
	strb r0, [r6]
	ldr r0, _080816C8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r6]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08081640
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_08081640:
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	subs r0, #3
	strb r7, [r0]
	ldr r2, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #0x18
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _080816CC @ =0x30000043
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _0808167C
	orrs r2, r3
	str r2, [r4, #8]
_0808167C:
	movs r2, #0x16
	rsbs r2, r2, #0
	movs r0, #0x16
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0x16
	bl sub_0803E2B0
	movs r2, #0x12
	rsbs r2, r2, #0
	movs r0, #0x12
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0x12
	bl sub_0803E308
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08081712
	ldrb r0, [r6]
	cmp r0, #0xff
	beq _080816D8
	ldr r2, _080816D0 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080816D4 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080816DA
	.align 2, 0
_080816C8: .4byte gUnk_03000510
_080816CC: .4byte 0x30000043
_080816D0: .4byte gCurLevelInfo
_080816D4: .4byte 0x0000065E
_080816D8:
	movs r1, #0xff
_080816DA:
	cmp r1, #0xff
	beq _08081712
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _0808171C @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08081720 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08081712:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808171C: .4byte gUnk_02022EB0
_08081720: .4byte gUnk_02022F50

	thumb_func_start sub_08081724
sub_08081724: @ 0x08081724
	push {r4, lr}
	ldr r0, _08081740 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08081744
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808174C
	.align 2, 0
_08081740: .4byte gCurTask
_08081744:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808174C:
	adds r4, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808175A
	b _08081858
_0808175A:
	ldr r0, [r4, #0x70]
	mov ip, r0
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08081788
	mov r1, ip
	ldr r0, [r1, #8]
	ldr r1, _08081784 @ =0xFFFF7FFF
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _08081858
	.align 2, 0
_08081784: .4byte 0xFFFF7FFF
_08081788:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080817F6
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080817BC
	ldr r2, _080817B4 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080817B8 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080817BE
	.align 2, 0
_080817B4: .4byte gCurLevelInfo
_080817B8: .4byte 0x0000065E
_080817BC:
	movs r1, #0xff
_080817BE:
	cmp r1, #0xff
	beq _080817F6
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08081820 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08081824 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080817F6:
	mov r0, ip
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x68
	bne _08081828
	mov r0, ip
	ldr r2, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r2, r0
	cmp r2, #0
	bne _0808184E
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _0808184E
	b _08081844
	.align 2, 0
_08081820: .4byte gUnk_02022EB0
_08081824: .4byte gUnk_02022F50
_08081828:
	mov r1, ip
	ldr r2, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r2, r0
	cmp r2, #0
	bne _0808184E
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0808184E
_08081844:
	ldr r0, [r4, #8]
	ldr r1, _08081860 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	strh r2, [r4, #4]
_0808184E:
	mov r2, ip
	ldr r0, [r2, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r2, #0x44]
	str r0, [r4, #0x44]
_08081858:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08081860: .4byte 0xFFFBFFFF

	thumb_func_start sub_08081864
sub_08081864: @ 0x08081864
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r0, _080818A4 @ =sub_08081EB0
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080818A8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080818AC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080818B4
	.align 2, 0
_080818A4: .4byte sub_08081EB0
_080818A8: .4byte sub_0803DCCC
_080818AC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080818B4:
	adds r4, r0, #0
	bl sub_0803E380
	movs r0, #0
	mov ip, r0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	mov r1, ip
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r3, r5, #0
	adds r3, #0x56
	ldrb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08081964 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r6, #1
	adds r0, r6, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	mov sb, r3
	cmp r2, #0
	beq _0808190A
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0808190A:
	adds r2, r4, #0
	adds r2, #0x64
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x66
	mov r3, ip
	strh r3, [r0]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #3
	strb r0, [r1]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x30
	ble _08081936
	movs r0, #5
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
_08081936:
	ldr r2, [r4, #8]
	ldr r0, _08081968 @ =0xA0000040
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _0808196C @ =0x00002003
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r6
	orrs r0, r2
	str r0, [r4, #8]
	ands r0, r6
	cmp r0, #0
	beq _08081974
	ldr r0, [r4, #0x40]
	ldr r1, _08081970 @ =0xFFFFFA00
	adds r0, r0, r1
	b _0808197C
	.align 2, 0
_08081964: .4byte gUnk_03000510
_08081968: .4byte 0xA0000040
_0808196C: .4byte 0x00002003
_08081970: .4byte 0xFFFFFA00
_08081974:
	ldr r0, [r4, #0x40]
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r0, r0, r3
_0808197C:
	str r0, [r4, #0x40]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4f
	ble _08081988
	movs r7, #0x4f
_08081988:
	ldr r1, _080819D4 @ =gUnk_08350C88
	lsls r0, r7, #0x10
	asrs r0, r0, #0x12
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	mov r1, r8
	cmp r1, #0
	bne _080819E0
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r3, _080819D8 @ =gSineTable
	mov ip, r3
	movs r0, #0xd0
	lsls r0, r0, #2
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r1, r0
	asrs r0, r0, #8
	adds r2, r4, #0
	adds r2, #0x50
	strh r0, [r2]
	ldr r0, _080819DC @ =0xFFFFFEE0
	adds r1, r1, r0
	movs r0, #0xa0
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r1, r0
	asrs r0, r0, #8
	movs r1, #0x52
	strh r0, [r1, r4]
	b _08081A42
	.align 2, 0
_080819D4: .4byte gUnk_08350C88
_080819D8: .4byte gSineTable
_080819DC: .4byte 0xFFFFFEE0
_080819E0:
	mov r3, r8
	cmp r3, #2
	beq _08081A10
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r2, _08081A0C @ =gSineTable
	movs r3, #0x8f
	lsls r3, r3, #2
	adds r0, r2, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r1, r0
	asrs r0, r0, #8
	adds r3, r4, #0
	adds r3, #0x50
	strh r0, [r3]
	ldrh r0, [r2, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r1, r0
	b _08081A3A
	.align 2, 0
_08081A0C: .4byte gSineTable
_08081A10:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	ldr r1, _08081AB0 @ =gSineTable
	movs r3, #0x90
	lsls r3, r3, #4
	adds r0, r1, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
	asrs r0, r0, #8
	adds r3, r4, #0
	adds r3, #0x50
	strh r0, [r3]
	movs r0, #0xe0
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
_08081A3A:
	asrs r0, r0, #8
	movs r1, #0x52
	strh r0, [r1, r4]
	adds r2, r3, #0
_08081A42:
	ldr r0, [r4, #8]
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	beq _08081A52
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_08081A52:
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #3
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0803E2B0
	movs r2, #1
	rsbs r2, r2, #0
	str r5, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #1
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	mov r3, sb
	ldrb r2, [r3]
	lsls r2, r2, #0xb
	ldr r0, _08081AB4 @ =0x06010600
	adds r2, r2, r0
	ldr r3, _08081AB8 @ =0x0000021D
	movs r0, #0
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	mov r1, sb
	ldrb r0, [r1]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2f
	strb r0, [r1]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08081AB0: .4byte gSineTable
_08081AB4: .4byte 0x06010600
_08081AB8: .4byte 0x0000021D

	thumb_func_start sub_08081ABC
sub_08081ABC: @ 0x08081ABC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08081AE0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08081AE4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08081AEC
	.align 2, 0
_08081AE0: .4byte gCurTask
_08081AE4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08081AEC:
	adds r5, r0, #0
	ldr r4, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	ldr r2, _08081BD8 @ =0x00000103
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0x13
	bne _08081B06
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	bne _08081B1A
_08081B06:
	ldr r2, _08081BDC @ =0x0000028E
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r1, r5, #0
	adds r1, #0x60
	ldr r0, _08081BE0 @ =0x0000FFFF
	strh r0, [r1]
_08081B1A:
	cmp r4, #0
	beq _08081B38
	ldrb r0, [r4]
	cmp r0, #1
	bne _08081B38
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08081B38
	adds r1, r5, #0
	adds r1, #0x60
	ldr r0, _08081BE0 @ =0x0000FFFF
	strh r0, [r1]
_08081B38:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08081B46
	b _08081EA2
_08081B46:
	cmp r4, #0
	beq _08081BE4
	ldrb r0, [r4]
	cmp r0, #1
	beq _08081B52
	b _08081CB0
_08081B52:
	adds r6, r4, #0
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x71
	bne _08081B88
	adds r2, r5, #0
	adds r2, #0x52
	adds r3, r4, #0
	adds r3, #0x3b
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldr r0, [r5, #0x4c]
	subs r1, r1, r0
	lsls r1, r1, #8
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0x84
	lsls r1, r1, #0x16
	cmp r0, r1
	ble _08081B82
	b _08081C8A
_08081B82:
	movs r0, #0
	ldrsb r0, [r3, r0]
	str r0, [r5, #0x4c]
_08081B88:
	adds r3, r6, #0
	adds r3, #0x82
	ldrb r0, [r3]
	cmp r0, #0x7b
	beq _08081C8A
	cmp r0, #0x50
	beq _08081C8A
	adds r2, r5, #0
	adds r2, #0x50
	movs r6, #0
	ldrsh r1, [r2, r6]
	ldr r0, [r4, #0x40]
	subs r0, r0, r1
	str r0, [r5, #0x40]
	adds r0, r5, #0
	adds r0, #0x52
	movs r6, #0
	ldrsh r1, [r0, r6]
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r5, #0x44]
	ldrb r0, [r3]
	cmp r0, #0x45
	beq _08081CB0
	ldr r0, [r4, #8]
	movs r3, #1
	ands r0, r3
	ldr r1, [r5, #0x48]
	cmp r1, r0
	beq _08081CB0
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
	ldr r0, [r5, #8]
	eors r0, r3
	str r0, [r5, #8]
	ldr r0, [r4, #8]
	ands r0, r3
	str r0, [r5, #0x48]
	b _08081CB0
	.align 2, 0
_08081BD8: .4byte 0x00000103
_08081BDC: .4byte 0x0000028E
_08081BE0: .4byte 0x0000FFFF
_08081BE4:
	ldr r0, [r5, #0x58]
	movs r1, #0x82
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08081CB0
	movs r0, #0
	mov r8, r0
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	asrs r6, r0, #0xc
	ldr r4, _08081CA4 @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r7, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r7, #0
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r6, r0
	bgt _08081C6C
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r6, r0
	blt _08081C6C
	adds r0, r5, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x44]
	subs r0, r0, r1
	asrs r2, r0, #0xc
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _08081C6C
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _08081C6C
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08081C6C:
	adds r0, r5, #0
	adds r0, #0x57
	mov r3, r8
	strb r3, [r0]
	ldr r1, _08081CA8 @ =gUnk_082D88B8
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r5, #0x58]
	movs r1, #0x82
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08081CB0
_08081C8A:
	ldr r2, _08081CAC @ =0x0000028E
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	b _08081EA2
	.align 2, 0
_08081CA4: .4byte gCurLevelInfo
_08081CA8: .4byte gUnk_082D88B8
_08081CAC: .4byte 0x0000028E
_08081CB0:
	ldrh r1, [r5, #4]
	movs r6, #4
	ldrsh r0, [r5, r6]
	cmp r0, #0xb4
	ble _08081CF4
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08081CCC
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _08081CD2
_08081CCC:
	ldr r0, [r5, #8]
	ldr r1, _08081D28 @ =0xFFFFFBFF
	ands r0, r1
_08081CD2:
	str r0, [r5, #8]
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0xc8
	ble _08081CF4
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
_08081CF4:
	ldrh r1, [r5, #4]
	movs r2, #4
	ldrsh r0, [r5, r2]
	movs r3, #0x55
	adds r3, r3, r5
	mov sl, r3
	movs r6, #0x54
	adds r6, r6, r5
	mov sb, r6
	cmp r0, #7
	bgt _08081D30
	movs r2, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08081D30
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	subs r0, #0x13
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08081D2C
	strb r2, [r3]
	b _08081D30
	.align 2, 0
_08081D28: .4byte 0xFFFFFBFF
_08081D2C:
	mov r0, sb
	strb r2, [r0]
_08081D30:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08081D4E
	adds r0, r5, #0
	adds r0, #0x10
	ldr r1, [r5, #0x18]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _08081D58
_08081D4E:
	adds r0, r5, #0
	adds r0, #0x10
	ldr r1, [r5, #0x18]
	ldr r2, _08081DD8 @ =0xFFFFFBFF
	ands r1, r2
_08081D58:
	str r1, [r0, #8]
	mov r8, r0
	ldr r3, [r5, #8]
	movs r4, #8
	ands r4, r3
	adds r7, r5, #0
	adds r7, #0x2c
	cmp r4, #0
	bne _08081DF2
	adds r0, r5, #0
	adds r0, #0x2b
	adds r2, r5, #0
	adds r2, #0x2a
	ldrb r1, [r0]
	adds r6, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _08081D84
	ldrh r0, [r5, #0x28]
	ldrh r1, [r5, #0x1c]
	cmp r0, r1
	beq _08081D9C
_08081D84:
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq _08081D9C
	strb r4, [r5, #1]
	strh r4, [r5, #2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r5, #8]
_08081D9C:
	mov r0, r8
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08081DDC
	ldr r0, [r5, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #8]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08081DF2
	ldrb r0, [r7]
	cmp r0, #0
	beq _08081DF2
	movs r0, #0xff
	strb r0, [r6]
	ldr r0, [r5, #8]
	subs r1, #9
	ands r0, r1
	str r0, [r5, #8]
	strb r2, [r5, #1]
	strh r2, [r5, #2]
	mov r0, r8
	bl sub_08155128
	b _08081DF2
	.align 2, 0
_08081DD8: .4byte 0xFFFFFBFF
_08081DDC:
	ldrb r1, [r7]
	ldrh r0, [r5, #2]
	adds r0, r0, r1
	strh r0, [r5, #2]
	lsrs r0, r0, #4
	strb r0, [r5, #1]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
_08081DF2:
	ldr r2, [r5, #0x40]
	asrs r2, r2, #8
	ldr r3, _08081E8C @ =gCurLevelInfo
	ldr r6, _08081E90 @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, r0, r2
	movs r2, #0
	strh r0, [r5, #0x20]
	ldr r1, [r5, #0x44]
	asrs r1, r1, #8
	ldrb r0, [r6]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	mov r3, sl
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r5, #0x22]
	ldrb r0, [r7]
	cmp r0, #0
	beq _08081E42
	mov r0, sb
	strb r2, [r0]
	strb r2, [r3]
_08081E42:
	ldr r3, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _08081EA2
	ldr r2, _08081E94 @ =gKirbys
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08081EA2
	ldr r1, _08081E98 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r5, #0x20]
	adds r0, r0, r2
	strh r0, [r5, #0x20]
	ldrh r0, [r1, #2]
	ldrh r6, [r5, #0x22]
	adds r0, r0, r6
	strh r0, [r5, #0x22]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _08081E9C
	mov r0, r8
	bl sub_081564D8
	b _08081EA2
	.align 2, 0
_08081E8C: .4byte gCurLevelInfo
_08081E90: .4byte gUnk_0203AD3C
_08081E94: .4byte gKirbys
_08081E98: .4byte gUnk_0203AD18
_08081E9C:
	mov r0, r8
	bl sub_0815604C
_08081EA2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08081EB0
sub_08081EB0: @ 0x08081EB0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08081ECC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08081ED0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08081ED8
	.align 2, 0
_08081ECC: .4byte gCurTask
_08081ED0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08081ED8:
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r1, [r4, #0x6c]
	cmp r1, #0
	beq _08081EF8
	ldrb r0, [r1]
	cmp r0, #1
	bne _08081EF8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08081EF8
	movs r0, #0
	str r0, [r4, #0x6c]
_08081EF8:
	adds r0, r4, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08081F06
	b _080822A6
_08081F06:
	ldr r1, _08081F4C @ =0x00000103
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0x13
	beq _08081F12
	b _0808201C
_08081F12:
	adds r0, r5, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	bne _08081F1E
	b _0808201C
_08081F1E:
	adds r0, r4, #0
	bl sub_080822B4
	ldr r0, [r4, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08081F54
	ldr r0, [r4, #0xc]
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	bne _08081F74
	ldr r2, _08081F50 @ =0x00000296
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r4, #0xc]
	orrs r0, r5
	b _08081F72
	.align 2, 0
_08081F4C: .4byte 0x00000103
_08081F50: .4byte 0x00000296
_08081F54:
	ldr r0, [r4, #0xc]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08081F74
	ldr r2, _08082010 @ =0x00000296
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r4, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08081F72:
	str r0, [r4, #0xc]
_08081F74:
	ldr r1, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #0xc
	ands r3, r1
	cmp r3, #0
	bne _0808201C
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08082036
	ldr r2, [r4, #0x6c]
	ldr r0, _08082014 @ =0xFFFBFFFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r1, r0
	str r1, [r4, #8]
	strh r3, [r4, #4]
	adds r5, r4, #0
	adds r5, #0x50
	strh r3, [r5]
	adds r6, r4, #0
	adds r6, #0x52
	strh r3, [r6]
	cmp r2, #0
	beq _0808201C
	ldrb r3, [r2]
	cmp r3, #1
	bne _0808201C
	ldr r0, [r2, #8]
	movs r1, #0xa0
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08081FCC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_08081FCC:
	ldr r0, [r2, #0x40]
	ldr r1, [r4, #0x40]
	subs r0, r0, r1
	strh r0, [r5]
	ldr r0, [r2, #0x44]
	ldr r1, [r4, #0x44]
	subs r0, r0, r1
	strh r0, [r6]
	adds r1, r2, #0
	adds r1, #0x82
	ldrb r0, [r1]
	cmp r0, #0x45
	beq _08081FEC
	ldrh r0, [r2, #0x24]
	subs r0, #0x40
	strh r0, [r4, #0x24]
_08081FEC:
	ldrb r0, [r1]
	cmp r0, #0x46
	bne _08081FFC
	ldr r6, _08082018 @ =0xFFFFF600
	adds r0, r6, #0
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
_08081FFC:
	ldr r0, [r2, #8]
	ands r0, r3
	str r0, [r4, #0x48]
	adds r0, r2, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [r4, #0x4c]
	b _08082164
	.align 2, 0
_08082010: .4byte 0x00000296
_08082014: .4byte 0xFFFBFFFF
_08082018: .4byte 0xFFFFF600
_0808201C:
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _080822A6
_08082036:
	ldr r3, _08082084 @ =gCurLevelInfo
	adds r2, r4, #0
	adds r2, #0x56
	ldrb r1, [r2]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r5, [r4, #0x40]
	ldr r0, [r0]
	adds r7, r2, #0
	cmp r5, r0
	bgt _08082088
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r5, r0
	blt _08082088
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r2, [r4, #0x44]
	ldr r0, [r0]
	cmp r2, r0
	bgt _08082088
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _08082088
	adds r0, r4, #0
	bl sub_0806FC70
	b _0808209A
	.align 2, 0
_08082084: .4byte gCurLevelInfo
_08082088:
	ldr r0, [r4, #0x58]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x58]
	ldr r0, [r4, #0xc]
	adds r1, #1
	ands r0, r1
	str r0, [r4, #0xc]
_0808209A:
	ldr r0, [r4, #0x58]
	movs r1, #0xc
	ands r0, r1
	adds r2, r4, #0
	adds r2, #0x62
	cmp r0, #0
	beq _080820B8
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, #0x44]
	cmp r1, r0
	bge _080820B8
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
_080820B8:
	ldrb r6, [r2]
	cmp r6, #0
	beq _0808218C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r2, #0
	mov ip, r2
	adds r0, r4, #0
	adds r0, #0x50
	movs r6, #0
	ldrsh r1, [r0, r6]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r6, r0, #0xc
	ldr r5, _0808217C @ =gCurLevelInfo
	ldrb r7, [r7]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r7, #0
	muls r3, r0, r3
	adds r0, r5, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r6, r0
	bgt _0808214C
	adds r0, r5, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r6, r0
	blt _0808214C
	adds r0, r4, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	asrs r2, r0, #0xc
	adds r0, r5, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _0808214C
	adds r0, r5, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _0808214C
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
_0808214C:
	adds r0, r4, #0
	adds r0, #0x57
	movs r2, #0
	mov r6, ip
	strb r6, [r0]
	ldr r1, _08082180 @ =gUnk_082D88B8
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x58]
	strh r2, [r4, #4]
_08082164:
	adds r1, r4, #0
	adds r1, #0x2a
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r1]
	ldr r0, _08082184 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08082188 @ =sub_08081ABC
	str r0, [r1, #8]
	bl _call_via_r0
	b _080822A6
	.align 2, 0
_0808217C: .4byte gCurLevelInfo
_08082180: .4byte gUnk_082D88B8
_08082184: .4byte gCurTask
_08082188: .4byte sub_08081ABC
_0808218C:
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r5, r0, #0
	cmp r1, #0
	beq _08082284
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080821B6
	movs r2, #0xaf
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
_080821B6:
	ldrh r1, [r5]
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _080821CC
	adds r0, r1, #6
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080821D8
	b _080821D6
_080821CC:
	subs r0, r1, #6
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080821D8
_080821D6:
	strh r6, [r5]
_080821D8:
	ldr r0, [r4, #0xc]
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	beq _08082220
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, #0xc
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r2, _0808220C @ =0xFDC00000
	adds r3, r0, #0
	cmp r1, r2
	bge _080821FA
	ldr r0, _08082210 @ =0x0000FDC0
	strh r0, [r3]
_080821FA:
	ldr r0, [r4, #8]
	ands r0, r6
	cmp r0, #0
	beq _08082214
	movs r6, #0
	ldrsh r0, [r5, r6]
	movs r1, #0x40
	rsbs r1, r1, #0
	b _08082248
	.align 2, 0
_0808220C: .4byte 0xFDC00000
_08082210: .4byte 0x0000FDC0
_08082214:
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0x3f
	bgt _08082260
	movs r0, #0x40
	b _0808225E
_08082220:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _08082250 @ =0xFFFFFB80
	adds r3, r1, #0
	cmp r0, r2
	bge _08082238
	strh r2, [r3]
_08082238:
	ldr r0, [r4, #8]
	ands r0, r6
	cmp r0, #0
	beq _08082254
	movs r2, #0
	ldrsh r0, [r5, r2]
	movs r1, #0x80
	rsbs r1, r1, #0
_08082248:
	cmp r0, r1
	ble _08082260
	strh r1, [r5]
	b _08082260
	.align 2, 0
_08082250: .4byte 0xFFFFFB80
_08082254:
	movs r6, #0
	ldrsh r0, [r5, r6]
	cmp r0, #0x7f
	bgt _08082260
	movs r0, #0x80
_0808225E:
	strh r0, [r5]
_08082260:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08082284
	ldr r1, [r4, #0x40]
	str r1, [r4, #0x48]
	ldr r2, [r4, #0x44]
	str r2, [r4, #0x4c]
	movs r6, #0
	ldrsh r0, [r5, r6]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	movs r1, #0
	ldrsh r0, [r3, r1]
	subs r2, r2, r0
	str r2, [r4, #0x44]
_08082284:
	adds r0, r4, #0
	bl sub_0806F8BC
	ldr r1, _080822AC @ =gCurLevelInfo
	ldrb r2, [r7]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x4c
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r6, _080822B0 @ =0xFFFFD100
	adds r2, r0, r6
	ldr r0, [r4, #0x44]
	cmp r0, r2
	bgt _080822A6
	str r2, [r4, #0x44]
_080822A6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080822AC: .4byte gCurLevelInfo
_080822B0: .4byte 0xFFFFD100

	thumb_func_start sub_080822B4
sub_080822B4: @ 0x080822B4
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bge _080822C4
	rsbs r1, r1, #0
_080822C4:
	ldr r0, _080822FC @ =0x0000017F
	cmp r1, r0
	bgt _08082330
	adds r2, r3, #0
	adds r2, #0x2a
	movs r0, #4
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x52
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0x80
	ble _08082304
	movs r0, #2
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	ble _08082304
	adds r0, #0xc0
	cmp r1, r0
	ble _08082300
	movs r0, #0
	b _08082302
	.align 2, 0
_080822FC: .4byte 0x0000017F
_08082300:
	movs r0, #1
_08082302:
	strb r0, [r2]
_08082304:
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08082378
	movs r0, #6
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, _08082328 @ =0xFFFFFE80
	cmp r1, r0
	bge _08082378
	subs r0, #0xc0
	cmp r1, r0
	bge _0808232C
	movs r0, #8
	b _08082376
	.align 2, 0
_08082328: .4byte 0xFFFFFE80
_0808232C:
	movs r0, #7
	b _08082376
_08082330:
	adds r0, r3, #0
	adds r0, #0x2a
	movs r1, #4
	strb r1, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	movs r2, #0
	ldrsh r3, [r1, r2]
	adds r2, r0, #0
	adds r4, r1, #0
	cmp r3, #0x80
	ble _08082358
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r3, r0
	ble _08082354
	movs r0, #2
	b _08082356
_08082354:
	movs r0, #3
_08082356:
	strb r0, [r2]
_08082358:
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08082378
	ldr r0, _08082370 @ =0xFFFFFE80
	cmp r1, r0
	bge _08082374
	movs r0, #6
	b _08082376
	.align 2, 0
_08082370: .4byte 0xFFFFFE80
_08082374:
	movs r0, #5
_08082376:
	strb r0, [r2]
_08082378:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08082380
sub_08082380: @ 0x08082380
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	ldr r0, _080823BC @ =sub_08082748
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080823C0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r1, [r6, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080823C4
	ldrh r0, [r6, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080823CC
	.align 2, 0
_080823BC: .4byte sub_08082748
_080823C0: .4byte sub_0803DCCC
_080823C4:
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080823CC:
	adds r4, r0, #0
	bl sub_0803E380
	movs r7, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r7, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r3, r5, #0
	adds r3, #0x56
	ldrb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08082490 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	mov ip, r0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	mov sb, r3
	cmp r2, #0
	beq _0808241E
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_0808241E:
	adds r0, r4, #0
	adds r0, #0x64
	strh r7, [r0]
	adds r0, #2
	strh r7, [r0]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0
	strb r0, [r1]
	ldr r1, [r4, #8]
	ldr r0, _08082494 @ =0x60000040
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r1, r0
	str r1, [r4, #8]
	movs r0, #0x88
	lsls r0, r0, #0x10
	movs r2, #8
	rsbs r2, r2, #0
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	mov r3, ip
	ands r0, r3
	orrs r1, r0
	str r1, [r4, #8]
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #8
	bl sub_0803E2B0
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #3
	bl sub_0803E308
	mov r0, r8
	cmp r0, #5
	bhi _080824F4
	lsls r0, r0, #2
	ldr r1, _08082498 @ =_0808249C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08082490: .4byte gUnk_03000510
_08082494: .4byte 0x60000040
_08082498: .4byte _0808249C
_0808249C: @ jump table
	.4byte _080824B4 @ case 0
	.4byte _080824F4 @ case 1
	.4byte _08082524 @ case 2
	.4byte _08082564 @ case 3
	.4byte _080825B0 @ case 4
	.4byte _080825E8 @ case 5
_080824B4:
	adds r2, r4, #0
	adds r2, #0x50
	ldr r0, _080824DC @ =0x0000013B
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	ldr r0, _080824E0 @ =0x00000366
	strh r0, [r1]
	ldr r0, [r4, #0x44]
	ldr r1, _080824E4 @ =0xFFFFF100
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080824EC
	ldr r0, [r4, #0x40]
	ldr r3, _080824E8 @ =0xFFFFF600
	b _080825AA
	.align 2, 0
_080824DC: .4byte 0x0000013B
_080824E0: .4byte 0x00000366
_080824E4: .4byte 0xFFFFF100
_080824E8: .4byte 0xFFFFF600
_080824EC:
	ldr r0, [r4, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #4
	b _08082594
_080824F4:
	adds r2, r4, #0
	adds r2, #0x50
	ldr r0, _0808251C @ =0x00000321
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xe8
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, [r4, #0x44]
	ldr r3, _08082520 @ =0xFFFFFD00
	adds r0, r0, r3
	str r0, [r4, #0x44]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08082590
	b _080825A4
	.align 2, 0
_0808251C: .4byte 0x00000321
_08082520: .4byte 0xFFFFFD00
_08082524:
	adds r2, r4, #0
	adds r2, #0x50
	ldr r0, _08082550 @ =0x0000037F
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	ldr r0, _08082554 @ =0x0000FF11
	strh r0, [r1]
	ldr r0, [r4, #0x44]
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808255C
	ldr r0, [r4, #0x40]
	ldr r3, _08082558 @ =0xFFFFF400
	b _080825AA
	.align 2, 0
_08082550: .4byte 0x0000037F
_08082554: .4byte 0x0000FF11
_08082558: .4byte 0xFFFFF400
_0808255C:
	ldr r0, [r4, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #4
	b _08082594
_08082564:
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	ldr r0, [r4, #0x44]
	ldr r3, _0808259C @ =0xFFFFFC00
	adds r0, r0, r3
	str r0, [r4, #0x44]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080825A4
_08082590:
	ldr r0, [r4, #0x40]
	ldr r1, _080825A0 @ =0xFFFFF400
_08082594:
	adds r0, r0, r1
	str r0, [r4, #0x40]
	b _08082636
	.align 2, 0
_0808259C: .4byte 0xFFFFFC00
_080825A0: .4byte 0xFFFFF400
_080825A4:
	ldr r0, [r4, #0x40]
	movs r3, #0xc0
	lsls r3, r3, #4
_080825AA:
	adds r0, r0, r3
	str r0, [r4, #0x40]
	b _08082636
_080825B0:
	ldr r0, _080825DC @ =sub_08082950
	str r0, [r6, #8]
	movs r0, #0
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x52
	ldr r0, _080825E0 @ =0x0000FE80
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #8
	strh r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08082624
	ldr r0, [r4, #0x40]
	ldr r1, _080825E4 @ =0xFFFFF800
	adds r0, r0, r1
	b _0808262C
	.align 2, 0
_080825DC: .4byte sub_08082950
_080825E0: .4byte 0x0000FE80
_080825E4: .4byte 0xFFFFF800
_080825E8:
	ldr r0, _08082618 @ =sub_08082950
	str r0, [r6, #8]
	movs r0, #0
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x52
	ldr r0, _0808261C @ =0x0000FE80
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #8
	strh r0, [r2]
	ldr r0, [r4, #0x44]
	subs r0, #6
	str r0, [r4, #0x44]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08082624
	ldr r0, [r4, #0x40]
	ldr r1, _08082620 @ =0xFFFFF800
	adds r0, r0, r1
	b _0808262C
	.align 2, 0
_08082618: .4byte sub_08082950
_0808261C: .4byte 0x0000FE80
_08082620: .4byte 0xFFFFF800
_08082624:
	ldr r0, [r4, #0x40]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
_0808262C:
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	ldr r1, _08082690 @ =0xBFFFFFFF
	ands r0, r1
	str r0, [r4, #8]
_08082636:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08082646
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_08082646:
	mov r0, r8
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08082658
	adds r0, r4, #0
	bl sub_0809D8C8
_08082658:
	adds r1, r4, #0
	adds r1, #0x10
	mov r0, sb
	ldrb r2, [r0]
	lsls r2, r2, #0xb
	ldr r3, _08082694 @ =0x06010600
	adds r2, r2, r3
	ldr r3, _08082698 @ =0x0000025A
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	mov r1, sb
	ldrb r0, [r1]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2f
	strb r0, [r1]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08082690: .4byte 0xBFFFFFFF
_08082694: .4byte 0x06010600
_08082698: .4byte 0x0000025A

	thumb_func_start sub_0808269C
sub_0808269C: @ 0x0808269C
	push {r4, lr}
	ldr r0, _080826B8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080826BC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080826C4
	.align 2, 0
_080826B8: .4byte gCurTask
_080826BC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080826C4:
	adds r4, r0, #0
	ldr r1, [r4, #0x70]
	ldr r2, _08082724 @ =0x00000103
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #9
	bne _080826DC
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	bne _080826F0
_080826DC:
	ldr r2, _08082728 @ =0x0000028E
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r1, r4, #0
	adds r1, #0x60
	ldr r0, _0808272C @ =0x0000FFFF
	strh r0, [r1]
_080826F0:
	adds r0, r4, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08082742
	adds r0, r4, #0
	bl sub_0806F8BC
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08082742
	ldr r0, [r4, #0xc]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08082730
	adds r0, r4, #0
	movs r1, #1
	bl sub_08074240
	b _08082738
	.align 2, 0
_08082724: .4byte 0x00000103
_08082728: .4byte 0x0000028E
_0808272C: .4byte 0x0000FFFF
_08082730:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08074240
_08082738:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_08082742:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08082748
sub_08082748: @ 0x08082748
	push {r4, r5, r6, r7, lr}
	ldr r0, _08082764 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08082768
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08082770
	.align 2, 0
_08082764: .4byte gCurTask
_08082768:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08082770:
	adds r4, r0, #0
	ldr r1, [r4, #0x70]
	ldr r2, _080827CC @ =0x00000103
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #9
	bne _08082788
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	bne _0808279C
_08082788:
	ldr r2, _080827D0 @ =0x0000028E
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r1, r4, #0
	adds r1, #0x60
	ldr r0, _080827D4 @ =0x0000FFFF
	strh r0, [r1]
_0808279C:
	adds r0, r4, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _080827AC
	b _0808294A
_080827AC:
	adds r0, r4, #0
	bl sub_0809D8C8
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	bne _080827C8
	ldr r6, [r4, #8]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r6, r0
	cmp r6, #0
	beq _080827D8
_080827C8:
	strh r5, [r4, #4]
	b _08082830
	.align 2, 0
_080827CC: .4byte 0x00000103
_080827D0: .4byte 0x0000028E
_080827D4: .4byte 0x0000FFFF
_080827D8:
	ldr r5, [r4, #0x58]
	movs r7, #2
	ands r5, r7
	cmp r5, #0
	beq _0808287C
	ldr r0, [r4, #0xc]
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	bne _0808280A
	strh r6, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x52
	strh r6, [r0]
	subs r0, #2
	strh r6, [r0]
	ldr r2, _08082858 @ =0x00000296
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r4, #0xc]
	orrs r0, r5
	str r0, [r4, #0xc]
_0808280A:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08082826
	movs r1, #8
	rsbs r1, r1, #0
	movs r2, #6
	rsbs r2, r2, #0
	adds r0, r4, #0
	bl sub_08096464
_08082826:
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0x78
	ble _08082864
	strh r6, [r4, #4]
_08082830:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, _0808285C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08082860 @ =sub_0808269C
	str r0, [r1, #8]
	adds r0, r4, #0
	bl sub_0806F8BC
	b _0808294A
	.align 2, 0
_08082858: .4byte 0x00000296
_0808285C: .4byte gCurTask
_08082860: .4byte sub_0808269C
_08082864:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _08082878 @ =0xFFFFFF00
	b _080828D2
	.align 2, 0
_08082878: .4byte 0xFFFFFF00
_0808287C:
	ldr r0, [r4, #0xc]
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	beq _0808289E
	ldr r2, _080828DC @ =0x00000296
	adds r0, r4, #0
	movs r1, #0
	movs r3, #1
	bl sub_0808AE30
	strh r5, [r4, #4]
	ldr r0, [r4, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
_0808289E:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080828BA
	movs r1, #8
	rsbs r1, r1, #0
	movs r2, #6
	rsbs r2, r2, #0
	adds r0, r4, #0
	bl sub_08096464
_080828BA:
	ldr r0, [r4, #0xc]
	ands r0, r7
	cmp r0, #0
	bne _080828E4
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x1b
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080828E0 @ =0xFFFFFB00
_080828D2:
	cmp r0, r2
	bge _08082918
	strh r2, [r1]
	b _08082918
	.align 2, 0
_080828DC: .4byte 0x00000296
_080828E0: .4byte 0xFFFFFB00
_080828E4:
	ldrh r1, [r4, #4]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08082918
	movs r2, #0xb0
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r2, r0, #0
	movs r3, #0xfe
	lsls r3, r3, #8
	strh r3, [r2, #0x3c]
	ldr r0, [r4, #8]
	ands r0, r6
	cmp r0, #0
	beq _08082918
	ldrh r0, [r2, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2, #6]
	rsbs r0, r3, #0
	strh r0, [r2, #0x3c]
_08082918:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08082944
	ldr r1, [r4, #0x40]
	str r1, [r4, #0x48]
	ldr r2, [r4, #0x44]
	str r2, [r4, #0x4c]
	adds r0, r4, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	adds r0, r4, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r2, r2, r0
	str r2, [r4, #0x44]
_08082944:
	adds r0, r4, #0
	bl sub_0806F8BC
_0808294A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08082950
sub_08082950: @ 0x08082950
	push {r4, r5, r6, r7, lr}
	ldr r0, _0808296C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08082970
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08082978
	.align 2, 0
_0808296C: .4byte gCurTask
_08082970:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08082978:
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	bl sub_0806F780
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0808298A
	b _08082B4A
_0808298A:
	ldr r1, _080829B8 @ =0x00000103
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #9
	bne _0808299E
	adds r0, r5, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	bne _080829C0
_0808299E:
	ldr r2, _080829BC @ =0x0000028E
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _08082B4A
	.align 2, 0
_080829B8: .4byte 0x00000103
_080829BC: .4byte 0x0000028E
_080829C0:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r2, [r0]
	movs r5, #0
	ldrsh r1, [r0, r5]
	adds r6, r0, #0
	cmp r1, #0
	bge _080829DE
	adds r0, r2, #0
	adds r0, #0x10
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080829EC
	b _080829EA
_080829DE:
	adds r0, r2, #0
	subs r0, #0x10
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080829EC
_080829EA:
	strh r3, [r6]
_080829EC:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5a
	ble _08082A2C
	movs r0, #0
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, _08082A24 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08082A28 @ =sub_0808269C
	str r0, [r1, #8]
	adds r0, r4, #0
	bl sub_0806F8BC
	b _08082B4A
	.align 2, 0
_08082A24: .4byte gCurTask
_08082A28: .4byte sub_0808269C
_08082A2C:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08082A3C
	movs r0, #0x5a
	strh r0, [r4, #4]
_08082A3C:
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08082A54
	movs r1, #8
	rsbs r1, r1, #0
	movs r2, #6
	rsbs r2, r2, #0
	adds r0, r4, #0
	bl sub_08096464
_08082A54:
	ldr r0, [r4, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08082AA0
	ldr r0, [r4, #0xc]
	movs r7, #1
	ands r0, r7
	adds r5, r4, #0
	adds r5, #0x52
	cmp r0, #0
	bne _08082A82
	strh r0, [r5]
	strh r0, [r6]
	ldr r2, _08082A98 @ =0x00000296
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r4, #0xc]
	orrs r0, r7
	str r0, [r4, #0xc]
_08082A82:
	ldrh r0, [r5]
	subs r0, #4
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _08082A9C @ =0xFFFFFF00
	cmp r0, r1
	bge _08082AD8
	strh r1, [r5]
	b _08082AD8
	.align 2, 0
_08082A98: .4byte 0x00000296
_08082A9C: .4byte 0xFFFFFF00
_08082AA0:
	ldr r0, [r4, #0xc]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08082AC0
	ldr r2, _08082B50 @ =0x00000296
	adds r0, r4, #0
	movs r1, #0
	movs r3, #1
	bl sub_0808AE30
	ldr r0, [r4, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
_08082AC0:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x1b
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _08082B54 @ =0xFFFFFB00
	adds r5, r1, #0
	cmp r0, r2
	bge _08082AD8
	strh r2, [r5]
_08082AD8:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08082AFC
	ldr r1, [r4, #0x40]
	str r1, [r4, #0x48]
	ldr r2, [r4, #0x44]
	str r2, [r4, #0x4c]
	movs r3, #0
	ldrsh r0, [r6, r3]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	movs r1, #0
	ldrsh r0, [r5, r1]
	subs r2, r2, r0
	str r2, [r4, #0x44]
_08082AFC:
	ldr r2, _08082B58 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r3, [r4, #0x40]
	ldr r0, [r0]
	cmp r3, r0
	bgt _08082B44
	adds r0, r2, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _08082B44
	adds r0, r2, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r3, [r4, #0x44]
	ldr r0, [r0]
	cmp r3, r0
	bgt _08082B44
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _08082B44
	adds r0, r4, #0
	bl sub_0809D8C8
_08082B44:
	adds r0, r4, #0
	bl sub_0806F8BC
_08082B4A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08082B50: .4byte 0x00000296
_08082B54: .4byte 0xFFFFFB00
_08082B58: .4byte gCurLevelInfo

	thumb_func_start sub_08082B5C
sub_08082B5C: @ 0x08082B5C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08082B8C @ =sub_08082CCC
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08082B90 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08082B94
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08082B9C
	.align 2, 0
_08082B8C: .4byte sub_08082CCC
_08082B90: .4byte sub_0803DCCC
_08082B94:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08082B9C:
	adds r4, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r3, r5, #0
	adds r3, #0x56
	ldrb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08082C50 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r6, #1
	adds r0, r6, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	adds r7, r3, #0
	cmp r2, #0
	beq _08082BEE
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_08082BEE:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r1]
	subs r1, #3
	movs r0, #8
	strb r0, [r1]
	ldr r1, [r4, #8]
	ldr r0, _08082C54 @ =0x60000040
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r1, r0
	str r1, [r4, #8]
	ldr r0, _08082C58 @ =0x30007103
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r6
	orrs r1, r0
	str r1, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xd0
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [r4, #0x44]
	ldr r2, _08082C5C @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r4, #0x44]
	ldr r0, [r4, #8]
	ands r0, r6
	cmp r0, #0
	beq _08082C64
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	ldr r1, _08082C60 @ =0xFFFFF000
	adds r0, r0, r1
	b _08082C6C
	.align 2, 0
_08082C50: .4byte gUnk_03000510
_08082C54: .4byte 0x60000040
_08082C58: .4byte 0x30007103
_08082C5C: .4byte 0xFFFFF800
_08082C60: .4byte 0xFFFFF000
_08082C64:
	ldr r0, [r4, #0x40]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
_08082C6C:
	str r0, [r4, #0x40]
	movs r1, #0xa
	rsbs r1, r1, #0
	movs r2, #0x14
	rsbs r2, r2, #0
	movs r0, #0x14
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0803E2B0
	movs r1, #8
	rsbs r1, r1, #0
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	ldrb r2, [r7]
	lsls r2, r2, #0xb
	ldr r0, _08082CC8 @ =0x06010600
	adds r2, r2, r0
	movs r3, #0x92
	lsls r3, r3, #2
	movs r0, #0
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080708DC
	ldrb r0, [r7]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2f
	strb r0, [r1]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08082CC8: .4byte 0x06010600

	thumb_func_start sub_08082CCC
sub_08082CCC: @ 0x08082CCC
	push {r4, lr}
	ldr r0, _08082CE8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08082CEC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08082CF4
	.align 2, 0
_08082CE8: .4byte gCurTask
_08082CEC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08082CF4:
	adds r4, r0, #0
	ldr r1, [r4, #0x70]
	ldr r2, _08082DA8 @ =0x00000103
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0x1a
	bne _08082D0C
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	bne _08082D20
_08082D0C:
	ldr r2, _08082DAC @ =0x0000028E
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r1, r4, #0
	adds r1, #0x60
	ldr r0, _08082DB0 @ =0x0000FFFF
	strh r0, [r1]
_08082D20:
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0x10
	bne _08082D30
	adds r1, r4, #0
	adds r1, #0x60
	ldr r0, _08082DB0 @ =0x0000FFFF
	strh r0, [r1]
_08082D30:
	adds r0, r4, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08082DA2
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0xc
	bne _08082D6A
	adds r0, r4, #0
	adds r0, #0x2a
	movs r1, #1
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x80
	lsls r3, r3, #3
	strh r3, [r2]
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _08082D6A
	rsbs r0, r3, #0
	strh r0, [r2]
_08082D6A:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08082D9C
	ldr r1, [r4, #0x40]
	str r1, [r4, #0x48]
	ldr r2, [r4, #0x44]
	str r2, [r4, #0x4c]
	adds r0, r4, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	adds r0, r4, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r2, r2, r0
	str r2, [r4, #0x44]
_08082D9C:
	adds r0, r4, #0
	bl sub_0806F8BC
_08082DA2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08082DA8: .4byte 0x00000103
_08082DAC: .4byte 0x0000028E
_08082DB0: .4byte 0x0000FFFF

	thumb_func_start sub_08082DB4
sub_08082DB4: @ 0x08082DB4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08082DE4 @ =sub_08082EBC
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08082DE8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08082DF0
	.align 2, 0
_08082DE4: .4byte sub_08082EBC
_08082DE8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08082DF0:
	adds r0, r4, #0
	bl sub_0803E380
	movs r6, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r6, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08082EB4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08082E40
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_08082E40:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x66
	strh r6, [r0]
	subs r1, #1
	movs r0, #0x1d
	strb r0, [r1]
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x16
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _08082EB8 @ =0x00010003
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	subs r1, #4
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _08082E94
	orrs r2, r3
	str r2, [r4, #8]
_08082E94:
	movs r1, #0x78
	rsbs r1, r1, #0
	movs r2, #0x50
	rsbs r2, r2, #0
	movs r0, #0x50
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x78
	bl sub_0803E2B0
	movs r0, #4
	strh r0, [r4, #4]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08082EB4: .4byte gUnk_03000510
_08082EB8: .4byte 0x00010003

	thumb_func_start sub_08082EBC
sub_08082EBC: @ 0x08082EBC
	push {r4, r5, r6, lr}
	ldr r0, _08082ED8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08082EDC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08082EE4
	.align 2, 0
_08082ED8: .4byte gCurTask
_08082EDC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08082EE4:
	adds r4, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08082EF2
	b _08083032
_08082EF2:
	ldr r5, [r4, #0x70]
	ldr r1, _08082F64 @ =0x00000103
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0x18
	bne _08082F7E
	adds r0, r4, #0
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08082F7E
	adds r0, r5, #0
	bl sub_0805BEC4
	adds r3, r0, #0
	cmp r3, #0
	bne _08082F7E
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08082F70
	ldr r2, [r4, #0x6c]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #4
	bne _08082F3C
	strh r3, [r4, #4]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r2, #8]
_08082F3C:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bne _08082F4C
	ldr r0, [r2, #8]
	ldr r1, _08082F68 @ =0xFFFFDFFF
	ands r0, r1
	str r0, [r2, #8]
_08082F4C:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bne _08083032
	ldr r0, [r4, #8]
	ldr r1, _08082F6C @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	b _08082F8E
	.align 2, 0
_08082F64: .4byte 0x00000103
_08082F68: .4byte 0xFFFFDFFF
_08082F6C: .4byte 0xFFFBFFFF
_08082F70:
	ldrb r0, [r4, #1]
	cmp r0, #1
	bls _08082F8A
	adds r1, r5, #0
	adds r1, #0xd8
	movs r0, #1
	strb r0, [r1]
_08082F7E:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _08083032
_08082F8A:
	adds r0, #1
	strb r0, [r4, #1]
_08082F8E:
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #4
	bne _08083032
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	ldr r6, _08082FC0 @ =gCurLevelInfo
	cmp r0, #0
	bne _08083002
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08082FC8
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r6
	ldr r1, _08082FC4 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _08082FCA
	.align 2, 0
_08082FC0: .4byte gCurLevelInfo
_08082FC4: .4byte 0x0000065E
_08082FC8:
	movs r1, #0xff
_08082FCA:
	cmp r1, #0xff
	beq _08083002
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08083038 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0808303C @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08083002:
	adds r3, r5, #0
	adds r3, #0x56
	ldrb r0, [r3]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	adds r1, r6, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldrb r0, [r3]
	muls r0, r2, r0
	adds r1, r6, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r4, #0x44]
_08083032:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08083038: .4byte gUnk_02022EB0
_0808303C: .4byte gUnk_02022F50

	thumb_func_start sub_08083040
sub_08083040: @ 0x08083040
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _08083074 @ =sub_08083150
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08083078
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08083080
	.align 2, 0
_08083074: .4byte sub_08083150
_08083078:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08083080:
	adds r0, r4, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08083144 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080830D0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080830D0:
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0x1d
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	ldr r1, [r4, #0x68]
	ldr r0, _08083148 @ =0x20008003
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [r4, #0x68]
	cmp r6, #1
	bne _08083108
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r1, r0
	str r1, [r4, #0x68]
_08083108:
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _08083116
	ldr r0, [r4, #8]
	orrs r0, r3
	str r0, [r4, #8]
_08083116:
	movs r1, #0x78
	rsbs r1, r1, #0
	movs r2, #0x50
	rsbs r2, r2, #0
	movs r0, #0x50
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x78
	bl sub_0803E2B0
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _0808314C @ =gUnk_08350E04
	adds r0, r4, #0
	bl sub_080860A8
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08083144: .4byte gUnk_03000510
_08083148: .4byte 0x20008003
_0808314C: .4byte gUnk_08350E04

	thumb_func_start sub_08083150
sub_08083150: @ 0x08083150
	push {r4, r5, lr}
	ldr r0, _0808316C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08083170
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08083178
	.align 2, 0
_0808316C: .4byte gCurTask
_08083170:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08083178:
	adds r4, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808323E
	ldrh r1, [r4, #4]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #4
	ble _0808319A
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _0808323E
_0808319A:
	adds r0, r1, #1
	strh r0, [r4, #4]
	ldr r1, [r4, #8]
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	movs r0, #0x56
	adds r0, r0, r4
	mov ip, r0
	ldr r5, _080831CC @ =gCurLevelInfo
	cmp r1, #0
	bne _0808320E
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080831D4
	mov r2, ip
	ldrb r1, [r2]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r5
	ldr r1, _080831D0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080831D6
	.align 2, 0
_080831CC: .4byte gCurLevelInfo
_080831D0: .4byte 0x0000065E
_080831D4:
	movs r1, #0xff
_080831D6:
	cmp r1, #0xff
	beq _0808320E
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08083244 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08083248 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0808320E:
	mov r1, ip
	ldrb r0, [r1]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r4, #0x40]
	mov r1, ip
	ldrb r0, [r1]
	muls r0, r2, r0
	adds r1, r5, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r4, #0x44]
_0808323E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08083244: .4byte gUnk_02022EB0
_08083248: .4byte gUnk_02022F50

	thumb_func_start sub_0808324C
sub_0808324C: @ 0x0808324C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	adds r0, #0x60
	ldrh r1, [r0]
	ldr r0, _080832B8 @ =0x00000383
	cmp r1, r0
	bhi _080832A2
	subs r0, #0x62
	cmp r1, r0
	beq _080832A2
	ldr r0, _080832BC @ =gUnk_0835105C
	ldrh r2, [r0, #2]
	cmp r1, r2
	beq _080832A2
	ldrh r2, [r0, #4]
	cmp r1, r2
	beq _080832A2
	ldrh r2, [r0, #6]
	cmp r1, r2
	beq _080832A2
	ldrh r2, [r0, #8]
	cmp r1, r2
	beq _080832A2
	ldrh r2, [r0, #0xa]
	cmp r1, r2
	beq _080832A2
	ldrh r2, [r0, #0xc]
	cmp r1, r2
	beq _080832A2
	ldrh r2, [r0, #0xe]
	cmp r1, r2
	beq _080832A2
	ldrh r0, [r0, #0x10]
	cmp r1, r0
	bne _080832C0
_080832A2:
	adds r0, r5, #0
	adds r0, #0xe4
	ldrb r0, [r0]
	cmp r0, #0x64
	beq _080832AE
	b _08083472
_080832AE:
	adds r1, r5, #0
	adds r1, #0xe5
	movs r0, #0
	strb r0, [r1]
	b _08083472
	.align 2, 0
_080832B8: .4byte 0x00000383
_080832BC: .4byte gUnk_0835105C
_080832C0:
	ldr r1, [r5, #0xc]
	movs r2, #0x40
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _080832CE
	b _08083472
_080832CE:
	orrs r1, r2
	str r1, [r5, #0xc]
	ldr r0, _080832FC @ =sub_08083494
	ldr r2, _08083300 @ =0x000038E8
	ldr r1, _08083304 @ =sub_0808382C
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0xc
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08083308
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08083310
	.align 2, 0
_080832FC: .4byte sub_08083494
_08083300: .4byte 0x000038E8
_08083304: .4byte sub_0808382C
_08083308:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08083310:
	adds r4, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r3, r5, #0
	adds r3, #0x56
	ldrb r0, [r3]
	adds r6, r4, #0
	adds r6, #0x56
	strb r0, [r6]
	ldr r0, _08083408 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r7, #1
	adds r0, r7, #0
	ldrb r1, [r6]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	mov sb, r3
	cmp r2, #0
	beq _08083362
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_08083362:
	adds r0, r4, #0
	adds r0, #0x64
	movs r2, #0x80
	lsls r2, r2, #2
	mov r8, r2
	mov r1, r8
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x66
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x63
	movs r3, #7
	strb r3, [r0]
	ldr r2, [r4, #8]
	ldr r0, _0808340C @ =0x20100000
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _08083410 @ =0x20000043
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r7
	cmp r0, #0
	beq _080833AA
	orrs r2, r7
	str r2, [r4, #8]
_080833AA:
	ldr r0, [r5, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	str r0, [r5, #0x5c]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	mov r2, sl
	strh r2, [r4, #4]
	movs r1, #7
	rsbs r1, r1, #0
	movs r2, #9
	rsbs r2, r2, #0
	str r3, [sp]
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803E2B0
	ldr r0, [r5, #8]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _08083456
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08083456
	ldrb r0, [r6]
	cmp r0, #0xff
	beq _0808341C
	ldr r2, _08083414 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _08083418 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _0808341E
	.align 2, 0
_08083408: .4byte gUnk_03000510
_0808340C: .4byte 0x20100000
_08083410: .4byte 0x20000043
_08083414: .4byte gCurLevelInfo
_08083418: .4byte 0x0000065E
_0808341C:
	movs r1, #0xff
_0808341E:
	cmp r1, #0xff
	beq _08083456
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08083484 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08083488 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08083456:
	ldr r1, _0808348C @ =gUnk_0203AD3C
	mov r2, sb
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08083472
	movs r0, #0x26
	bl m4aSongNumStart
	ldr r0, _08083490 @ =gUnk_0203AD20
	ldr r1, [r0]
	movs r2, #4
	orrs r1, r2
	str r1, [r0]
_08083472:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08083484: .4byte gUnk_02022EB0
_08083488: .4byte gUnk_02022F50
_0808348C: .4byte gUnk_0203AD3C
_08083490: .4byte gUnk_0203AD20

	thumb_func_start sub_08083494
sub_08083494: @ 0x08083494
	push {r4, r5, r6, lr}
	sub sp, #0x28
	ldr r0, _080834B4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080834B8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080834C0
	.align 2, 0
_080834B4: .4byte gCurTask
_080834B8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080834C0:
	adds r5, r0, #0
	ldr r4, [r5, #0x70]
	ldr r2, [r5, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r5, #8]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	orrs r2, r0
	str r2, [r5, #8]
	adds r6, r4, #0
	adds r6, #0x60
	ldrh r1, [r6]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x44]
	ldr r0, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08083508
	b _0808381A
_08083508:
	ldrh r1, [r6]
	ldr r0, _08083584 @ =0x00000383
	cmp r1, r0
	bhi _08083548
	subs r0, #0x62
	cmp r1, r0
	beq _08083548
	ldr r0, _08083588 @ =gUnk_0835105C
	ldrh r2, [r0, #2]
	cmp r1, r2
	beq _08083548
	ldrh r2, [r0, #4]
	cmp r1, r2
	beq _08083548
	ldrh r2, [r0, #6]
	cmp r1, r2
	beq _08083548
	ldrh r2, [r0, #8]
	cmp r1, r2
	beq _08083548
	ldrh r2, [r0, #0xa]
	cmp r1, r2
	beq _08083548
	ldrh r2, [r0, #0xc]
	cmp r1, r2
	beq _08083548
	ldrh r2, [r0, #0xe]
	cmp r1, r2
	beq _08083548
	ldrh r0, [r0, #0x10]
	cmp r1, r0
	bne _0808355E
_08083548:
	movs r0, #0
	strh r0, [r5, #4]
	adds r0, r4, #0
	adds r0, #0xe4
	ldrb r0, [r0]
	cmp r0, #0x64
	bne _0808355E
	adds r1, r4, #0
	adds r1, #0xe5
	movs r0, #0
	strb r0, [r1]
_0808355E:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _08083590
	ldr r2, _0808358C @ =gUnk_0203AD20
	ldr r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08083654
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2]
	b _08083654
	.align 2, 0
_08083584: .4byte 0x00000383
_08083588: .4byte gUnk_0835105C
_0808358C: .4byte gUnk_0203AD20
_08083590:
	ldr r0, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r0, #0x80
	str r0, [r4, #0x68]
	ldrh r6, [r5, #4]
	movs r2, #4
	ldrsh r3, [r5, r2]
	cmp r3, #0
	bne _08083670
	ldr r0, _080835F4 @ =gUnk_03002440
	ldr r0, [r0]
	ldr r1, _080835F8 @ =0x00800800
	ands r0, r1
	cmp r0, #0
	beq _0808360C
	ldr r2, _080835FC @ =gUnk_0203AD20
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	adds r3, r4, #0
	adds r3, #0x56
	ldr r1, _08083600 @ =gUnk_0203AD3C
	ldrb r0, [r3]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080835D4
	b _0808381A
_080835D4:
	ldr r2, _08083604 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _08083608 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
	b _0808381A
	.align 2, 0
_080835F4: .4byte gUnk_03002440
_080835F8: .4byte 0x00800800
_080835FC: .4byte gUnk_0203AD20
_08083600: .4byte gUnk_0203AD3C
_08083604: .4byte gCurLevelInfo
_08083608: .4byte 0x0000065E
_0808360C:
	adds r3, r4, #0
	adds r3, #0x56
	ldr r0, _08083660 @ =gUnk_0203AD3C
	ldrb r6, [r3]
	ldrb r0, [r0]
	cmp r6, r0
	bne _0808364A
	ldr r2, _08083664 @ =gUnk_0203AD20
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldrb r0, [r3]
	cmp r0, r6
	bne _0808364A
	ldr r2, _08083668 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _0808366C @ =0x0000065E
	adds r0, r0, r2
	ldrb r0, [r0]
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_0808364A:
	ldr r0, [r4, #0xc]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
_08083654:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	b _0808381A
	.align 2, 0
_08083660: .4byte gUnk_0203AD3C
_08083664: .4byte gUnk_0203AD20
_08083668: .4byte gCurLevelInfo
_0808366C: .4byte 0x0000065E
_08083670:
	ldr r0, _080836B4 @ =gUnk_03002440
	ldr r1, [r0]
	ldr r2, _080836B8 @ =0x00800800
	ands r1, r2
	adds r2, r0, #0
	cmp r1, #0
	beq _08083682
	cmp r3, #0x47
	bgt _08083686
_08083682:
	subs r0, r6, #1
	strh r0, [r5, #4]
_08083686:
	ldr r0, [r2]
	ldr r1, _080836B8 @ =0x00800800
	ands r0, r1
	cmp r0, #0
	beq _08083692
	b _0808381A
_08083692:
	ldrh r0, [r5, #4]
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	bne _080836BC
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0808374C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_0803E868
	b _0808374C
	.align 2, 0
_080836B4: .4byte gUnk_03002440
_080836B8: .4byte 0x00800800
_080836BC:
	cmp r1, #2
	bne _08083732
	ldr r3, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r3, r0
	cmp r3, #0
	bne _0808374C
	ldr r1, _080836E4 @ =0x00000103
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _080836E8
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r1, sp
	movs r0, #0xd0
	lsls r0, r0, #1
	b _080836F2
	.align 2, 0
_080836E4: .4byte 0x00000103
_080836E8:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r1, sp
	movs r0, #0x15
_080836F2:
	strh r0, [r1, #0xc]
	mov r0, sp
	movs r2, #0xf
	strb r2, [r0, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r3, [r0, #0x10]
	strh r3, [r0, #0x12]
	strh r3, [r0, #0x14]
	strh r3, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	ands r2, r0
	strb r2, [r1, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	b _0808374C
_08083732:
	cmp r1, #6
	bne _0808374C
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0808374C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_0803E558
_0808374C:
	adds r0, r4, #0
	adds r0, #0xe4
	ldrb r0, [r0]
	cmp r0, #0x64
	bne _08083766
	ldrh r1, [r5, #4]
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0xb4
	ble _08083766
	adds r0, r4, #0
	adds r0, #0xe2
	strh r1, [r0]
_08083766:
	ldrh r1, [r5, #4]
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0x78
	ble _08083780
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0808379A
	adds r0, r5, #0
	bl sub_0808925C
	b _0808379A
_08083780:
	cmp r0, #0x48
	bne _0808379A
	adds r0, r4, #0
	adds r0, #0x56
	ldr r1, _080837D0 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0808379A
	ldr r0, _080837D4 @ =gUnk_030016A0
	movs r1, #4
	bl m4aMPlayFadeOut
_0808379A:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0808381A
	ldr r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _0808381A
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080837E0
	ldr r2, _080837D8 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080837DC @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080837E2
	.align 2, 0
_080837D0: .4byte gUnk_0203AD3C
_080837D4: .4byte gUnk_030016A0
_080837D8: .4byte gCurLevelInfo
_080837DC: .4byte 0x0000065E
_080837E0:
	movs r1, #0xff
_080837E2:
	cmp r1, #0xff
	beq _0808381A
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08083824 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08083828 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0808381A:
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08083824: .4byte gUnk_02022EB0
_08083828: .4byte gUnk_02022F50

	thumb_func_start sub_0808382C
sub_0808382C: @ 0x0808382C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r1, [r5, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08083846
	ldrh r0, [r5, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808384E
_08083846:
	ldrh r1, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808384E:
	ldr r4, [r0, #0x70]
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08083866
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_0803E558
_08083866:
	ldr r0, [r4, #0xc]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x5c]
	adds r1, #0x39
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r0, #0x82
	str r0, [r4, #0x68]
	adds r3, r4, #0
	adds r3, #0x56
	ldr r1, _080838CC @ =gUnk_0203AD3C
	ldrb r0, [r3]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080838C0
	ldr r2, _080838D0 @ =gUnk_0203AD20
	ldr r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080838C0
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2]
	ldr r2, _080838D4 @ =gCurLevelInfo
	ldrb r1, [r3]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080838D8 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080838C0:
	adds r0, r5, #0
	bl sub_0803DCCC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080838CC: .4byte gUnk_0203AD3C
_080838D0: .4byte gUnk_0203AD20
_080838D4: .4byte gCurLevelInfo
_080838D8: .4byte 0x0000065E

	thumb_func_start sub_080838DC
sub_080838DC: @ 0x080838DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	mov sb, r1
	ldr r0, _08083918 @ =sub_08083B04
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808391C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _08083924
	.align 2, 0
_08083918: .4byte sub_08083B04
_0808391C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_08083924:
	adds r0, r5, #0
	bl sub_0803E380
	movs r3, #2
	strb r3, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x44]
	str r4, [r5, #0x70]
	movs r0, #0
	strh r0, [r5, #4]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	movs r1, #0x60
	adds r1, r1, r5
	mov sl, r1
	strh r0, [r1]
	adds r4, #0x56
	mov r8, r4
	ldrb r0, [r4]
	adds r7, r5, #0
	adds r7, #0x56
	strb r0, [r7]
	ldr r0, _08083AD0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r4, [r7]
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08083974
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_08083974:
	adds r1, r5, #0
	adds r1, #0x63
	movs r0, #4
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x66
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	ldr r2, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0x16
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	ldr r0, [r5, #0x68]
	ldr r1, _08083AD4 @ =0x30002003
	orrs r0, r1
	movs r4, #8
	orrs r0, r4
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r3
	str r0, [r5, #0x68]
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r2, r0
	str r2, [r5, #8]
	subs r1, #0x20
	movs r2, #0x50
	rsbs r2, r2, #0
	movs r0, #0x50
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0803E2B0
	adds r1, r5, #0
	adds r1, #0x10
	mov r6, sb
	adds r6, #0x56
	ldrb r2, [r6]
	lsls r2, r2, #0xb
	ldr r3, _08083AD8 @ =0x06010400
	adds r2, r2, r3
	ldr r3, _08083ADC @ =0x00000209
	movs r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r5, #0
	bl sub_080708DC
	ldrb r0, [r6]
	adds r0, #4
	adds r1, r5, #0
	adds r1, #0x2f
	strb r0, [r1]
	mov r1, sb
	str r1, [r5, #0x74]
	ldr r2, _08083AE0 @ =gCurLevelInfo
	ldrb r0, [r7]
	movs r3, #0xcd
	lsls r3, r3, #3
	muls r0, r3, r0
	adds r1, r2, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r1, [r0]
	movs r4, #0xf0
	lsls r4, r4, #7
	adds r0, r1, r4
	str r0, [r5, #0x40]
	ldrb r0, [r7]
	muls r0, r3, r0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, _08083AE4 @ =0xFFFFD400
	adds r1, r1, r2
	str r1, [r5, #0x40]
	movs r3, #0xa0
	lsls r3, r3, #8
	adds r0, r0, r3
	str r0, [r5, #0x44]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #0xf4
	lsls r0, r0, #2
	strh r0, [r1]
	subs r1, #2
	movs r0, #0xfa
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r4, _08083AE8 @ =gUnk_0203AD3C
	ldrb r0, [r4]
	mov r1, r8
	ldrb r1, [r1]
	cmp r0, r1
	bne _08083ABE
	ldr r1, _08083AEC @ =gUnk_08350E1C
	adds r0, r5, #0
	bl sub_080860A8
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	ldr r1, _08083AF0 @ =gKirbys
	ldrb r2, [r4]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	mov r3, sl
	ldrh r3, [r3]
	cmp r0, r3
	bne _08083ABE
	ldrb r0, [r5]
	cmp r0, #0
	bne _08083A80
	ldrb r0, [r7]
	cmp r0, r2
	bne _08083ABE
_08083A80:
	ldr r1, _08083AF4 @ =gUnk_08D60FA4
	ldr r4, _08083AF8 @ =gSongTable
	ldr r2, _08083AFC @ =0x000006C4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08083AA6
	movs r1, #0xd8
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08083ABE
_08083AA6:
	cmp r3, #0
	beq _08083AB8
	ldr r0, _08083B00 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	ands r0, r2
	cmp r0, #0
	bne _08083ABE
_08083AB8:
	movs r0, #0xd8
	bl m4aSongNumStart
_08083ABE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08083AD0: .4byte gUnk_03000510
_08083AD4: .4byte 0x30002003
_08083AD8: .4byte 0x06010400
_08083ADC: .4byte 0x00000209
_08083AE0: .4byte gCurLevelInfo
_08083AE4: .4byte 0xFFFFD400
_08083AE8: .4byte gUnk_0203AD3C
_08083AEC: .4byte gUnk_08350E1C
_08083AF0: .4byte gKirbys
_08083AF4: .4byte gUnk_08D60FA4
_08083AF8: .4byte gSongTable
_08083AFC: .4byte 0x000006C4
_08083B00: .4byte gUnk_0203AD10

	thumb_func_start sub_08083B04
sub_08083B04: @ 0x08083B04
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08083B28 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08083B2C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08083B34
	.align 2, 0
_08083B28: .4byte gCurTask
_08083B2C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08083B34:
	adds r5, r0, #0
	ldr r2, [r5, #0x74]
	ldr r0, [r5, #0x70]
	mov r8, r0
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r0, #4
	adds r1, r5, #0
	adds r1, #0x2f
	strb r0, [r1]
	ldr r1, _08083BDC @ =0x00000103
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x15
	beq _08083B68
	ldr r2, _08083BE0 @ =0x0000028E
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r1, r5, #0
	adds r1, #0x60
	ldr r0, _08083BE4 @ =0x0000FFFF
	strh r0, [r1]
_08083B68:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08083B78
	b _08083FB2
_08083B78:
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0x26
	bne _08083BF4
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ldr r2, _08083BE8 @ =gCurLevelInfo
	adds r4, r5, #0
	adds r4, #0x56
	ldrb r0, [r4]
	movs r3, #0xcd
	lsls r3, r3, #3
	muls r0, r3, r0
	adds r1, r2, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r1, [r0]
	movs r6, #0xf0
	lsls r6, r6, #7
	adds r0, r1, r6
	str r0, [r5, #0x40]
	ldrb r0, [r4]
	muls r0, r3, r0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	movs r7, #0x8e
	lsls r7, r7, #9
	adds r1, r1, r7
	str r1, [r5, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r5, #0x44]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #0xf4
	lsls r0, r0, #2
	strh r0, [r1]
	subs r1, #2
	ldr r0, _08083BEC @ =0x0000F830
	strh r0, [r1]
	ldr r0, [r5, #8]
	ldr r1, _08083BF0 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r5, #8]
	b _08083C6A
	.align 2, 0
_08083BDC: .4byte 0x00000103
_08083BE0: .4byte 0x0000028E
_08083BE4: .4byte 0x0000FFFF
_08083BE8: .4byte gCurLevelInfo
_08083BEC: .4byte 0x0000F830
_08083BF0: .4byte 0xFFFBFFFF
_08083BF4:
	cmp r0, #0x5a
	beq _08083BFA
	b _08083D1C
_08083BFA:
	adds r1, r5, #0
	adds r1, #0x2a
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	ldr r2, _08083CF0 @ =gCurLevelInfo
	adds r4, r5, #0
	adds r4, #0x56
	ldrb r0, [r4]
	movs r3, #0xcd
	lsls r3, r3, #3
	muls r0, r3, r0
	adds r1, r2, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r1, [r0]
	movs r7, #0xf0
	lsls r7, r7, #7
	adds r0, r1, r7
	str r0, [r5, #0x40]
	ldrb r0, [r4]
	muls r0, r3, r0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r5, #0x44]
	ldr r7, _08083CF4 @ =0xFFFFD400
	adds r1, r1, r7
	str r1, [r5, #0x40]
	adds r0, r5, #0
	adds r0, #0x52
	strh r6, [r0]
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [r5, #8]
	ldr r1, _08083CF8 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0x68]
	ldr r1, _08083CFC @ =0x30002003
	orrs r0, r1
	str r0, [r5, #0x68]
	adds r1, r5, #0
	adds r1, #0x63
	movs r0, #0x16
	strb r0, [r1]
_08083C6A:
	ldr r6, _08083D00 @ =gUnk_0203AD3C
	mov r1, r8
	adds r1, #0x56
	ldrb r0, [r6]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08083D2C
	ldr r1, _08083D04 @ =gUnk_08350E1C
	adds r0, r5, #0
	bl sub_080860A8
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	ldr r1, _08083D08 @ =gKirbys
	ldrb r2, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08083D2C
	ldrb r0, [r5]
	cmp r0, #0
	bne _08083CAE
	ldrb r0, [r4]
	cmp r0, r2
	bne _08083D2C
_08083CAE:
	ldr r1, _08083D0C @ =gUnk_08D60FA4
	ldr r4, _08083D10 @ =gSongTable
	ldr r2, _08083D14 @ =0x000006C4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08083CD4
	movs r6, #0xd8
	lsls r6, r6, #3
	adds r0, r4, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08083D2C
_08083CD4:
	cmp r3, #0
	beq _08083CE6
	ldr r0, _08083D18 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08083D2C
_08083CE6:
	movs r0, #0xd8
	bl m4aSongNumStart
	b _08083D2C
	.align 2, 0
_08083CF0: .4byte gCurLevelInfo
_08083CF4: .4byte 0xFFFFD400
_08083CF8: .4byte 0xFFFBFFFF
_08083CFC: .4byte 0x30002003
_08083D00: .4byte gUnk_0203AD3C
_08083D04: .4byte gUnk_08350E1C
_08083D08: .4byte gKirbys
_08083D0C: .4byte gUnk_08D60FA4
_08083D10: .4byte gSongTable
_08083D14: .4byte 0x000006C4
_08083D18: .4byte gUnk_0203AD10
_08083D1C:
	cmp r0, #0x8c
	bne _08083D2C
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	b _08083FB2
_08083D2C:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	movs r1, #0x28
	rsbs r1, r1, #0
	ldr r7, _08083DB4 @ =gCurLevelInfo
	mov sb, r7
	adds r4, r5, #0
	adds r4, #0x56
	ldrb r0, [r4]
	movs r6, #0xcd
	lsls r6, r6, #3
	muls r0, r6, r0
	mov r2, sb
	adds r2, #0x10
	adds r0, r0, r2
	ldr r3, [r5, #0x44]
	ldr r0, [r0]
	subs r2, r3, r0
	asrs r2, r2, #8
	rsbs r2, r2, #0
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	ldr r7, _08083DB8 @ =0xFFFF6000
	adds r3, r3, r7
	subs r0, r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0803E2B0
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08083D96
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	adds r0, r5, #0
	adds r0, #0x52
	movs r7, #0
	ldrsh r1, [r0, r7]
	ldr r0, [r5, #0x44]
	subs r0, r0, r1
	str r0, [r5, #0x44]
_08083D96:
	ldr r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08083DFA
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _08083DC0
	muls r0, r6, r0
	add r0, sb
	ldr r1, _08083DBC @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _08083DC2
	.align 2, 0
_08083DB4: .4byte gCurLevelInfo
_08083DB8: .4byte 0xFFFF6000
_08083DBC: .4byte 0x0000065E
_08083DC0:
	movs r1, #0xff
_08083DC2:
	cmp r1, #0xff
	beq _08083DFA
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08083E3C @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08083E40 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08083DFA:
	ldr r0, _08083E44 @ =gUnk_0203AD3C
	mov r1, r8
	adds r1, #0x56
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08083E0A
	b _08083FB2
_08083E0A:
	ldrh r1, [r5, #4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08083E22
	ldr r0, _08083E48 @ =gUnk_0203AD40
	ldr r1, [r0]
	movs r0, #7
	ands r1, r0
	adds r0, r5, #0
	bl sub_08097864
_08083E22:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08083E4C
	adds r0, r5, #0
	adds r0, #0x10
	ldr r1, [r5, #0x18]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _08083E56
	.align 2, 0
_08083E3C: .4byte gUnk_02022EB0
_08083E40: .4byte gUnk_02022F50
_08083E44: .4byte gUnk_0203AD3C
_08083E48: .4byte gUnk_0203AD40
_08083E4C:
	adds r0, r5, #0
	adds r0, #0x10
	ldr r1, [r5, #0x18]
	ldr r2, _08083EDC @ =0xFFFFFBFF
	ands r1, r2
_08083E56:
	str r1, [r0, #8]
	mov sb, r0
	ldr r3, [r5, #8]
	movs r4, #8
	ands r4, r3
	movs r6, #0x2c
	adds r6, r6, r5
	mov r8, r6
	cmp r4, #0
	bne _08083EF8
	adds r0, r5, #0
	adds r0, #0x2b
	adds r2, r5, #0
	adds r2, #0x2a
	ldrb r1, [r0]
	adds r6, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _08083E84
	ldrh r0, [r5, #0x28]
	ldrh r7, [r5, #0x1c]
	cmp r0, r7
	beq _08083E9C
_08083E84:
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _08083E9C
	strb r4, [r5, #1]
	strh r4, [r5, #2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r5, #8]
_08083E9C:
	mov r0, sb
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08083EE0
	ldr r0, [r5, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #8]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08083EF8
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08083EF8
	movs r0, #0xff
	strb r0, [r6]
	ldr r0, [r5, #8]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	strb r2, [r5, #1]
	strh r2, [r5, #2]
	mov r0, sb
	bl sub_08155128
	b _08083EF8
	.align 2, 0
_08083EDC: .4byte 0xFFFFFBFF
_08083EE0:
	mov r2, r8
	ldrb r1, [r2]
	ldrh r0, [r5, #2]
	adds r0, r0, r1
	strh r0, [r5, #2]
	lsrs r0, r0, #4
	strb r0, [r5, #1]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
_08083EF8:
	ldr r2, [r5, #0x40]
	asrs r2, r2, #8
	ldr r3, _08083F9C @ =gCurLevelInfo
	ldr r7, _08083FA0 @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r6, r5, #0
	adds r6, #0x54
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r0, r0, r2
	movs r1, #0
	mov ip, r1
	strh r0, [r5, #0x20]
	ldr r1, [r5, #0x44]
	asrs r1, r1, #8
	ldrb r0, [r7]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r2, r5, #0
	adds r2, #0x55
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	strh r0, [r5, #0x22]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08083F50
	mov r0, ip
	strb r0, [r6]
	strb r0, [r2]
_08083F50:
	ldr r3, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _08083FB2
	ldr r2, _08083FA4 @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08083FB2
	ldr r1, _08083FA8 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r5, #0x20]
	adds r0, r0, r2
	strh r0, [r5, #0x20]
	ldrh r0, [r1, #2]
	ldrh r6, [r5, #0x22]
	adds r0, r0, r6
	strh r0, [r5, #0x22]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _08083FAC
	mov r0, sb
	bl sub_081564D8
	b _08083FB2
	.align 2, 0
_08083F9C: .4byte gCurLevelInfo
_08083FA0: .4byte gUnk_0203AD3C
_08083FA4: .4byte gKirbys
_08083FA8: .4byte gUnk_0203AD18
_08083FAC:
	mov r0, sb
	bl sub_0815604C
_08083FB2:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08083FC0
sub_08083FC0: @ 0x08083FC0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08083FF0 @ =sub_080840B8
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08083FF4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08083FF8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _08084000
	.align 2, 0
_08083FF0: .4byte sub_080840B8
_08083FF4: .4byte sub_0803DCCC
_08083FF8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_08084000:
	adds r0, r6, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r6]
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r6, #0x44]
	str r4, [r6, #0x70]
	strh r1, [r6, #4]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080840B0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08084050
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r6, #8]
_08084050:
	ldr r0, [r6, #8]
	movs r1, #0xa0
	lsls r1, r1, #0x18
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r6, #0x68]
	ldr r1, _080840B4 @ =0x20001843
	orrs r0, r1
	str r0, [r6, #0x68]
	adds r1, r6, #0
	adds r1, #0x63
	movs r0, #0x1c
	strb r0, [r1]
	ldr r0, [r4, #8]
	ands r0, r3
	cmp r0, #0
	beq _08084084
	ldr r0, [r6, #8]
	orrs r0, r3
	str r0, [r6, #8]
_08084084:
	movs r4, #0xc
	rsbs r4, r4, #0
	movs r5, #0xc
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0xc
	bl sub_0803E2B0
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0xc
	bl sub_0803E308
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080840B0: .4byte gUnk_03000510
_080840B4: .4byte 0x20001843

	thumb_func_start sub_080840B8
sub_080840B8: @ 0x080840B8
	push {r4, r5, lr}
	ldr r0, _080840D4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080840D8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080840E0
	.align 2, 0
_080840D4: .4byte gCurTask
_080840D8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080840E0:
	adds r4, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808417A
	ldr r5, [r4, #0x70]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08084106
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _0808417A
_08084106:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08084172
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08084138
	ldr r2, _08084130 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _08084134 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _0808413A
	.align 2, 0
_08084130: .4byte gCurLevelInfo
_08084134: .4byte 0x0000065E
_08084138:
	movs r1, #0xff
_0808413A:
	cmp r1, #0xff
	beq _08084172
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08084180 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08084184 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08084172:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
_0808417A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08084180: .4byte gUnk_02022EB0
_08084184: .4byte gUnk_02022F50

	thumb_func_start sub_08084188
sub_08084188: @ 0x08084188
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080841B8 @ =sub_08084280
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080841BC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080841C0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080841C8
	.align 2, 0
_080841B8: .4byte sub_08084280
_080841BC: .4byte sub_0803DCCC
_080841C0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080841C8:
	adds r0, r4, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08084274 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08084218
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_08084218:
	ldr r0, [r4, #8]
	movs r1, #0xc0
	lsls r1, r1, #0x17
	orrs r0, r1
	ldr r1, _08084278 @ =0x00400400
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _0808427C @ =0x20000043
	orrs r0, r1
	str r0, [r4, #0x68]
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #2
	subs r0, #0x20
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _08084258
	ldr r0, [r4, #8]
	orrs r0, r3
	str r0, [r4, #8]
_08084258:
	movs r2, #0xd
	rsbs r2, r2, #0
	movs r0, #0xd
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xa
	movs r3, #0x26
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08084274: .4byte gUnk_03000510
_08084278: .4byte 0x00400400
_0808427C: .4byte 0x20000043

	thumb_func_start sub_08084280
sub_08084280: @ 0x08084280
	push {r4, lr}
	ldr r0, _0808429C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080842A0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080842A8
	.align 2, 0
_0808429C: .4byte gCurTask
_080842A0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080842A8:
	adds r4, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08084388
	ldr r0, [r4, #0x70]
	mov ip, r0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x68
	beq _080842CC
	cmp r0, #0x45
	beq _080842CC
	cmp r0, #0x69
	beq _080842CC
	cmp r0, #0x46
	bne _080842D6
_080842CC:
	ldr r0, _080842E4 @ =0x00000103
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #5
	beq _080842E8
_080842D6:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _08084388
	.align 2, 0
_080842E4: .4byte 0x00000103
_080842E8:
	mov r1, ip
	ldr r2, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r2, r0
	cmp r2, #0
	bne _0808430E
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _0808430E
	ldr r0, [r4, #8]
	ldr r1, _08084338 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	strh r2, [r4, #4]
_0808430E:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _0808437E
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08084344
	ldr r2, _0808433C @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _08084340 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _08084346
	.align 2, 0
_08084338: .4byte 0xFFFBFFFF
_0808433C: .4byte gCurLevelInfo
_08084340: .4byte 0x0000065E
_08084344:
	movs r1, #0xff
_08084346:
	cmp r1, #0xff
	beq _0808437E
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08084390 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08084394 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0808437E:
	mov r1, ip
	ldr r0, [r1, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r4, #0x44]
_08084388:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08084390: .4byte gUnk_02022EB0
_08084394: .4byte gUnk_02022F50

	thumb_func_start sub_08084398
sub_08084398: @ 0x08084398
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080843C8 @ =sub_08084524
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080843CC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080843D4
	.align 2, 0
_080843C8: .4byte sub_08084524
_080843CC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080843D4:
	adds r4, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r6, r4, #0
	adds r6, #0x56
	strb r0, [r6]
	ldr r0, _080844C0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r6]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08084424
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_08084424:
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0x80
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080844C4 @ =0x0000FE40
	strh r0, [r1]
	subs r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #0x18
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _080844C8 @ =0x30007103
	orrs r0, r1
	movs r7, #8
	rsbs r7, r7, #0
	ands r0, r7
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _0808446C
	orrs r2, r3
	str r2, [r4, #8]
_0808446C:
	ldr r2, _080844CC @ =0x00000103
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0x1a
	bne _08084498
	movs r1, #0xa
	rsbs r1, r1, #0
	movs r0, #0x28
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #2
	movs r3, #0xc
	bl sub_0803E2B0
	movs r0, #0x24
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #2
	movs r3, #0xa
	bl sub_0803E308
_08084498:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08084512
	ldrb r0, [r6]
	cmp r0, #0xff
	beq _080844D8
	ldr r2, _080844D0 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080844D4 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080844DA
	.align 2, 0
_080844C0: .4byte gUnk_03000510
_080844C4: .4byte 0x0000FE40
_080844C8: .4byte 0x30007103
_080844CC: .4byte 0x00000103
_080844D0: .4byte gCurLevelInfo
_080844D4: .4byte 0x0000065E
_080844D8:
	movs r1, #0xff
_080844DA:
	cmp r1, #0xff
	beq _08084512
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _0808451C @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08084520 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08084512:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808451C: .4byte gUnk_02022EB0
_08084520: .4byte gUnk_02022F50

	thumb_func_start sub_08084524
sub_08084524: @ 0x08084524
	push {r4, lr}
	ldr r0, _08084540 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08084544
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808454C
	.align 2, 0
_08084540: .4byte gCurTask
_08084544:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808454C:
	adds r4, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808455A
	b _08084666
_0808455A:
	ldr r0, [r4, #0x70]
	mov ip, r0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x67
	beq _08084570
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	b _08084664
_08084570:
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _080845CC
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r1, r0
	cmp r1, #0
	bne _080845B2
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _080845B2
	ldr r0, _080845C8 @ =0xFFFBFFFF
	ands r2, r0
	str r2, [r4, #8]
	strh r1, [r4, #4]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1]
_080845B2:
	ldrb r0, [r4, #1]
	cmp r0, #2
	bls _080845CC
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _08084666
	.align 2, 0
_080845C8: .4byte 0xFFFBFFFF
_080845CC:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _0808463A
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08084600
	ldr r2, _080845F8 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080845FC @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _08084602
	.align 2, 0
_080845F8: .4byte gCurLevelInfo
_080845FC: .4byte 0x0000065E
_08084600:
	movs r1, #0xff
_08084602:
	cmp r1, #0xff
	beq _0808463A
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08084654 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08084658 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0808463A:
	mov r1, ip
	ldr r0, [r1, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r4, #0x44]
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808465C
	ldr r0, [r4, #8]
	orrs r0, r1
	b _08084664
	.align 2, 0
_08084654: .4byte gUnk_02022EB0
_08084658: .4byte gUnk_02022F50
_0808465C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08084664:
	str r0, [r4, #8]
_08084666:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0808466C
sub_0808466C: @ 0x0808466C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, _080846A4 @ =sub_080848C4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080846A8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080846AC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080846B4
	.align 2, 0
_080846A4: .4byte sub_080848C4
_080846A8: .4byte sub_0803DCCC
_080846AC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080846B4:
	adds r6, r0, #0
	bl sub_0803E380
	movs r0, #0
	mov sb, r0
	movs r1, #2
	mov r8, r1
	mov r2, r8
	strb r2, [r6]
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r6, #0x44]
	str r7, [r6, #0x70]
	mov r3, sb
	strh r3, [r6, #4]
	movs r0, #0x60
	adds r0, r0, r7
	mov sl, r0
	ldrh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r1, r7, #0
	adds r1, #0x56
	str r1, [sp, #8]
	ldrb r0, [r1]
	adds r1, r6, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _0808483C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808470E
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r6, #8]
_0808470E:
	ldr r0, [r6, #8]
	movs r1, #0xa0
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r6, #0x68]
	ldr r1, _08084840 @ =0x20000043
	orrs r0, r1
	str r0, [r6, #0x68]
	adds r0, r6, #0
	adds r0, #0x64
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	subs r0, #3
	movs r5, #0xa
	strb r5, [r0]
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r7, #0x44]
	ldr r2, _08084844 @ =0xFFFFF600
	adds r0, r0, r2
	str r0, [r6, #0x44]
	adds r0, r6, #0
	adds r0, #0x50
	mov r3, sb
	strh r3, [r0]
	adds r1, r6, #0
	adds r1, #0x52
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1]
	movs r4, #2
	rsbs r4, r4, #0
	mov r0, r8
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #2
	bl sub_0803E2B0
	mov r1, r8
	str r1, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #2
	bl sub_0803E308
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r6, #8]
	adds r1, r6, #0
	adds r1, #0x10
	ldr r2, _08084848 @ =0x06012000
	ldr r4, _0808484C @ =0x00000295
	mov r3, sb
	str r3, [sp]
	str r5, [sp, #4]
	adds r0, r6, #0
	adds r3, r4, #0
	bl sub_080708DC
	ldr r0, _08084850 @ =sub_08072C0C
	str r0, [sp]
	mov r0, sb
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #2
	bl sub_080706A0
	ldr r1, _08084854 @ =gKirbys
	ldr r0, _08084858 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sl
	ldrh r1, [r1]
	cmp r0, r1
	bne _08084812
	ldrb r0, [r7]
	cmp r0, #0
	bne _080847D2
	ldr r3, [sp, #8]
	ldrb r0, [r3]
	cmp r0, r2
	bne _08084812
_080847D2:
	ldr r1, _0808485C @ =gUnk_08D60FA4
	ldr r3, _08084860 @ =gSongTable
	movs r2, #0xcf
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrh r4, [r0]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080847FA
	movs r1, #0xce
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08084812
_080847FA:
	cmp r4, #0
	beq _0808480C
	ldr r0, _08084864 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08084812
_0808480C:
	movs r0, #0x67
	bl m4aSongNumStart
_08084812:
	ldr r0, [r6, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080848AA
	adds r1, r6, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08084870
	ldr r2, _08084868 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _0808486C @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _08084872
	.align 2, 0
_0808483C: .4byte gUnk_03000510
_08084840: .4byte 0x20000043
_08084844: .4byte 0xFFFFF600
_08084848: .4byte 0x06012000
_0808484C: .4byte 0x00000295
_08084850: .4byte sub_08072C0C
_08084854: .4byte gKirbys
_08084858: .4byte gUnk_0203AD3C
_0808485C: .4byte gUnk_08D60FA4
_08084860: .4byte gSongTable
_08084864: .4byte gUnk_0203AD10
_08084868: .4byte gCurLevelInfo
_0808486C: .4byte 0x0000065E
_08084870:
	movs r1, #0xff
_08084872:
	cmp r1, #0xff
	beq _080848AA
	lsls r3, r1, #6
	ldrb r0, [r6]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080848BC @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r6]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080848C0 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r6, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080848AA:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080848BC: .4byte gUnk_02022EB0
_080848C0: .4byte gUnk_02022F50

	thumb_func_start sub_080848C4
sub_080848C4: @ 0x080848C4
	push {r4, lr}
	ldr r0, _080848E0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080848E4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080848EC
	.align 2, 0
_080848E0: .4byte gCurTask
_080848E4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080848EC:
	adds r0, r4, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08084960
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0808492A
	ldr r1, [r4, #0x40]
	str r1, [r4, #0x48]
	ldr r2, [r4, #0x44]
	str r2, [r4, #0x4c]
	adds r0, r4, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	adds r0, r4, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r2, r2, r0
	str r2, [r4, #0x44]
_0808492A:
	ldr r0, [r4, #8]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08084954
	ldr r2, _08084950 @ =0x0000028E
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _08084960
	.align 2, 0
_08084950: .4byte 0x0000028E
_08084954:
	adds r0, r4, #0
	bl sub_0806F8BC
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_08084960:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08084968
sub_08084968: @ 0x08084968
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08084998 @ =sub_08084A20
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808499C @ =sub_08084D28
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080849A0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080849A8
	.align 2, 0
_08084998: .4byte sub_08084A20
_0808499C: .4byte sub_08084D28
_080849A0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080849A8:
	adds r0, r4, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08084A1C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080849F6
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080849F6:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r5, #8]
	movs r0, #0x80
	str r0, [r5, #0x68]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08084A1C: .4byte gUnk_03000510

	thumb_func_start sub_08084A20
sub_08084A20: @ 0x08084A20
	push {r4, r5, lr}
	ldr r0, _08084A3C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08084A40
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08084A48
	.align 2, 0
_08084A3C: .4byte gCurTask
_08084A40:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08084A48:
	adds r5, r0, #0
	ldr r4, [r5, #0x70]
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08084A98
	adds r0, r4, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x6f
	beq _08084A90
	cmp r0, #0x73
	beq _08084A90
	cmp r0, #0x75
	beq _08084A90
	cmp r0, #0x74
	beq _08084A90
	cmp r0, #0x70
	beq _08084A90
	cmp r0, #0x72
	beq _08084A90
	cmp r0, #0x71
	beq _08084A90
	ldr r0, [r4, #8]
	ldr r1, _08084A8C @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	b _08084A98
	.align 2, 0
_08084A8C: .4byte 0xFFFF7FFF
_08084A90:
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x44]
_08084A98:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08084AA0
sub_08084AA0: @ 0x08084AA0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x44]
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08084ABA
	adds r1, r2, #0
	adds r1, #0x42
	ldr r0, _08084AC0 @ =0x0000FFFF
	strh r0, [r1]
_08084ABA:
	pop {r0}
	bx r0
	.align 2, 0
_08084AC0: .4byte 0x0000FFFF

	thumb_func_start sub_08084AC4
sub_08084AC4: @ 0x08084AC4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08084ADE
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08084AE6
_08084ADE:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08084AE6:
	ldr r0, [r0, #0x70]
	adds r5, r0, #0
	adds r5, #0x56
	ldr r6, _08084B18 @ =gUnk_0203AD3C
	ldrb r0, [r5]
	ldrb r1, [r6]
	cmp r0, r1
	bne _08084B0A
	movs r0, #0x65
	bl m4aSongNumStop
	ldrb r0, [r5]
	ldrb r6, [r6]
	cmp r0, r6
	bne _08084B0A
	movs r0, #0x88
	bl m4aSongNumStop
_08084B0A:
	adds r0, r4, #0
	bl sub_0803DCCC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08084B18: .4byte gUnk_0203AD3C

	thumb_func_start sub_08084B1C
sub_08084B1C: @ 0x08084B1C
	push {r4, lr}
	ldr r0, _08084B38 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08084B3C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08084B44
	.align 2, 0
_08084B38: .4byte gCurTask
_08084B3C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08084B44:
	adds r0, r4, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08084B6A
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08084B64
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r4, #8]
	b _08084B6A
_08084B64:
	adds r0, r4, #0
	bl sub_0806F8BC
_08084B6A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08084B70
sub_08084B70: @ 0x08084B70
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08084B90 @ =0x0000028E
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08084B90: .4byte 0x0000028E

	thumb_func_start sub_08084B94
sub_08084B94: @ 0x08084B94
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #8]
	movs r3, #2
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _08084BD2
	movs r0, #0xd0
	lsls r0, r0, #2
	strh r0, [r1, #0x24]
	movs r0, #4
	orrs r2, r0
	ldr r0, _08084BC8 @ =0xFFFFF7FF
	ands r2, r0
	str r2, [r1, #8]
	adds r0, r1, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08084BCC
	adds r0, r1, #0
	adds r0, #0x2a
	strb r3, [r0]
	b _08084BD2
	.align 2, 0
_08084BC8: .4byte 0xFFFFF7FF
_08084BCC:
	adds r1, #0x2a
	movs r0, #0
	strb r0, [r1]
_08084BD2:
	movs r0, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08084BD8
sub_08084BD8: @ 0x08084BD8
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0xa3
	lsls r2, r2, #2
	movs r1, #0
	movs r3, #2
	bl sub_0808AE30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08084BFC
sub_08084BFC: @ 0x08084BFC
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0xa3
	lsls r2, r2, #2
	movs r1, #0
	movs r3, #2
	bl sub_0808AE30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08084C20
sub_08084C20: @ 0x08084C20
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #0xb
	orrs r1, r2
	movs r2, #0x80
	lsls r2, r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	movs r0, #0
	bx lr

	thumb_func_start sub_08084C34
sub_08084C34: @ 0x08084C34
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x6c]
	ldrh r1, [r2, #0x1c]
	ldr r0, _08084C60 @ =0x0000028B
	cmp r1, r0
	beq _08084C52
	ldrb r0, [r2]
	cmp r0, #1
	bne _08084C68
	adds r0, r2, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x71
	bne _08084C68
_08084C52:
	ldr r0, [r4, #8]
	ldr r1, _08084C64 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0
	b _08084C80
	.align 2, 0
_08084C60: .4byte 0x0000028B
_08084C64: .4byte 0xFFFBFFFF
_08084C68:
	ldr r2, _08084C88 @ =0x00000292
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #1
_08084C80:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08084C88: .4byte 0x00000292

	thumb_func_start sub_08084C8C
sub_08084C8C: @ 0x08084C8C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08084CAC @ =0x000002B7
	movs r1, #0
	movs r3, #6
	bl sub_0808AE30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08084CAC: .4byte 0x000002B7

	thumb_func_start sub_08084CB0
sub_08084CB0: @ 0x08084CB0
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #0xb
	orrs r1, r2
	movs r2, #0x80
	lsls r2, r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	movs r0, #0
	bx lr

	thumb_func_start sub_08084CC4
sub_08084CC4: @ 0x08084CC4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x58]
	movs r5, #0x80
	lsls r5, r5, #5
	ands r0, r5
	cmp r0, #0
	beq _08084CD8
	movs r0, #0
	b _08084CEC
_08084CD8:
	ldr r2, _08084CF4 @ =0x000002B7
	adds r0, r4, #0
	movs r1, #0
	movs r3, #6
	bl sub_0808AE30
	ldr r0, [r4, #8]
	orrs r0, r5
	str r0, [r4, #8]
	movs r0, #1
_08084CEC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08084CF4: .4byte 0x000002B7

	thumb_func_start sub_08084CF8
sub_08084CF8: @ 0x08084CF8
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	bgt _08084D16
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r0, #0
	b _08084D22
_08084D16:
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #8]
	movs r0, #1
_08084D22:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08084D28
sub_08084D28: @ 0x08084D28
	push {lr}
	adds r3, r0, #0
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08084D42
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08084D4A
_08084D42:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08084D4A:
	ldr r2, [r0, #0x70]
	ldr r0, [r2, #8]
	ldr r1, _08084D64 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r2, #8]
	movs r0, #0x82
	str r0, [r2, #0x68]
	adds r0, r3, #0
	bl sub_0803DCCC
	pop {r0}
	bx r0
	.align 2, 0
_08084D64: .4byte 0xFFFF7FFF

	thumb_func_start sub_08084D68
sub_08084D68: @ 0x08084D68
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08084D82
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08084D8A
_08084D82:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08084D8A:
	adds r0, #0x56
	ldr r1, _08084DA8 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08084D9C
	movs r0, #0x8e
	bl m4aSongNumStop
_08084D9C:
	adds r0, r4, #0
	bl sub_0803DCCC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08084DA8: .4byte gUnk_0203AD3C

	thumb_func_start sub_08084DAC
sub_08084DAC: @ 0x08084DAC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x70]
	ldr r2, _08084DF4 @ =0x00000103
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #6
	bne _08084DD8
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	bne _08084DD4
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	movs r2, #1
_08084DD4:
	cmp r2, #0
	beq _08084DEC
_08084DD8:
	ldr r2, _08084DF8 @ =0x0000028E
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r1, r4, #0
	adds r1, #0x60
	ldr r0, _08084DFC @ =0x0000FFFF
	strh r0, [r1]
_08084DEC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08084DF4: .4byte 0x00000103
_08084DF8: .4byte 0x0000028E
_08084DFC: .4byte 0x0000FFFF

	thumb_func_start sub_08084E00
sub_08084E00: @ 0x08084E00
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08084E1A
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08084E22
_08084E1A:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08084E22:
	adds r0, #0x56
	ldr r1, _08084E40 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08084E34
	movs r0, #0x91
	bl m4aSongNumStop
_08084E34:
	adds r0, r4, #0
	bl sub_08084D28
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08084E40: .4byte gUnk_0203AD3C

	thumb_func_start sub_08084E44
sub_08084E44: @ 0x08084E44
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08084E5E
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08084E66
_08084E5E:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08084E66:
	adds r0, #0x56
	ldr r1, _08084E84 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08084E78
	movs r0, #0x93
	bl m4aSongNumStop
_08084E78:
	adds r0, r4, #0
	bl sub_08084D28
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08084E84: .4byte gUnk_0203AD3C

	thumb_func_start sub_08084E88
sub_08084E88: @ 0x08084E88
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x70]
	ldr r2, _08084ED0 @ =0x00000103
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _08084EB4
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	bne _08084EB0
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	movs r2, #1
_08084EB0:
	cmp r2, #0
	beq _08084EC8
_08084EB4:
	ldr r2, _08084ED4 @ =0x0000028E
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r1, r4, #0
	adds r1, #0x60
	ldr r0, _08084ED8 @ =0x0000FFFF
	strh r0, [r1]
_08084EC8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08084ED0: .4byte 0x00000103
_08084ED4: .4byte 0x0000028E
_08084ED8: .4byte 0x0000FFFF

	thumb_func_start sub_08084EDC
sub_08084EDC: @ 0x08084EDC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x70]
	ldr r2, _08084F24 @ =0x00000103
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _08084F08
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	bne _08084F04
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	movs r2, #1
_08084F04:
	cmp r2, #0
	beq _08084F1C
_08084F08:
	ldr r2, _08084F28 @ =0x0000028E
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r1, r4, #0
	adds r1, #0x60
	ldr r0, _08084F2C @ =0x0000FFFF
	strh r0, [r1]
_08084F1C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08084F24: .4byte 0x00000103
_08084F28: .4byte 0x0000028E
_08084F2C: .4byte 0x0000FFFF

	thumb_func_start sub_08084F30
sub_08084F30: @ 0x08084F30
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x70]
	adds r0, r3, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x34
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08084F58
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x60
	ldr r0, _08084FA0 @ =0x0000FFFF
	strh r0, [r1]
_08084F58:
	ldr r4, _08084FA4 @ =0x00000103
	adds r0, r3, r4
	ldrb r0, [r0]
	cmp r0, #7
	beq _08084F6A
	adds r1, r2, #0
	adds r1, #0x60
	ldr r0, _08084FA0 @ =0x0000FFFF
	strh r0, [r1]
_08084F6A:
	movs r3, #0
	ldr r1, [r2, #0x70]
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	beq _08084F80
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08084F8C
_08084F80:
	ldr r0, [r2, #8]
	movs r1, #0xa0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #8]
	movs r3, #1
_08084F8C:
	cmp r3, #0
	beq _08084F98
	adds r1, r2, #0
	adds r1, #0x60
	ldr r0, _08084FA0 @ =0x0000FFFF
	strh r0, [r1]
_08084F98:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08084FA0: .4byte 0x0000FFFF
_08084FA4: .4byte 0x00000103

	thumb_func_start sub_08084FA8
sub_08084FA8: @ 0x08084FA8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08084FC2
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08084FCA
_08084FC2:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08084FCA:
	adds r0, #0x56
	ldr r1, _08084FE8 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08084FDC
	movs r0, #0x8f
	bl m4aSongNumStop
_08084FDC:
	adds r0, r4, #0
	bl sub_0803DCCC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08084FE8: .4byte gUnk_0203AD3C

	thumb_func_start sub_08084FEC
sub_08084FEC: @ 0x08084FEC
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08085006
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808500E
_08085006:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808500E:
	adds r0, #0x56
	ldr r1, _0808502C @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08085020
	movs r0, #0x73
	bl m4aSongNumStop
_08085020:
	adds r0, r4, #0
	bl sub_0803DCCC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808502C: .4byte gUnk_0203AD3C

	thumb_func_start sub_08085030
sub_08085030: @ 0x08085030
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x70]
	ldr r4, _0808507C @ =0x00000103
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0x14
	beq _08085048
	adds r1, r2, #0
	adds r1, #0x60
	ldr r0, _08085080 @ =0x0000FFFF
	strh r0, [r1]
_08085048:
	movs r3, #0
	ldr r1, [r2, #0x70]
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	beq _0808505E
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808506A
_0808505E:
	ldr r0, [r2, #8]
	movs r1, #0xa0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #8]
	movs r3, #1
_0808506A:
	cmp r3, #0
	beq _08085076
	adds r1, r2, #0
	adds r1, #0x60
	ldr r0, _08085080 @ =0x0000FFFF
	strh r0, [r1]
_08085076:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808507C: .4byte 0x00000103
_08085080: .4byte 0x0000FFFF

	thumb_func_start sub_08085084
sub_08085084: @ 0x08085084
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808509E
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080850A6
_0808509E:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080850A6:
	adds r0, #0x56
	ldr r1, _080850C4 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080850B8
	movs r0, #0xc7
	bl m4aSongNumStop
_080850B8:
	adds r0, r4, #0
	bl sub_0803DCCC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080850C4: .4byte gUnk_0203AD3C

	thumb_func_start sub_080850C8
sub_080850C8: @ 0x080850C8
	push {r4, r5, lr}
	ldr r0, _080850E4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080850E8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080850F0
	.align 2, 0
_080850E4: .4byte gCurTask
_080850E8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080850F0:
	adds r5, r0, #0
	ldr r3, [r5, #4]
	ldr r0, [r3, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	str r0, [r3, #0x5c]
	ldr r0, _08085148 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r4, [r0]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _08085174
	adds r0, r3, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _08085164
	cmp r0, #0x7a
	bhi _08085164
	ldrh r1, [r5, #2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0808514C
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0808515E
	adds r0, r4, #0
	bl sub_0803E558
	b _0808515E
	.align 2, 0
_08085148: .4byte gUnk_03000510
_0808514C:
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0808515E
	adds r0, r4, #0
	bl sub_0803E868
_0808515E:
	ldrh r0, [r5, #2]
	subs r0, #1
	strh r0, [r5, #2]
_08085164:
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _08085174
	ldr r0, _0808517C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08085174:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808517C: .4byte gCurTask

	thumb_func_start sub_08085180
sub_08085180: @ 0x08085180
	push {r4, r5, lr}
	ldr r2, _080851A0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _080851A4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080851AC
	.align 2, 0
_080851A0: .4byte gCurTask
_080851A4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080851AC:
	adds r4, r0, #0
	ldr r3, [r4, #4]
	ldr r0, [r3, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	str r0, [r3, #0x5c]
	cmp r3, #0
	beq _080851E6
	ldr r0, _080851FC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080851E6
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08085204
_080851E6:
	adds r1, r3, #0
	adds r1, #0xd4
	ldrh r0, [r4]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08085200
	ldr r0, [r5]
	bl TaskDestroy
	b _08085204
	.align 2, 0
_080851FC: .4byte gUnk_03000510
_08085200:
	bl sub_080850C8
_08085204:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808520C
sub_0808520C: @ 0x0808520C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0808529C
	ldr r0, _0808524C @ =sub_080852A4
	ldr r2, _08085250 @ =0x0000356E
	ldr r1, _08085254 @ =sub_0808882C
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08085258
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08085260
	.align 2, 0
_0808524C: .4byte sub_080852A4
_08085250: .4byte 0x0000356E
_08085254: .4byte sub_0808882C
_08085258:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08085260:
	str r4, [r2, #4]
	movs r0, #0
	strh r5, [r2, #2]
	strh r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ldrsh r0, [r2, r1]
	cmp r0, #0x10
	beq _0808529C
	ldrb r1, [r4]
	cmp r1, #1
	bne _0808529C
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	subs r0, #0x38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1a
	bhi _0808529C
	strh r1, [r2]
	ldr r0, [r4, #0x68]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
_0808529C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080852A4
sub_080852A4: @ 0x080852A4
	push {r4, r5, lr}
	ldr r2, _080852C4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _080852C8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080852D0
	.align 2, 0
_080852C4: .4byte gCurTask
_080852C8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080852D0:
	adds r4, r0, #0
	ldr r1, [r4, #4]
	ldr r3, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080852E8
	ldr r0, [r5]
	bl TaskDestroy
	b _0808531E
_080852E8:
	cmp r1, #0
	beq _0808530C
	ldr r0, _08085324 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808530C
	movs r0, #0x80
	lsls r0, r0, #6
	ands r3, r0
	cmp r3, #0
	beq _0808531E
_0808530C:
	ldrh r0, [r4, #2]
	subs r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808531E
	ldr r0, [r5]
	bl TaskDestroy
_0808531E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08085324: .4byte gUnk_03000510

	thumb_func_start sub_08085328
sub_08085328: @ 0x08085328
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080853BA
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080853BA
	adds r0, r4, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	adds r2, r1, #0
	cmp r2, #0x27
	beq _080853BA
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080853BA
	adds r0, r1, #0
	subs r0, #0x4a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1c
	bls _080853BA
	cmp r2, #0x7a
	bhi _080853BA
	ldr r0, _08085398 @ =sub_08085468
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808539C @ =sub_0808876C
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080853A0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _080853A8
	.align 2, 0
_08085398: .4byte sub_08085468
_0808539C: .4byte sub_0808876C
_080853A0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_080853A8:
	str r4, [r2, #4]
	movs r1, #0
	movs r0, #3
	strh r0, [r2, #2]
	strh r1, [r2]
	ldr r0, [r4, #8]
	ldr r1, _080853C4 @ =0x02800808
	orrs r0, r1
	str r0, [r4, #8]
_080853BA:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080853C4: .4byte 0x02800808

	thumb_func_start sub_080853C8
sub_080853C8: @ 0x080853C8
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldrb r0, [r4]
	cmp r0, #0
	bne _0808545C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0808545C
	adds r0, r4, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	adds r2, r1, #0
	cmp r2, #0x27
	beq _0808545C
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0808545C
	adds r0, r1, #0
	subs r0, #0x4a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1c
	bls _0808545C
	cmp r2, #0x7a
	bhi _0808545C
	ldr r0, _0808543C @ =sub_08085468
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08085440 @ =sub_0808876C
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08085444
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _0808544C
	.align 2, 0
_0808543C: .4byte sub_08085468
_08085440: .4byte sub_0808876C
_08085444:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_0808544C:
	str r4, [r1, #4]
	movs r0, #0
	strh r5, [r1, #2]
	strh r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _08085464 @ =0x02800808
	orrs r0, r1
	str r0, [r4, #8]
_0808545C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08085464: .4byte 0x02800808

	thumb_func_start sub_08085468
sub_08085468: @ 0x08085468
	push {r4, r5, lr}
	ldr r2, _08085488 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _0808548C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08085494
	.align 2, 0
_08085488: .4byte gCurTask
_0808548C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08085494:
	adds r4, r0, #0
	ldr r3, [r4, #4]
	cmp r3, #0
	beq _080854C0
	ldr r0, _080854E4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080854C0
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _080854DC
_080854C0:
	ldrh r0, [r4, #2]
	subs r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080854D6
	adds r0, r3, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	bne _080854DC
_080854D6:
	ldr r0, [r5]
	bl TaskDestroy
_080854DC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080854E4: .4byte gUnk_03000510

	thumb_func_start sub_080854E8
sub_080854E8: @ 0x080854E8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0808550C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08085510
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08085518
	.align 2, 0
_0808550C: .4byte gCurTask
_08085510:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08085518:
	mov sb, r0
	ldr r4, [r0, #4]
	cmp r4, #0
	beq _08085546
	ldr r0, _08085558 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08085546
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08085546
	b _080856BE
_08085546:
	mov r1, sb
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #0x78
	ble _0808555C
	ldr r0, [r5]
	bl TaskDestroy
	b _080856BE
	.align 2, 0
_08085558: .4byte gUnk_03000510
_0808555C:
	cmp r0, #0
	bne _0808557A
	ldr r2, _080856CC @ =0x0000028F
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r7, r0, #0
	ldrh r1, [r7, #6]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r7, #6]
_0808557A:
	mov r1, sb
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #0x12
	bne _08085610
	ldr r2, _080856CC @ =0x0000028F
	adds r0, r4, #0
	movs r1, #0
	movs r3, #3
	bl sub_0808AE30
	adds r7, r0, #0
	ldrh r1, [r7, #6]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r7, #6]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r7, #0x20]
	ldr r1, _080856D0 @ =gKirbys
	ldr r0, _080856D4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08085610
	ldrb r0, [r4]
	cmp r0, #0
	bne _080855D0
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08085610
_080855D0:
	ldr r1, _080856D8 @ =gUnk_08D60FA4
	ldr r3, _080856DC @ =gSongTable
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrh r5, [r0]
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080855F8
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08085610
_080855F8:
	cmp r5, #0
	beq _0808560A
	ldr r0, _080856E0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08085610
_0808560A:
	movs r0, #0x6a
	bl m4aSongNumStart
_08085610:
	mov r2, sb
	movs r3, #2
	ldrsh r0, [r2, r3]
	cmp r0, #0x10
	bne _08085634
	ldr r2, _080856CC @ =0x0000028F
	adds r0, r4, #0
	movs r1, #0
	movs r3, #2
	bl sub_0808AE30
	adds r7, r0, #0
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_08085634:
	mov r3, sb
	ldrh r1, [r3, #2]
	movs r2, #2
	ldrsh r0, [r3, r2]
	cmp r0, #0x1d
	bgt _080856B6
	movs r3, #7
	mov r8, r3
	mov r0, r8
	ands r0, r1
	mov r8, r0
	cmp r0, #7
	bne _080856B6
	ldr r2, _080856CC @ =0x0000028F
	adds r0, r4, #0
	movs r1, #0
	movs r3, #1
	bl sub_0808AE30
	adds r7, r0, #0
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
	ldr r4, _080856E4 @ =gUnk_08350EE0
	ldr r3, _080856E8 @ =gRngVal
	ldr r0, [r3]
	ldr r6, _080856EC @ =0x00196225
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r5, _080856F0 @ =0x3C6EF35F
	adds r2, r2, r5
	str r2, [r3]
	lsrs r0, r2, #0x10
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r3]
	lsrs r0, r0, #0x10
	mov r2, r8
	ands r0, r2
	lsls r0, r0, #1
	adds r4, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r7, #0x38]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r7, #0x20]
_080856B6:
	mov r3, sb
	ldrh r0, [r3, #2]
	adds r0, #1
	strh r0, [r3, #2]
_080856BE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080856CC: .4byte 0x0000028F
_080856D0: .4byte gKirbys
_080856D4: .4byte gUnk_0203AD3C
_080856D8: .4byte gUnk_08D60FA4
_080856DC: .4byte gSongTable
_080856E0: .4byte gUnk_0203AD10
_080856E4: .4byte gUnk_08350EE0
_080856E8: .4byte gRngVal
_080856EC: .4byte 0x00196225
_080856F0: .4byte 0x3C6EF35F

	thumb_func_start sub_080856F4
sub_080856F4: @ 0x080856F4
	push {r4, r5, r6, lr}
	ldr r2, _08085714 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _08085718
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08085720
	.align 2, 0
_08085714: .4byte gCurTask
_08085718:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08085720:
	adds r5, r0, #0
	ldr r4, [r5, #4]
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _08085738
	ldr r0, [r6]
	bl TaskDestroy
	b _0808579A
_08085738:
	cmp r4, #0
	beq _0808575E
	ldr r0, _08085780 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808575E
	movs r0, #0x80
	lsls r0, r0, #6
	ands r3, r0
	cmp r3, #0
	beq _0808579A
_0808575E:
	ldrh r0, [r5, #2]
	subs r0, #1
	strh r0, [r5, #2]
	movs r1, #3
	ands r0, r1
	cmp r0, #3
	bne _0808578C
	ldr r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08085788
	ldr r0, _08085784 @ =0xFFFFFBFF
	ands r1, r0
	b _0808578A
	.align 2, 0
_08085780: .4byte gUnk_03000510
_08085784: .4byte 0xFFFFFBFF
_08085788:
	orrs r1, r2
_0808578A:
	str r1, [r4, #8]
_0808578C:
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0808579A
	ldr r0, [r6]
	bl TaskDestroy
_0808579A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080857A0
sub_080857A0: @ 0x080857A0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080857D0 @ =sub_08085834
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080857D4 @ =sub_0808590C
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080857D8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080857E0
	.align 2, 0
_080857D0: .4byte sub_08085834
_080857D4: .4byte sub_0808590C
_080857D8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080857E0:
	str r5, [r4, #4]
	movs r0, #0xe
	strh r0, [r4, #2]
	adds r1, r5, #0
	adds r1, #0x2f
	ldrb r0, [r1]
	cmp r0, #0xf
	beq _080857F2
	strh r0, [r4]
_080857F2:
	ldr r0, [r5, #0xc]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808580C
	ldr r0, _08085808 @ =gUnk_08351648
	movs r1, #0x97
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	b _0808581E
	.align 2, 0
_08085808: .4byte gUnk_08351648
_0808580C:
	ldr r2, _08085830 @ =gUnk_08351648
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0, #8]
_0808581E:
	bl sub_0803DF24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08085830: .4byte gUnk_08351648

	thumb_func_start sub_08085834
sub_08085834: @ 0x08085834
	push {r4, r5, lr}
	ldr r2, _08085854 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08085858
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08085860
	.align 2, 0
_08085854: .4byte gCurTask
_08085858:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08085860:
	adds r4, r0, #0
	ldr r0, [r4, #4]
	mov ip, r0
	ldrh r0, [r4]
	mov r1, ip
	adds r1, #0x2f
	strb r0, [r1]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080858FA
	ldr r3, [r4, #4]
	cmp r3, #0
	beq _080858A6
	ldr r0, _080858D8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080858A6
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08085906
_080858A6:
	ldr r2, _080858DC @ =gKirbys
	ldr r0, _080858E0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	mov r1, ip
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080858F0
	ldrh r1, [r4, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080858E4
	mov r1, ip
	adds r1, #0x2f
	movs r0, #0xf
	strb r0, [r1]
	b _080858F0
	.align 2, 0
_080858D8: .4byte gUnk_03000510
_080858DC: .4byte gKirbys
_080858E0: .4byte gUnk_0203AD3C
_080858E4:
	ldrh r1, [r4]
	cmp r1, #0
	beq _080858F0
	mov r0, ip
	adds r0, #0x2f
	strb r1, [r0]
_080858F0:
	ldrh r1, [r4, #2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _08085902
_080858FA:
	ldr r0, [r5]
	bl TaskDestroy
	b _08085906
_08085902:
	subs r0, r1, #1
	strh r0, [r4, #2]
_08085906:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0808590C
sub_0808590C: @ 0x0808590C
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08085926
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808592E
_08085926:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808592E:
	ldr r5, [r0, #4]
	ldrh r1, [r0]
	cmp r1, #0
	beq _0808593E
	adds r0, r5, #0
	adds r0, #0x2f
	strb r1, [r0]
	b _080859A0
_0808593E:
	ldr r2, _080859A8 @ =gUnk_08351648
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r4, [r0, #8]
	ldr r0, [r5, #0xc]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08085962
	movs r1, #0x97
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r4, [r0]
_08085962:
	adds r0, r4, #0
	bl sub_0803DF24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080859A0
	ldr r2, _080859AC @ =gKirbys
	ldr r0, _080859B0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080859A0
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0xf]
	adds r0, r4, #0
	bl sub_0803DFAC
	adds r0, r4, #0
	bl sub_0803DF24
_080859A0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080859A8: .4byte gUnk_08351648
_080859AC: .4byte gKirbys
_080859B0: .4byte gUnk_0203AD3C

	thumb_func_start sub_080859B4
sub_080859B4: @ 0x080859B4
	push {r4, lr}
	ldr r0, _080859D0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080859D4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080859DC
	.align 2, 0
_080859D0: .4byte gCurTask
_080859D4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080859DC:
	ldr r0, _08085A20 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	ldr r3, [r4, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _08085A48
	ldrb r1, [r4]
	ldr r2, _08085A24 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	adds r0, r0, r2
	ldr r2, _08085A28 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r2, r0, #0
	movs r0, #2
	ldrsh r1, [r4, r0]
	ldr r0, [r2]
	cmp r0, r1
	beq _08085A30
	ldr r0, _08085A2C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08085A48
	.align 2, 0
_08085A20: .4byte gUnk_03000510
_08085A24: .4byte gCurLevelInfo
_08085A28: .4byte 0x0000065E
_08085A2C: .4byte gCurTask
_08085A30:
	ldrh r0, [r4, #2]
	subs r0, #1
	strh r0, [r4, #2]
	movs r1, #2
	ldrsh r0, [r4, r1]
	str r0, [r2]
	cmp r0, #0
	bne _08085A48
	ldr r0, _08085A50 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08085A48:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08085A50: .4byte gCurTask

	thumb_func_start sub_08085A54
sub_08085A54: @ 0x08085A54
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08085A74 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08085A78
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08085A80
	.align 2, 0
_08085A74: .4byte gCurTask
_08085A78:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08085A80:
	adds r5, r0, #0
	ldr r7, [r5, #8]
	adds r6, r7, #0
	adds r0, r7, #0
	bl sub_0805BEC4
	cmp r0, #0
	beq _08085A9C
	ldr r4, _08085A98 @ =gCurLevelInfo
	adds r3, r7, #0
	adds r3, #0x56
	b _08085BAC
	.align 2, 0
_08085A98: .4byte gCurLevelInfo
_08085A9C:
	ldr r3, [r5, #8]
	cmp r3, #0
	beq _08085AC8
	ldr r0, _08085B60 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08085AC8
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08085AC8
	b _08085C24
_08085AC8:
	ldr r2, _08085B64 @ =gCurLevelInfo
	mov ip, r2
	adds r3, r6, #0
	adds r3, #0x56
	ldrb r0, [r3]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r2, #0x20
	adds r2, r2, r0
	mov r8, r2
	mov r1, ip
	adds r1, #0x10
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r1, r1, r0
	ldr r0, [r6, #0x44]
	subs r0, r0, r1
	movs r2, #6
	ldrsh r1, [r5, r2]
	subs r0, r0, r1
	mov r1, r8
	str r0, [r1]
	ldrb r0, [r3]
	muls r0, r4, r0
	mov r2, ip
	adds r2, #0x1c
	adds r2, r0, r2
	mov r1, ip
	adds r1, #0xc
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #7
	adds r1, r1, r0
	ldr r0, [r6, #0x40]
	subs r0, r0, r1
	str r0, [r2]
	ldrh r0, [r5, #4]
	adds r0, #0x40
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	ldr r1, _08085B68 @ =0x01BF0000
	mov r4, ip
	cmp r0, r1
	ble _08085B2E
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r5, #4]
_08085B2E:
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08085B6C
	ldrh r1, [r5, #6]
	movs r2, #6
	ldrsh r0, [r5, r2]
	cmp r0, #0
	blt _08085B6C
	ldrh r0, [r5, #4]
	adds r0, r1, r0
	strh r0, [r5, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #6
	cmp r0, r1
	ble _08085BE4
	strh r1, [r5, #6]
	b _08085BE4
	.align 2, 0
_08085B60: .4byte gUnk_03000510
_08085B64: .4byte gCurLevelInfo
_08085B68: .4byte 0x01BF0000
_08085B6C:
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08085B9E
	ldrh r1, [r5, #6]
	movs r2, #6
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bgt _08085B9E
	ldrh r0, [r5, #4]
	subs r0, r1, r0
	strh r0, [r5, #6]
	lsls r0, r0, #0x10
	movs r1, #0xd0
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _08085BE4
	movs r0, #0xd0
	lsls r0, r0, #8
	strh r0, [r5, #6]
	b _08085BE4
_08085B9E:
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08085BE4
_08085BAC:
	ldrb r0, [r3]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	movs r5, #0xf6
	lsls r5, r5, #1
	adds r1, r4, r5
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldrb r0, [r3]
	muls r0, r2, r0
	adds r0, r0, r4
	ldr r1, _08085BDC @ =0x00000664
	adds r0, r0, r1
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0]
	ldr r0, _08085BE0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08085C24
	.align 2, 0
_08085BDC: .4byte 0x00000664
_08085BE0: .4byte gCurTask
_08085BE4:
	adds r0, r7, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0xb
	bls _08085C24
	subs r0, #0x1f
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _08085C24
	ldrb r0, [r3]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	movs r5, #0xf6
	lsls r5, r5, #1
	adds r1, r4, r5
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldrb r0, [r3]
	muls r0, r2, r0
	adds r0, r0, r4
	ldr r1, _08085C30 @ =0x00000664
	adds r0, r0, r1
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0]
	ldr r0, _08085C34 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08085C24:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08085C30: .4byte 0x00000664
_08085C34: .4byte gCurTask

	thumb_func_start sub_08085C38
sub_08085C38: @ 0x08085C38
	push {r4, r5, lr}
	ldr r2, _08085C58 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08085C5C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08085C64
	.align 2, 0
_08085C58: .4byte gCurTask
_08085C5C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08085C64:
	adds r3, r0, #0
	ldr r4, [r3, #8]
	cmp r4, #0
	beq _08085C90
	ldr r0, _08085CC0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08085C90
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08085CE2
_08085C90:
	ldrh r0, [r3, #4]
	adds r0, #0x40
	movs r2, #0
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	ldr r1, _08085CC4 @ =0x01FF0000
	cmp r0, r1
	ble _08085CA6
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r3, #4]
_08085CA6:
	ldrh r1, [r3, #6]
	movs r4, #6
	ldrsh r0, [r3, r4]
	cmp r0, #0
	bge _08085CC8
	ldrh r0, [r3, #4]
	adds r0, r1, r0
	strh r0, [r3, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08085CE2
	strh r2, [r3, #6]
	b _08085CE2
	.align 2, 0
_08085CC0: .4byte gUnk_03000510
_08085CC4: .4byte 0x01FF0000
_08085CC8:
	cmp r0, #0
	ble _08085CDC
	ldrh r0, [r3, #4]
	subs r0, r1, r0
	strh r0, [r3, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08085CE2
	strh r2, [r3, #6]
	b _08085CE2
_08085CDC:
	ldr r0, [r5]
	bl TaskDestroy
_08085CE2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08085CE8
sub_08085CE8: @ 0x08085CE8
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08085D08 @ =gUnk_0300051C
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x2f
	ldrb r1, [r1]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08085D0C
	movs r0, #0
	b _08085D68
	.align 2, 0
_08085D08: .4byte gUnk_0300051C
_08085D0C:
	ldr r0, _08085D38 @ =sub_08085E60
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08085D3C @ =sub_0808895C
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08085D40
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08085D48
	.align 2, 0
_08085D38: .4byte sub_08085E60
_08085D3C: .4byte sub_0808895C
_08085D40:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08085D48:
	movs r0, #0
	str r0, [r2, #8]
	str r5, [r2, #4]
	strb r0, [r2, #1]
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	movs r1, #0
	strh r0, [r2, #2]
	ldr r0, _08085D70 @ =gUnk_03000524
	strb r1, [r0]
	adds r0, r2, #0
_08085D68:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08085D70: .4byte gUnk_03000524

	thumb_func_start sub_08085D74
sub_08085D74: @ 0x08085D74
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r4, r0, #0
	movs r6, #0
	ldr r1, [r4, #4]
	ldrb r0, [r1, #3]
	ldr r3, _08085D88 @ =gKirbys
	ldr r2, _08085D8C @ =gUnk_0203AD3C
	b _08085D9C
	.align 2, 0
_08085D88: .4byte gKirbys
_08085D8C: .4byte gUnk_0203AD3C
_08085D90:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r0, r6, #2
	adds r0, r0, r1
	ldrb r0, [r0, #3]
_08085D9C:
	cmp r0, #0
	beq _08085DA4
	cmp r0, #0xff
	bne _08085D90
_08085DA4:
	ldrb r1, [r2]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r3
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r4, #2]
	cmp r0, r1
	bne _08085E56
	ldrb r1, [r4]
	movs r2, #0xf
	adds r0, r2, #0
	ands r0, r1
	adds r5, r1, #0
	cmp r0, #0
	bne _08085E0A
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08085DF2
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	bl sub_0803DF24
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xff
	bne _08085DEA
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	movs r1, #0
	bl sub_0803DFAC
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08085DEA:
	ldrb r0, [r4]
	orrs r1, r0
	strb r1, [r4]
	b _08085DFE
_08085DF2:
	adds r0, #0x2f
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r4]
_08085DFE:
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	adds r5, r1, #0
	cmp r0, #0
	beq _08085E56
_08085E0A:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r3, sp
	ldr r1, [r4, #4]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #0
	strh r1, [r3, #0xc]
	mov r1, sp
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	movs r0, #0xf
	ands r0, r5
	strb r0, [r1, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
_08085E56:
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08085E60
sub_08085E60: @ 0x08085E60
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	ldr r2, _08085E88 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	beq _08085E8C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08085E94
	.align 2, 0
_08085E88: .4byte gCurTask
_08085E8C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08085E94:
	adds r4, r0, #0
	movs r3, #0
	movs r2, #0
	ldr r0, _08085F10 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08085EE8
	ldr r1, _08085F14 @ =gKirbys
	mov r8, r1
	ldrh r6, [r4, #2]
	ldr r1, _08085F18 @ =gUnk_02026D50
	mov ip, r1
	adds r5, r0, #0
	ldr r7, _08085F1C @ =gCurLevelInfo
_08085EB0:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	add r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r6
	bne _08085EDE
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r7
	ldr r1, _08085F20 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, ip
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08085EDE
	movs r3, #1
_08085EDE:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r5
	blo _08085EB0
_08085EE8:
	cmp r3, #0
	beq _08085EFE
	ldr r5, [r4, #8]
	cmp r5, #0
	beq _08085F28
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08085F30
_08085EFE:
	adds r0, r4, #0
	bl sub_08085D74
	ldr r0, _08085F24 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08086096
	.align 2, 0
_08085F10: .4byte gUnk_0203AD44
_08085F14: .4byte gKirbys
_08085F18: .4byte gUnk_02026D50
_08085F1C: .4byte gCurLevelInfo
_08085F20: .4byte 0x0000065E
_08085F24: .4byte gCurTask
_08085F28:
	ldr r0, _08085FB4 @ =gUnk_03000524
	ldrb r0, [r0]
	cmp r0, #0
	bne _08085FA8
_08085F30:
	ldrb r3, [r4]
	lsrs r1, r3, #4
	ldr r2, [r4, #4]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	ldrb r1, [r1, #3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r1, r0
	bne _08085F78
	adds r3, #0x10
	strb r3, [r4]
	movs r0, #0
	strb r0, [r4, #1]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #3]
	cmp r0, #0
	bne _08085F68
	movs r0, #0xf
	ands r3, r0
	strb r3, [r4]
_08085F68:
	ldrb r0, [r4]
	lsrs r1, r0, #4
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrb r1, [r1, #3]
	adds r3, r0, #0
	cmp r1, #0xff
	beq _08085FA8
_08085F78:
	ldr r2, _08085FB8 @ =gKirbys
	ldr r0, _08085FBC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r4, #2]
	cmp r0, r1
	bne _08086078
	cmp r5, #0
	bne _08085FCC
	ldr r7, _08085FC0 @ =gUnk_0300051C
	ldrh r1, [r7]
	movs r2, #0xf
	ands r2, r3
	adds r0, r1, #0
	asrs r0, r2
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _08085FC4
_08085FA8:
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _08086096
	.align 2, 0
_08085FB4: .4byte gUnk_03000524
_08085FB8: .4byte gKirbys
_08085FBC: .4byte gUnk_0203AD3C
_08085FC0: .4byte gUnk_0300051C
_08085FC4:
	adds r0, r3, #0
	lsls r0, r2
	orrs r1, r0
	strh r1, [r7]
_08085FCC:
	ldrb r2, [r4]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	bne _08086018
	cmp r5, #0
	bne _08086000
	ldrh r0, [r6]
	bl sub_0803DF24
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xff
	bne _08085FF8
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	movs r1, #0
	bl sub_0803DFAC
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08085FF8:
	ldrb r0, [r4]
	orrs r1, r0
	strb r1, [r4]
	b _0808600E
_08086000:
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
_0808600E:
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08086096
_08086018:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r3, sp
	ldrb r0, [r4]
	lsrs r0, r0, #4
	ldr r1, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r2, #0
	strh r0, [r3, #0xc]
	ldrb r0, [r4]
	lsrs r0, r0, #4
	ldr r1, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r3, #0x1a]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r2, sp
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	b _08086096
_08086078:
	cmp r5, #0
	bne _0808608E
	ldr r2, _080860A4 @ =gUnk_0300051C
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
_0808608E:
	ldrb r1, [r4]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r4]
_08086096:
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080860A4: .4byte gUnk_0300051C

	thumb_func_start sub_080860A8
sub_080860A8: @ 0x080860A8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _080860DC @ =sub_08086194
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080860E0 @ =sub_08086304
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080860E4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080860EC
	.align 2, 0
_080860DC: .4byte sub_08086194
_080860E0: .4byte sub_08086304
_080860E4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080860EC:
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r2, [r0]
	strh r2, [r4, #2]
	str r5, [r4, #4]
	ldr r6, _08086164 @ =gDispCnt
	ldrh r1, [r6]
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r1
	lsrs r0, r0, #8
	strb r0, [r4]
	ldrb r0, [r5, #3]
	strb r0, [r4, #1]
	ldr r3, _08086168 @ =gKirbys
	ldr r0, _0808616C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r3
	adds r0, #0x60
	ldrh r0, [r0]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r0, r2
	bne _08086188
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	ldr r2, _08086170 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r0, [r4, #4]
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0808617C
	ldrh r0, [r6]
	ldr r2, _08086174 @ =0x0000E0FF
	ands r2, r0
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	orrs r2, r0
	strh r2, [r6]
	ldrh r1, [r4, #2]
	ldr r0, _08086178 @ =0x00000396
	cmp r1, r0
	bne _08086188
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	orrs r2, r0
	strh r2, [r6]
	b _08086188
	.align 2, 0
_08086164: .4byte gDispCnt
_08086168: .4byte gKirbys
_0808616C: .4byte gUnk_0203AD3C
_08086170: .4byte gUnk_03002440
_08086174: .4byte 0x0000E0FF
_08086178: .4byte 0x00000396
_0808617C:
	cmp r0, #2
	bne _08086188
	ldrh r1, [r6]
	ldr r0, _08086190 @ =0x0000E0FF
	ands r0, r1
	strh r0, [r6]
_08086188:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08086190: .4byte 0x0000E0FF

	thumb_func_start sub_08086194
sub_08086194: @ 0x08086194
	push {r4, r5, r6, lr}
	ldr r0, _080861B0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080861B4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080861BC
	.align 2, 0
_080861B0: .4byte gCurTask
_080861B4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080861BC:
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	subs r0, #1
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808620E
	ldr r0, [r4, #4]
	adds r3, r0, #4
	str r3, [r4, #4]
	ldrb r0, [r3, #3]
	strb r0, [r4, #1]
	ldr r2, _08086258 @ =gKirbys
	ldr r0, _0808625C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r4, #2]
	cmp r0, r1
	bne _08086200
	adds r0, r3, #0
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	ldr r0, _08086260 @ =gUnk_03002440
	ldr r1, [r0]
	movs r2, #1
	orrs r1, r2
	str r1, [r0]
_08086200:
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _0808620E
	ldr r0, _08086264 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0808620E:
	ldr r2, _08086258 @ =gKirbys
	ldr r0, _0808625C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r6, [r0]
	ldrh r2, [r4, #2]
	cmp r6, r2
	bne _080862DE
	ldr r0, [r4, #4]
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _0808628C
	cmp r0, #1
	bne _08086274
	ldr r2, _08086268 @ =gDispCnt
	ldrh r0, [r2]
	ldr r1, _0808626C @ =0x0000E0FF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r1, r0
	strh r1, [r2]
	ldr r0, _08086270 @ =0x00000396
	cmp r6, r0
	bne _080862DE
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	orrs r1, r0
	strh r1, [r2]
	b _080862DE
	.align 2, 0
_08086258: .4byte gKirbys
_0808625C: .4byte gUnk_0203AD3C
_08086260: .4byte gUnk_03002440
_08086264: .4byte gCurTask
_08086268: .4byte gDispCnt
_0808626C: .4byte 0x0000E0FF
_08086270: .4byte 0x00000396
_08086274:
	cmp r0, #2
	bne _080862DE
	ldr r2, _08086284 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08086288 @ =0x0000E0FF
	ands r0, r1
	strh r0, [r2]
	b _080862DE
	.align 2, 0
_08086284: .4byte gDispCnt
_08086288: .4byte 0x0000E0FF
_0808628C:
	ldr r5, _080862E4 @ =gDispCnt
	ldrh r0, [r5]
	ldr r3, _080862E8 @ =0x0000E0FF
	ands r3, r0
	movs r1, #0xf8
	lsls r1, r1, #5
	adds r0, r1, #0
	orrs r3, r0
	strh r3, [r5]
	ldr r2, _080862EC @ =gRoomProps
	ldrh r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0, #0x1c]
	ldr r0, _080862F0 @ =0x0000FFFF
	cmp r1, r0
	bne _080862B8
	ldr r0, _080862F4 @ =0x0000FBFF
	ands r3, r0
	strh r3, [r5]
_080862B8:
	ldr r0, _080862F8 @ =0x00000396
	cmp r6, r0
	bne _080862CA
	ldrh r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5]
_080862CA:
	ldr r0, _080862FC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080862DE
	ldrh r1, [r5]
	ldr r0, _08086300 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r5]
_080862DE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080862E4: .4byte gDispCnt
_080862E8: .4byte 0x0000E0FF
_080862EC: .4byte gRoomProps
_080862F0: .4byte 0x0000FFFF
_080862F4: .4byte 0x0000FBFF
_080862F8: .4byte 0x00000396
_080862FC: .4byte gUnk_0203AD10
_08086300: .4byte 0x0000FDFF

	thumb_func_start sub_08086304
sub_08086304: @ 0x08086304
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808631E
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08086326
_0808631E:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08086326:
	ldr r2, _08086398 @ =gKirbys
	ldr r0, _0808639C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r6, [r0]
	ldrh r0, [r4, #2]
	cmp r6, r0
	bne _08086390
	ldr r5, _080863A0 @ =gDispCnt
	ldrh r0, [r5]
	ldr r3, _080863A4 @ =0x0000E0FF
	ands r3, r0
	movs r1, #0xf8
	lsls r1, r1, #5
	adds r0, r1, #0
	orrs r3, r0
	strh r3, [r5]
	ldr r2, _080863A8 @ =gRoomProps
	ldrh r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0, #0x1c]
	ldr r0, _080863AC @ =0x0000FFFF
	cmp r1, r0
	bne _0808636A
	ldr r0, _080863B0 @ =0x0000FBFF
	ands r3, r0
	strh r3, [r5]
_0808636A:
	ldr r0, _080863B4 @ =0x00000396
	cmp r6, r0
	bne _0808637C
	ldrh r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5]
_0808637C:
	ldr r0, _080863B8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08086390
	ldrh r1, [r5]
	ldr r0, _080863BC @ =0x0000FDFF
	ands r0, r1
	strh r0, [r5]
_08086390:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08086398: .4byte gKirbys
_0808639C: .4byte gUnk_0203AD3C
_080863A0: .4byte gDispCnt
_080863A4: .4byte 0x0000E0FF
_080863A8: .4byte gRoomProps
_080863AC: .4byte 0x0000FFFF
_080863B0: .4byte 0x0000FBFF
_080863B4: .4byte 0x00000396
_080863B8: .4byte gUnk_0203AD10
_080863BC: .4byte 0x0000FDFF

	thumb_func_start sub_080863C0
sub_080863C0: @ 0x080863C0
	push {r4, r5, lr}
	sub sp, #0x28
	ldr r0, _080863E0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080863E4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080863EC
	.align 2, 0
_080863E0: .4byte gCurTask
_080863E4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080863EC:
	adds r5, r0, #0
	ldr r4, [r5, #4]
	cmp r4, #0
	beq _08086418
	ldr r0, _08086478 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08086418
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _080864D6
_08086418:
	movs r0, #2
	ldrsh r3, [r5, r0]
	cmp r3, #0
	bne _0808647C
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080864AE
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r1, sp
	movs r0, #0x15
	strh r0, [r1, #0xc]
	mov r0, sp
	movs r2, #0xf
	strb r2, [r0, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r3, [r0, #0x10]
	strh r3, [r0, #0x12]
	strh r3, [r0, #0x14]
	strh r3, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	ands r2, r0
	strb r2, [r1, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	b _080864AE
	.align 2, 0
_08086478: .4byte gUnk_03000510
_0808647C:
	cmp r3, #2
	bgt _08086498
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080864AE
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_0803E868
	b _080864AE
_08086498:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080864AE
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_0803E558
_080864AE:
	ldrh r0, [r5, #2]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strh r0, [r5, #2]
	ldr r0, _080864E0 @ =0x00000103
	adds r2, r4, r0
	ldrh r0, [r5]
	ldrb r2, [r2]
	cmp r0, r2
	bne _080864CE
	adds r0, r4, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x35
	bne _080864D6
_080864CE:
	ldr r0, _080864E4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080864D6:
	add sp, #0x28
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080864E0: .4byte 0x00000103
_080864E4: .4byte gCurTask

	thumb_func_start sub_080864E8
sub_080864E8: @ 0x080864E8
	push {r4, lr}
	ldr r0, _08086504 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08086508
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08086510
	.align 2, 0
_08086504: .4byte gCurTask
_08086508:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08086510:
	ldr r4, [r0, #4]
	cmp r4, #0
	beq _0808653A
	ldr r0, _080865A8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808653A
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _080865DE
_0808653A:
	ldr r1, _080865AC @ =gKirbys
	ldr r0, _080865B0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08086590
	ldrb r0, [r4]
	cmp r0, #0
	bne _08086566
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08086590
_08086566:
	ldr r1, _080865B4 @ =gUnk_08D60FA4
	ldr r3, _080865B8 @ =gSongTable
	ldr r2, _080865BC @ =0x00000FDC
	adds r0, r3, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0808658A
	ldr r1, _080865C0 @ =0x00000FD8
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhs _08086590
_0808658A:
	ldr r0, _080865C4 @ =0x000001FB
	bl m4aSongNumStart
_08086590:
	ldr r2, _080865C8 @ =0x00000103
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _080865CC
	adds r0, r4, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x63
	bne _080865D6
	b _080865DE
	.align 2, 0
_080865A8: .4byte gUnk_03000510
_080865AC: .4byte gKirbys
_080865B0: .4byte gUnk_0203AD3C
_080865B4: .4byte gUnk_08D60FA4
_080865B8: .4byte gSongTable
_080865BC: .4byte 0x00000FDC
_080865C0: .4byte 0x00000FD8
_080865C4: .4byte 0x000001FB
_080865C8: .4byte 0x00000103
_080865CC:
	adds r0, r4, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x36
	beq _080865DE
_080865D6:
	ldr r0, _080865E4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080865DE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080865E4: .4byte gCurTask

	thumb_func_start sub_080865E8
sub_080865E8: @ 0x080865E8
	push {r4, r5, r6, lr}
	ldr r2, _08086608 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0808660C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08086614
	.align 2, 0
_08086608: .4byte gCurTask
_0808660C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08086614:
	adds r5, r0, #0
	ldr r4, [r5, #4]
	ldr r3, [r4, #8]
	ldr r0, _08086634 @ =0x01001000
	ands r0, r3
	movs r1, #0x80
	lsls r1, r1, #0x11
	cmp r0, r1
	beq _0808663C
	ldr r0, _08086638 @ =0xFEFFFFFF
	ands r3, r0
	str r3, [r4, #8]
	ldr r0, [r6]
	bl TaskDestroy
	b _0808667C
	.align 2, 0
_08086634: .4byte 0x01001000
_08086638: .4byte 0xFEFFFFFF
_0808663C:
	cmp r4, #0
	beq _08086662
	ldr r0, _08086684 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08086662
	movs r0, #0x80
	lsls r0, r0, #6
	ands r3, r0
	cmp r3, #0
	beq _0808667C
_08086662:
	ldrh r0, [r5, #2]
	subs r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808667C
	ldr r0, [r4, #8]
	ldr r1, _08086688 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r6]
	bl TaskDestroy
_0808667C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08086684: .4byte gUnk_03000510
_08086688: .4byte 0xFEFFFFFF

	thumb_func_start sub_0808668C
sub_0808668C: @ 0x0808668C
	push {r4, r5, lr}
	ldr r2, _080866AC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _080866B0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080866B8
	.align 2, 0
_080866AC: .4byte gCurTask
_080866B0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080866B8:
	ldr r4, [r0, #4]
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080866CE
	ldr r0, [r5]
	bl TaskDestroy
	b _0808670E
_080866CE:
	cmp r4, #0
	beq _080866F4
	ldr r0, _08086714 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080866F4
	movs r0, #0x80
	lsls r0, r0, #6
	ands r3, r0
	cmp r3, #0
	beq _0808670E
_080866F4:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0808670E
	ldr r0, [r4, #0x5c]
	ldr r1, _08086718 @ =0xFFFEFFFF
	ands r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5]
	bl TaskDestroy
_0808670E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08086714: .4byte gUnk_03000510
_08086718: .4byte 0xFFFEFFFF

	thumb_func_start sub_0808671C
sub_0808671C: @ 0x0808671C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _0808674C @ =sub_080867E4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08086750 @ =sub_080868D4
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08086754
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _0808675C
	.align 2, 0
_0808674C: .4byte sub_080867E4
_08086750: .4byte sub_080868D4
_08086754:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_0808675C:
	str r6, [r5, #4]
	movs r4, #0
	movs r0, #0xb
	strh r0, [r5, #2]
	strh r4, [r5]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #5
	bl sub_0803C8CC
	movs r1, #2
	strb r1, [r0]
	adds r1, #0xfe
	strh r1, [r0, #0xa]
	movs r1, #5
	strb r1, [r0, #3]
	movs r1, #0x10
	strb r1, [r0, #2]
	strh r4, [r0, #4]
	ldr r1, _0808679C @ =0x00003FFF
	strh r1, [r0, #6]
	ldrh r2, [r0, #8]
	movs r1, #0x40
	orrs r1, r2
	strh r1, [r0, #8]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0808679C: .4byte 0x00003FFF

	thumb_func_start sub_080867A0
sub_080867A0: @ 0x080867A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #5
	bl sub_0803C8CC
	movs r3, #0
	movs r1, #2
	strb r1, [r0]
	movs r2, #0
	movs r1, #0xff
	lsls r1, r1, #8
	strh r1, [r0, #0xa]
	movs r1, #0x80
	lsls r1, r1, #5
	strh r1, [r0, #0xc]
	movs r1, #0x10
	strb r1, [r0, #1]
	movs r1, #5
	strb r1, [r0, #3]
	strb r2, [r0, #2]
	strh r3, [r0, #4]
	ldr r1, _080867E0 @ =0x00003FFF
	strh r1, [r0, #6]
	movs r0, #1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080867E0: .4byte 0x00003FFF

	thumb_func_start sub_080867E4
sub_080867E4: @ 0x080867E4
	push {r4, r5, r6, lr}
	ldr r2, _08086800 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08086804
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808680C
	.align 2, 0
_08086800: .4byte gCurTask
_08086804:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808680C:
	adds r6, r0, #0
	ldr r5, [r6, #4]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08086824
	ldr r0, [r2]
	bl TaskDestroy
	b _080868BC
_08086824:
	movs r0, #5
	bl sub_0803D308
	adds r4, r0, #0
	ldrh r3, [r4, #8]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _08086864
	ldr r2, _08086858 @ =gKirbys
	ldr r0, _0808685C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08086886
	ldr r0, _08086860 @ =0x0000FFFD
	ands r0, r3
	b _08086884
	.align 2, 0
_08086858: .4byte gKirbys
_0808685C: .4byte gUnk_0203AD3C
_08086860: .4byte 0x0000FFFD
_08086864:
	ldr r2, _080868C4 @ =gKirbys
	ldr r0, _080868C8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08086886
	movs r0, #2
	orrs r0, r3
_08086884:
	strh r0, [r4, #8]
_08086886:
	ldr r0, _080868CC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _080868BC
	ldrh r0, [r6]
	cmp r0, #0
	beq _080868BC
	ldrh r0, [r6, #2]
	subs r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080868BC
	movs r0, #2
	strh r0, [r6]
	ldr r0, _080868D0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080868BC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080868C4: .4byte gKirbys
_080868C8: .4byte gUnk_0203AD3C
_080868CC: .4byte gUnk_03000510
_080868D0: .4byte gCurTask

	thumb_func_start sub_080868D4
sub_080868D4: @ 0x080868D4
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080868EE
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080868F6
_080868EE:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080868F6:
	ldr r1, [r0, #4]
	ldrh r0, [r0]
	cmp r0, #2
	beq _0808692E
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #5
	bl sub_0803C8CC
	movs r3, #0
	movs r1, #2
	strb r1, [r0]
	movs r2, #0
	movs r1, #0xf0
	lsls r1, r1, #8
	strh r1, [r0, #0xa]
	movs r1, #0x80
	lsls r1, r1, #5
	strh r1, [r0, #0xc]
	movs r1, #0x10
	strb r1, [r0, #1]
	movs r1, #5
	strb r1, [r0, #3]
	strb r2, [r0, #2]
	strh r3, [r0, #4]
	ldr r1, _08086934 @ =0x00003FFF
	strh r1, [r0, #6]
_0808692E:
	pop {r0}
	bx r0
	.align 2, 0
_08086934: .4byte 0x00003FFF

	thumb_func_start sub_08086938
sub_08086938: @ 0x08086938
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _0808696C @ =sub_08086AC0
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08086970 @ =sub_08086B40
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08086974
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808697C
	.align 2, 0
_0808696C: .4byte sub_08086AC0
_08086970: .4byte sub_08086B40
_08086974:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808697C:
	adds r5, r0, #0
	str r4, [r5, #4]
	movs r1, #0
	movs r0, #0x20
	strh r0, [r5, #2]
	strh r1, [r5]
	cmp r6, #0
	beq _08086990
	ldr r0, _080869F0 @ =sub_08086BE0
	str r0, [r2, #0xc]
_08086990:
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #6
	bl sub_0803C8CC
	adds r4, r0, #0
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r4, #4]
	ldr r7, _080869F4 @ =0x00003FFF
	strh r7, [r4, #6]
	ldr r0, _080869F8 @ =0x0000039A
	bl sub_0803DF24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080869C0
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r4, #4]
	bics r0, r1
	strh r0, [r4, #4]
_080869C0:
	ldr r0, _080869FC @ =0x00000399
	bl sub_0803DF24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080869D8
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r4, #4]
	bics r0, r1
	strh r0, [r4, #4]
_080869D8:
	cmp r6, #0
	beq _08086A04
	movs r0, #1
	strb r0, [r4]
	movs r0, #0x40
	strh r0, [r4, #0xa]
	movs r0, #0x80
	strh r0, [r5, #2]
	ldr r0, _08086A00 @ =0x0000FFFF
	strh r0, [r4, #4]
	strh r7, [r4, #6]
	b _08086A0C
	.align 2, 0
_080869F0: .4byte sub_08086BE0
_080869F4: .4byte 0x00003FFF
_080869F8: .4byte 0x0000039A
_080869FC: .4byte 0x00000399
_08086A00: .4byte 0x0000FFFF
_08086A04:
	movs r0, #2
	strb r0, [r4]
	adds r0, #0xfe
	strh r0, [r4, #0xa]
_08086A0C:
	movs r0, #8
	strb r0, [r4, #3]
	movs r0, #0x1f
	strb r0, [r4, #2]
	ldrh r1, [r4, #8]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r4, #8]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08086A28
sub_08086A28: @ 0x08086A28
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, [r6, #4]
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #6
	bl sub_0803C8CC
	adds r4, r0, #0
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r4, #4]
	ldr r0, _08086A88 @ =0x00003FFF
	strh r0, [r4, #6]
	ldr r0, _08086A8C @ =0x0000039A
	bl sub_0803DF24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08086A60
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r4, #4]
	bics r0, r1
	strh r0, [r4, #4]
_08086A60:
	ldr r0, _08086A90 @ =0x00000399
	bl sub_0803DF24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08086A78
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r4, #4]
	bics r0, r1
	strh r0, [r4, #4]
_08086A78:
	cmp r5, #0
	beq _08086A98
	movs r0, #1
	strb r0, [r4]
	ldr r0, _08086A94 @ =0x0000FFFF
	strh r0, [r4, #4]
	b _08086A9C
	.align 2, 0
_08086A88: .4byte 0x00003FFF
_08086A8C: .4byte 0x0000039A
_08086A90: .4byte 0x00000399
_08086A94: .4byte 0x0000FFFF
_08086A98:
	movs r0, #2
	strb r0, [r4]
_08086A9C:
	movs r0, #8
	strb r0, [r4, #3]
	movs r1, #0
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r4, #0xa]
	movs r0, #0xf8
	lsls r0, r0, #5
	strh r0, [r4, #0xc]
	movs r0, #0x1f
	strb r0, [r4, #1]
	strb r1, [r4, #2]
	movs r0, #1
	strh r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08086AC0
sub_08086AC0: @ 0x08086AC0
	push {r4, r5, lr}
	ldr r2, _08086AE0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08086AE4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r3, r0, r1
	b _08086AEC
	.align 2, 0
_08086AE0: .4byte gCurTask
_08086AE4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
_08086AEC:
	ldr r4, [r3, #4]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08086B02
	ldr r0, [r5]
	bl TaskDestroy
	b _08086B36
_08086B02:
	ldr r0, _08086B3C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _08086B36
	ldrh r0, [r3]
	cmp r0, #0
	beq _08086B36
	ldrh r0, [r3, #2]
	subs r0, #1
	strh r0, [r3, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08086B36
	movs r0, #2
	strh r0, [r3]
	ldr r0, [r5]
	bl TaskDestroy
_08086B36:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08086B3C: .4byte gUnk_03000510

	thumb_func_start sub_08086B40
sub_08086B40: @ 0x08086B40
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08086B5A
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08086B62
_08086B5A:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08086B62:
	ldr r1, [r0, #4]
	ldrh r0, [r0]
	cmp r0, #2
	beq _08086BCE
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #6
	bl sub_0803C8CC
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4]
	movs r5, #0
	movs r0, #0xf0
	lsls r0, r0, #8
	strh r0, [r4, #0xa]
	movs r0, #0xf8
	lsls r0, r0, #5
	strh r0, [r4, #0xc]
	movs r0, #0x1f
	strb r0, [r4, #1]
	movs r0, #8
	strb r0, [r4, #3]
	strb r5, [r4, #2]
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r4, #4]
	ldr r0, _08086BD4 @ =0x0000039A
	bl sub_0803DF24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08086BB2
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r4, #4]
	bics r0, r1
	strh r0, [r4, #4]
_08086BB2:
	ldr r0, _08086BD8 @ =0x00000399
	bl sub_0803DF24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08086BCA
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r4, #4]
	bics r0, r1
	strh r0, [r4, #4]
_08086BCA:
	ldr r0, _08086BDC @ =0x00003FFF
	strh r0, [r4, #6]
_08086BCE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08086BD4: .4byte 0x0000039A
_08086BD8: .4byte 0x00000399
_08086BDC: .4byte 0x00003FFF

	thumb_func_start sub_08086BE0
sub_08086BE0: @ 0x08086BE0
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08086BFA
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08086C02
_08086BFA:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08086C02:
	ldr r1, [r0, #4]
	ldrh r0, [r0]
	cmp r0, #2
	beq _08086C3A
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #6
	bl sub_0803C8CC
	movs r2, #0
	movs r1, #0xf0
	lsls r1, r1, #8
	strh r1, [r0, #0xa]
	movs r1, #0xf8
	lsls r1, r1, #5
	strh r1, [r0, #0xc]
	movs r1, #0x1f
	strb r1, [r0, #1]
	strb r2, [r0, #2]
	movs r1, #8
	strb r1, [r0, #3]
	movs r1, #1
	strb r1, [r0]
	ldr r1, _08086C40 @ =0x0000FFFF
	strh r1, [r0, #4]
	ldr r1, _08086C44 @ =0x00003FFF
	strh r1, [r0, #6]
_08086C3A:
	pop {r0}
	bx r0
	.align 2, 0
_08086C40: .4byte 0x0000FFFF
_08086C44: .4byte 0x00003FFF

	thumb_func_start sub_08086C48
sub_08086C48: @ 0x08086C48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0
	mov sl, r0
	ldr r0, _08086C84 @ =sub_08086DAC
	movs r2, #0xd4
	lsls r2, r2, #6
	mov r1, sl
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0xc
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08086C88
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08086C90
	.align 2, 0
_08086C84: .4byte sub_08086DAC
_08086C88:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08086C90:
	adds r6, r0, #0
	movs r0, #0x3c
	strh r0, [r6, #6]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	strb r0, [r6]
	adds r5, #0x60
	ldrh r0, [r5]
	strh r0, [r6, #2]
	ldr r0, _08086D74 @ =gCurLevelInfo
	mov r8, r0
	ldrb r0, [r6]
	movs r7, #0xcd
	lsls r7, r7, #3
	muls r0, r7, r0
	add r0, r8
	ldr r4, _08086D78 @ =0x0000065E
	adds r0, r0, r4
	ldrb r0, [r0]
	movs r1, #0
	bl sub_08002A2C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldrb r0, [r6]
	muls r0, r7, r0
	add r0, r8
	adds r0, r0, r4
	ldrb r0, [r0]
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r1, sl
	strh r1, [r6, #4]
	str r5, [sp, #4]
	mov r0, sb
	cmp r0, #0
	beq _08086D2C
	ldrb r0, [r6]
	muls r0, r7, r0
	add r0, r8
	adds r0, r0, r4
	ldrb r0, [r0]
	mov r1, sb
	bl sub_08002A1C
	movs r5, #1
	mov r7, r8
_08086CF8:
	ldrb r1, [r6]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r7
	ldr r1, _08086D78 @ =0x0000065E
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08002A2C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	subs r2, r5, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	bl sub_08002A44
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08086CF8
_08086D2C:
	ldr r2, _08086D7C @ =gKirbys
	ldr r0, _08086D80 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6, #2]
	cmp r0, r6
	bne _08086D9C
	cmp sb, sl
	beq _08086D9C
	ldr r0, _08086D84 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08086D9C
	ldr r2, _08086D88 @ =gUnk_030016A0
	ldr r0, _08086D8C @ =gSongTable
	adds r0, #0xa0
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	beq _08086D9C
	ldr r0, [sp, #4]
	ldrh r1, [r0]
	ldr r0, _08086D90 @ =0x00000396
	cmp r1, r0
	bne _08086D94
	adds r0, r2, #0
	bl MPlayStop
	b _08086D9C
	.align 2, 0
_08086D74: .4byte gCurLevelInfo
_08086D78: .4byte 0x0000065E
_08086D7C: .4byte gKirbys
_08086D80: .4byte gUnk_0203AD3C
_08086D84: .4byte gUnk_0203AD20
_08086D88: .4byte gUnk_030016A0
_08086D8C: .4byte gSongTable
_08086D90: .4byte 0x00000396
_08086D94:
	adds r0, r2, #0
	movs r1, #8
	bl m4aMPlayFadeOut
_08086D9C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08086DAC
sub_08086DAC: @ 0x08086DAC
	push {r4, lr}
	ldr r0, _08086DC8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08086DCC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08086DD4
	.align 2, 0
_08086DC8: .4byte gCurTask
_08086DCC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08086DD4:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08086E32
	ldr r2, _08086E38 @ =gKirbys
	ldr r0, _08086E3C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r4, #2]
	cmp r0, r1
	bne _08086E2A
	ldr r2, _08086E40 @ =gCurLevelInfo
	ldrb r1, [r4]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _08086E44 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrh r0, [r4, #4]
	cmp r0, r2
	beq _08086E2A
	ldr r0, _08086E48 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08086E2A
	adds r0, r2, #0
	bl m4aSongNumStart
_08086E2A:
	ldr r0, _08086E4C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08086E32:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08086E38: .4byte gKirbys
_08086E3C: .4byte gUnk_0203AD3C
_08086E40: .4byte gCurLevelInfo
_08086E44: .4byte 0x0000065E
_08086E48: .4byte gUnk_0203AD20
_08086E4C: .4byte gCurTask

	thumb_func_start sub_08086E50
sub_08086E50: @ 0x08086E50
	push {r4, r5, r6, lr}
	ldr r0, _08086E6C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08086E70
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08086E78
	.align 2, 0
_08086E6C: .4byte gCurTask
_08086E70:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08086E78:
	ldr r4, [r1, #8]
	ldrh r0, [r1, #6]
	subs r0, #1
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08086F66
	adds r0, r4, #0
	bl sub_080700D8
	adds r5, r4, #0
	adds r5, #0x56
	ldrb r0, [r5]
	bl sub_080335B4
	movs r0, #3
	adds r1, r4, #0
	bl sub_0806FE64
	adds r0, r4, #0
	bl sub_08098184
	ldr r2, _08086F6C @ =0x00000299
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0x4b
	beq _08086F20
	ldr r1, _08086F70 @ =gKirbys
	ldr r0, _08086F74 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08086F20
	ldrb r0, [r4]
	cmp r0, #0
	bne _08086EE4
	ldrb r0, [r5]
	cmp r0, r2
	bne _08086F20
_08086EE4:
	ldr r1, _08086F78 @ =gUnk_08D60FA4
	ldr r5, _08086F7C @ =gSongTable
	ldr r2, _08086F80 @ =0x00000BDC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08086F08
	ldr r1, _08086F84 @ =0x00000BD8
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08086F20
_08086F08:
	cmp r3, #0
	beq _08086F1A
	ldr r0, _08086F88 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08086F20
_08086F1A:
	ldr r0, _08086F8C @ =0x0000017B
	bl m4aSongNumStart
_08086F20:
	ldr r1, _08086F90 @ =gUnk_08350E58
	ldrb r0, [r6]
	subs r0, #0x43
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08086F36
	adds r0, r4, #0
	bl _call_via_r1
_08086F36:
	ldrb r0, [r6]
	cmp r0, #0x46
	beq _08086F5E
	cmp r0, #0x4b
	beq _08086F5E
	cmp r0, #0x4c
	beq _08086F5E
	cmp r0, #0x48
	beq _08086F5E
	cmp r0, #0x4a
	beq _08086F5E
	cmp r0, #0x49
	beq _08086F5E
	cmp r0, #0x4d
	bhi _08086F5E
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_08086F5E:
	ldr r0, _08086F94 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08086F66:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08086F6C: .4byte 0x00000299
_08086F70: .4byte gKirbys
_08086F74: .4byte gUnk_0203AD3C
_08086F78: .4byte gUnk_08D60FA4
_08086F7C: .4byte gSongTable
_08086F80: .4byte 0x00000BDC
_08086F84: .4byte 0x00000BD8
_08086F88: .4byte gUnk_0203AD10
_08086F8C: .4byte 0x0000017B
_08086F90: .4byte gUnk_08350E58
_08086F94: .4byte gCurTask

	thumb_func_start sub_08086F98
sub_08086F98: @ 0x08086F98
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	bl sub_080886A8
	ldr r0, _08086FD4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08086FDC
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r1, _08086FD8 @ =0x000003B7
	adds r0, r5, #0
	movs r2, #0x5a
	bl sub_0808859C
	b _080870AA
	.align 2, 0
_08086FD4: .4byte gUnk_0203AD10
_08086FD8: .4byte 0x000003B7
_08086FDC:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08086FF0
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	subs r6, #0x60
	b _08086FF8
_08086FF0:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	adds r6, #0x60
_08086FF8:
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov r8, r0
	movs r0, #1
	bl sub_08019DA8
	cmp r0, #0
	beq _0808701C
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	movs r3, #1
	bl sub_08088A38
	b _080870A2
_0808701C:
	movs r4, #0
	ldr r1, _08087034 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _08087038 @ =gUnk_020229E0
	mov sb, r7
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _08087050
	.align 2, 0
_08087034: .4byte gUnk_020229D4
_08087038: .4byte gUnk_020229E0
_0808703C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08087058
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08087050:
	cmp r0, #0
	bne _0808703C
	orrs r2, r3
	str r2, [r1]
_08087058:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, sb
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r6, [r1, #6]
	mov r0, r8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x65
	strb r0, [r1, #0xc]
	strb r4, [r1, #0xe]
	strb r3, [r1, #0xf]
	strb r3, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
_080870A2:
	adds r0, r5, #0
	movs r1, #2
	bl sub_08088700
_080870AA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080870B8
sub_080870B8: @ 0x080870B8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_080886A8
	ldr r0, _080870EC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080870F4
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r1, _080870F0 @ =0x000003B7
	adds r0, r5, #0
	movs r2, #0x5a
	bl sub_0808859C
	b _0808719E
	.align 2, 0
_080870EC: .4byte gUnk_0203AD10
_080870F0: .4byte 0x000003B7
_080870F4:
	movs r0, #4
	bl sub_08019DA8
	cmp r0, #0
	beq _0808710C
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #0x20
	movs r3, #4
	bl sub_08088A38
	b _08087196
_0808710C:
	movs r4, #0
	ldr r1, _08087124 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _08087128 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _08087140
	.align 2, 0
_08087124: .4byte gUnk_020229D4
_08087128: .4byte gUnk_020229E0
_0808712C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08087148
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08087140:
	cmp r0, #0
	bne _0808712C
	orrs r2, r3
	str r2, [r1]
_08087148:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	movs r0, #0x80
	strh r0, [r1, #6]
	movs r0, #0x20
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x65
	strb r0, [r1, #0xc]
	movs r0, #4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	strb r3, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
_08087196:
	adds r0, r5, #0
	movs r1, #5
	bl sub_08088700
_0808719E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080871A4
sub_080871A4: @ 0x080871A4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_080886A8
	ldr r0, _080871D8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080871E0
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r1, _080871DC @ =0x000003B7
	adds r0, r5, #0
	movs r2, #0x5a
	bl sub_0808859C
	b _0808728A
	.align 2, 0
_080871D8: .4byte gUnk_0203AD10
_080871DC: .4byte 0x000003B7
_080871E0:
	movs r0, #6
	bl sub_08019DA8
	cmp r0, #0
	beq _080871F8
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #0x50
	movs r3, #6
	bl sub_08088A38
	b _08087282
_080871F8:
	movs r4, #0
	ldr r1, _08087210 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _08087214 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _0808722C
	.align 2, 0
_08087210: .4byte gUnk_020229D4
_08087214: .4byte gUnk_020229E0
_08087218:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08087234
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_0808722C:
	cmp r0, #0
	bne _08087218
	orrs r2, r3
	str r2, [r1]
_08087234:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	movs r0, #0x80
	strh r0, [r1, #6]
	movs r0, #0x50
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x65
	strb r0, [r1, #0xc]
	movs r0, #6
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	strb r3, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
_08087282:
	adds r0, r5, #0
	movs r1, #7
	bl sub_08088700
_0808728A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08087290
sub_08087290: @ 0x08087290
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	bl sub_080886A8
	ldr r0, _080872C8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080872D0
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r1, _080872CC @ =0x000003B7
	adds r0, r5, #0
	movs r2, #0x5a
	bl sub_0808859C
	b _08087384
	.align 2, 0
_080872C8: .4byte gUnk_0203AD10
_080872CC: .4byte 0x000003B7
_080872D0:
	movs r0, #0x94
	lsls r0, r0, #2
	mov r8, r0
	movs r0, #5
	bl sub_08019DA8
	cmp r0, #0
	beq _080872EE
	adds r0, r5, #0
	mov r1, r8
	movs r2, #0xe5
	movs r3, #5
	bl sub_08088A38
	b _08087376
_080872EE:
	movs r4, #0
	ldr r1, _08087304 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _08087308 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _08087320
	.align 2, 0
_08087304: .4byte gUnk_020229D4
_08087308: .4byte gUnk_020229E0
_0808730C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08087328
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08087320:
	cmp r0, #0
	bne _0808730C
	orrs r2, r3
	str r2, [r1]
_08087328:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, r8
	strh r0, [r1, #6]
	movs r0, #0xe5
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x65
	strb r0, [r1, #0xc]
	movs r0, #5
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	strb r3, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
_08087376:
	adds r0, r5, #0
	bl sub_080886A8
	adds r0, r5, #0
	movs r1, #6
	bl sub_08088700
_08087384:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08087390
sub_08087390: @ 0x08087390
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_080886A8
	ldr r0, _080873C4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080873CC
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r1, _080873C8 @ =0x000003B7
	adds r0, r5, #0
	movs r2, #0x5a
	bl sub_0808859C
	b _08087474
	.align 2, 0
_080873C4: .4byte gUnk_0203AD10
_080873C8: .4byte 0x000003B7
_080873CC:
	movs r0, #0
	bl sub_08019DA8
	cmp r0, #0
	beq _080873E4
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #0x50
	movs r3, #0
	bl sub_08088A38
	b _0808746C
_080873E4:
	movs r4, #0
	ldr r1, _080873FC @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _08087400 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _08087418
	.align 2, 0
_080873FC: .4byte gUnk_020229D4
_08087400: .4byte gUnk_020229E0
_08087404:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08087420
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08087418:
	cmp r0, #0
	bne _08087404
	orrs r2, r3
	str r2, [r1]
_08087420:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r3, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r2, #0
	movs r0, #0x80
	strh r0, [r1, #6]
	movs r0, #0x50
	strh r0, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0x65
	strb r0, [r1, #0xc]
	strb r2, [r1, #0xe]
	strb r2, [r1, #0xf]
	strb r2, [r1, #0x10]
	strh r3, [r1, #0x22]
	strh r3, [r1, #0x1a]
	strh r3, [r1, #0x1c]
	strh r3, [r1, #0x1e]
	strh r3, [r1, #0x20]
	strb r2, [r1, #0x11]
	strh r3, [r1, #0x12]
	strh r3, [r1, #0x14]
	strh r3, [r1, #0x16]
	strh r3, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
_0808746C:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08088700
_08087474:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808747C
sub_0808747C: @ 0x0808747C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	cmp r0, #0
	beq _08087490
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _08087586
_08087490:
	movs r0, #1
	movs r1, #3
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _08087586
	adds r0, r5, #0
	bl sub_080886A8
	ldr r0, _080874D4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080874DC
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r1, _080874D8 @ =0x000003B7
	adds r0, r5, #0
	movs r2, #0x5a
	bl sub_0808859C
	b _08087586
	.align 2, 0
_080874D4: .4byte gUnk_0203AD10
_080874D8: .4byte 0x000003B7
_080874DC:
	movs r0, #2
	bl sub_08019DA8
	cmp r0, #0
	beq _080874F4
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #0x50
	movs r3, #2
	bl sub_08088A38
	b _0808757E
_080874F4:
	movs r4, #0
	ldr r1, _0808750C @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _08087510 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _08087528
	.align 2, 0
_0808750C: .4byte gUnk_020229D4
_08087510: .4byte gUnk_020229E0
_08087514:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08087530
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08087528:
	cmp r0, #0
	bne _08087514
	orrs r2, r3
	str r2, [r1]
_08087530:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	movs r0, #0x80
	strh r0, [r1, #6]
	movs r0, #0x50
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x65
	strb r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	strb r3, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
_0808757E:
	adds r0, r5, #0
	movs r1, #3
	bl sub_08088700
_08087586:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808758C
sub_0808758C: @ 0x0808758C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_080886A8
	ldr r0, _080875C0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080875C8
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r1, _080875C4 @ =0x000003B7
	adds r0, r5, #0
	movs r2, #0x5a
	bl sub_0808859C
	b _08087672
	.align 2, 0
_080875C0: .4byte gUnk_0203AD10
_080875C4: .4byte 0x000003B7
_080875C8:
	movs r0, #3
	bl sub_08019DA8
	cmp r0, #0
	beq _080875E0
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #0xf8
	movs r3, #3
	bl sub_08088A38
	b _0808766A
_080875E0:
	movs r4, #0
	ldr r1, _080875F8 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080875FC @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _08087614
	.align 2, 0
_080875F8: .4byte gUnk_020229D4
_080875FC: .4byte gUnk_020229E0
_08087600:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _0808761C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08087614:
	cmp r0, #0
	bne _08087600
	orrs r2, r3
	str r2, [r1]
_0808761C:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	movs r0, #0x80
	strh r0, [r1, #6]
	movs r0, #0xf8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x65
	strb r0, [r1, #0xc]
	movs r0, #3
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	strb r3, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
_0808766A:
	adds r0, r5, #0
	movs r1, #4
	bl sub_08088700
_08087672:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08087678
sub_08087678: @ 0x08087678
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _0808776A
	adds r0, r5, #0
	bl sub_080886A8
	ldr r0, _080876B8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080876C0
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r1, _080876BC @ =0x000003B7
	adds r0, r5, #0
	movs r2, #0x5a
	bl sub_0808859C
	b _0808776A
	.align 2, 0
_080876B8: .4byte gUnk_0203AD10
_080876BC: .4byte 0x000003B7
_080876C0:
	movs r0, #7
	bl sub_08019DA8
	cmp r0, #0
	beq _080876D8
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #0x50
	movs r3, #7
	bl sub_08088A38
	b _08087762
_080876D8:
	movs r4, #0
	ldr r1, _080876F0 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080876F4 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _0808770C
	.align 2, 0
_080876F0: .4byte gUnk_020229D4
_080876F4: .4byte gUnk_020229E0
_080876F8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08087714
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_0808770C:
	cmp r0, #0
	bne _080876F8
	orrs r2, r3
	str r2, [r1]
_08087714:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	movs r0, #0x80
	strh r0, [r1, #6]
	movs r0, #0x50
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x65
	strb r0, [r1, #0xc]
	movs r0, #7
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	strb r3, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
_08087762:
	adds r0, r5, #0
	movs r1, #8
	bl sub_08088700
_0808776A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08087770
sub_08087770: @ 0x08087770
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08087794 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	mov r8, r2
	cmp r0, #0
	beq _08087798
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _080877A0
	.align 2, 0
_08087794: .4byte gCurTask
_08087798:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_080877A0:
	movs r2, #0
	movs r3, #0
	ldr r0, _08087808 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r2, r0
	bhs _080877F0
	ldr r4, _0808780C @ =gKirbys
	mov ip, r4
	ldrh r5, [r1]
	ldr r7, _08087810 @ =gUnk_02026D50
	adds r4, r0, #0
	ldr r6, _08087814 @ =gCurLevelInfo
_080877B8:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	add r0, ip
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r5
	bne _080877E6
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	adds r0, r0, r6
	ldr r1, _08087818 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080877E6
	movs r2, #1
_080877E6:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r4
	blo _080877B8
_080877F0:
	cmp r2, #0
	bne _080877FC
	mov r4, r8
	ldr r0, [r4]
	bl TaskDestroy
_080877FC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08087808: .4byte gUnk_0203AD44
_0808780C: .4byte gKirbys
_08087810: .4byte gUnk_02026D50
_08087814: .4byte gCurLevelInfo
_08087818: .4byte 0x0000065E

	thumb_func_start sub_0808781C
sub_0808781C: @ 0x0808781C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov sb, r0
	ldr r2, _08087848 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808784C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08087854
	.align 2, 0
_08087848: .4byte gCurTask
_0808784C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08087854:
	adds r3, r0, #0
	movs r5, #0
	movs r4, #0
	ldr r0, _080878B8 @ =gUnk_0203AD44
	ldrb r1, [r0]
	mov ip, r0
	cmp r5, r1
	bhs _080878AA
	ldr r2, _080878BC @ =gKirbys
	mov sl, r2
	ldrh r7, [r3]
	ldr r0, _080878C0 @ =gUnk_02026D50
	mov r8, r0
	adds r6, r1, #0
	ldr r2, _080878C4 @ =gCurLevelInfo
_08087872:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r4, r0
	add r0, sl
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r7
	bne _080878A0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r4, r0
	adds r0, r0, r2
	ldr r1, _080878C8 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, r8
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080878A0
	movs r5, #1
_080878A0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r6
	blo _08087872
_080878AA:
	cmp r5, #0
	bne _080878D0
	ldr r2, _080878CC @ =gCurTask
	ldr r0, [r2]
	bl TaskDestroy
	b _08087A68
	.align 2, 0
_080878B8: .4byte gUnk_0203AD44
_080878BC: .4byte gKirbys
_080878C0: .4byte gUnk_02026D50
_080878C4: .4byte gCurLevelInfo
_080878C8: .4byte 0x0000065E
_080878CC: .4byte gCurTask
_080878D0:
	movs r0, #0
	mov r8, r0
	mov r1, ip
	ldrb r0, [r1]
	cmp r8, r0
	bhs _0808791E
	ldr r6, _08087A10 @ =gKirbys
	ldrh r4, [r3]
	adds r2, r0, #0
	movs r5, #0xd4
	lsls r5, r5, #1
_080878E6:
	mov r0, r8
	muls r0, r5, r0
	adds r1, r0, r6
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r4
	bne _08087910
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bhi _08087908
	b _08087A68
_08087908:
	adds r0, r1, #0
	adds r0, #0x56
	ldrb r0, [r0]
	mov sb, r0
_08087910:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r8, r2
	blo _080878E6
_0808791E:
	ldr r0, _08087A14 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	mov r1, sb
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08087934
	b _08087A68
_08087934:
	ldrh r1, [r3, #4]
	movs r2, #4
	ldrsh r0, [r3, r2]
	cmp r0, #0
	beq _08087940
	b _08087A64
_08087940:
	movs r0, #0
	mov r8, r0
	mov r1, ip
	ldrb r1, [r1]
	cmp r8, r1
	blo _0808794E
	b _08087A68
_0808794E:
	mov r2, sp
	adds r2, #1
	str r2, [sp, #4]
_08087954:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r7, r8
	muls r7, r0, r7
	ldr r0, _08087A10 @ =gKirbys
	adds r6, r7, r0
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r1, [r3]
	ldrh r0, [r0]
	adds r2, r1, #0
	cmp r0, r2
	bne _08087A3E
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08087A24
	ldrb r0, [r3, #6]
	mov r1, r8
	asrs r0, r1
	movs r1, #1
	mov sl, r1
	ands r0, r1
	cmp r0, #0
	bne _08087A24
	ldrh r0, [r3, #2]
	mov r1, sp
	ldr r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_08002D40
	ldr r3, [sp, #8]
	ldrh r0, [r3, #2]
	movs r2, #0x83
	lsls r2, r2, #1
	adds r1, r6, r2
	strh r0, [r1]
	mov r0, sp
	ldrb r1, [r0]
	adds r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	ldr r1, [sp, #4]
	ldrb r0, [r1]
	adds r2, #2
	adds r1, r6, r2
	strh r0, [r1]
	ldr r0, _08087A10 @ =gKirbys
	adds r0, #8
	adds r5, r7, r0
	ldr r4, [r5]
	movs r0, #0x80
	lsls r0, r0, #3
	mov sb, r0
	ands r4, r0
	rsbs r4, r4, #0
	lsrs r4, r4, #0x1f
	ldr r1, _08087A18 @ =gUnk_02020EEC
	adds r2, r7, r1
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	ldr r1, _08087A1C @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r2]
	adds r0, r6, #0
	str r3, [sp, #8]
	bl sub_0805545C
	ldr r3, [sp, #8]
	cmp r4, #0
	beq _080879FC
	ldr r0, [r5]
	mov r2, sb
	orrs r0, r2
	str r0, [r5]
_080879FC:
	mov r0, sl
	mov r1, r8
	lsls r0, r1
	ldrb r1, [r3, #6]
	orrs r0, r1
	strb r0, [r3, #6]
	ldr r2, _08087A20 @ =gUnk_0203AD44
	mov ip, r2
	b _08087A4A
	.align 2, 0
_08087A10: .4byte gKirbys
_08087A14: .4byte gUnk_03000510
_08087A18: .4byte gUnk_02020EEC
_08087A1C: .4byte 0xFFFBFFFF
_08087A20: .4byte gUnk_0203AD44
_08087A24:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, _08087A60 @ =gKirbys
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r1, [r0]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	beq _08087A4A
_08087A3E:
	movs r1, #1
	mov r2, r8
	lsls r1, r2
	ldrb r0, [r3, #6]
	bics r0, r1
	strb r0, [r3, #6]
_08087A4A:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r0, ip
	ldrb r0, [r0]
	cmp r8, r0
	bhs _08087A5E
	b _08087954
_08087A5E:
	b _08087A68
	.align 2, 0
_08087A60: .4byte gKirbys
_08087A64:
	subs r0, r1, #1
	strh r0, [r3, #4]
_08087A68:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08087A78
sub_08087A78: @ 0x08087A78
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08087A9C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	beq _08087AA0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08087AA8
	.align 2, 0
_08087A9C: .4byte gCurTask
_08087AA0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08087AA8:
	adds r4, r0, #0
	movs r2, #0
	movs r3, #0
	ldr r0, _08087B0C @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r2, r0
	bhs _08087AFC
	ldr r1, _08087B10 @ =gKirbys
	mov r8, r1
	ldrh r6, [r4, #2]
	ldr r1, _08087B14 @ =gUnk_02026D50
	mov ip, r1
	adds r5, r0, #0
	ldr r7, _08087B18 @ =gCurLevelInfo
_08087AC4:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	add r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r6
	bne _08087AF2
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	adds r0, r0, r7
	ldr r1, _08087B1C @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, ip
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08087AF2
	movs r2, #1
_08087AF2:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r5
	blo _08087AC4
_08087AFC:
	cmp r2, #0
	bne _08087B20
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _08087B42
	.align 2, 0
_08087B0C: .4byte gUnk_0203AD44
_08087B10: .4byte gKirbys
_08087B14: .4byte gUnk_02026D50
_08087B18: .4byte gCurLevelInfo
_08087B1C: .4byte 0x0000065E
_08087B20:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08087B42
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08087B42
	bl sub_080027A8
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, _08087B50 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08087B54 @ =sub_08087B58
	str r0, [r1, #8]
_08087B42:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08087B50: .4byte gCurTask
_08087B54: .4byte sub_08087B58

	thumb_func_start sub_08087B58
sub_08087B58: @ 0x08087B58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08087B80 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	mov sl, r2
	cmp r0, #0
	beq _08087B84
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08087B8C
	.align 2, 0
_08087B80: .4byte gCurTask
_08087B84:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08087B8C:
	adds r4, r0, #0
	movs r5, #0
	movs r3, #0
	ldr r0, _08087BF0 @ =gUnk_0203AD44
	ldrb r1, [r0]
	mov sb, r0
	cmp r5, r1
	bhs _08087BE2
	ldr r0, _08087BF4 @ =gKirbys
	mov r8, r0
	ldrh r6, [r4, #2]
	ldr r0, _08087BF8 @ =gUnk_02026D50
	mov ip, r0
	adds r2, r1, #0
	ldr r7, _08087BFC @ =gCurLevelInfo
_08087BAA:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	add r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r6
	bne _08087BD8
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	adds r0, r0, r7
	ldr r1, _08087C00 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, ip
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08087BD8
	movs r5, #1
_08087BD8:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r2
	blo _08087BAA
_08087BE2:
	cmp r5, #0
	bne _08087C04
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	b _08087CD2
	.align 2, 0
_08087BF0: .4byte gUnk_0203AD44
_08087BF4: .4byte gKirbys
_08087BF8: .4byte gUnk_02026D50
_08087BFC: .4byte gCurLevelInfo
_08087C00: .4byte 0x0000065E
_08087C04:
	movs r3, #0
	mov r1, sb
	ldrb r0, [r1]
	cmp r3, r0
	bhs _08087C42
	ldr r7, _08087C84 @ =gKirbys
	ldrh r5, [r4, #2]
	adds r2, r0, #0
	movs r6, #0xd4
	lsls r6, r6, #1
_08087C18:
	adds r0, r3, #0
	muls r0, r6, r0
	adds r1, r0, r7
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r5
	bne _08087C38
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _08087CD2
_08087C38:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r2
	blo _08087C18
_08087C42:
	ldr r0, _08087C88 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r4]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _08087CD2
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08087CD2
	movs r3, #0
	mov r0, sb
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08087CB0
	ldr r1, _08087C84 @ =gKirbys
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r2, [r4, #2]
	ldrh r0, [r0]
	adds r5, r1, #0
	cmp r0, r2
	bne _08087C8C
	movs r0, #0
	strb r0, [r4]
	b _08087CB0
	.align 2, 0
_08087C84: .4byte gKirbys
_08087C88: .4byte gUnk_03000510
_08087C8C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r1, sb
	ldrb r1, [r1]
	cmp r3, r1
	bhs _08087CB0
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	adds r0, r0, r5
	adds r0, #0x60
	ldrh r1, [r0]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bne _08087C8C
	strb r3, [r4]
_08087CB0:
	ldrb r0, [r4]
	bl sub_08033540
	ldrb r0, [r4]
	bl sub_0803CA20
	ldr r1, _08087CE0 @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	movs r0, #0x28
	strh r0, [r4, #4]
	ldr r0, _08087CE4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08087CE8 @ =sub_08087CEC
	str r0, [r1, #8]
_08087CD2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08087CE0: .4byte 0x0000FFFF
_08087CE4: .4byte gCurTask
_08087CE8: .4byte sub_08087CEC

	thumb_func_start sub_08087CEC
sub_08087CEC: @ 0x08087CEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	mov sl, r0
	mov r8, r0
	ldr r2, _08087D18 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08087D1C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08087D24
	.align 2, 0
_08087D18: .4byte gCurTask
_08087D1C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08087D24:
	adds r5, r0, #0
	movs r4, #0
	movs r3, #0
	ldr r0, _08087D88 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r4, r0
	bhs _08087D78
	ldr r1, _08087D8C @ =gKirbys
	mov sb, r1
	ldrh r6, [r5, #2]
	ldr r1, _08087D90 @ =gUnk_02026D50
	mov ip, r1
	adds r2, r0, #0
	ldr r7, _08087D94 @ =gCurLevelInfo
_08087D40:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	add r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r6
	bne _08087D6E
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	adds r0, r0, r7
	ldr r1, _08087D98 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, ip
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08087D6E
	movs r4, #1
_08087D6E:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r2
	blo _08087D40
_08087D78:
	cmp r4, #0
	bne _08087DA0
	ldr r1, _08087D9C @ =gCurTask
	ldr r0, [r1]
	bl TaskDestroy
	b _08087EA4
	.align 2, 0
_08087D88: .4byte gUnk_0203AD44
_08087D8C: .4byte gKirbys
_08087D90: .4byte gUnk_02026D50
_08087D94: .4byte gCurLevelInfo
_08087D98: .4byte 0x0000065E
_08087D9C: .4byte gCurTask
_08087DA0:
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08087DD0
	ldrb r0, [r5]
	bl sub_0803C95C
	ldr r1, _08087DC8 @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	ldr r0, _08087DCC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08087EA4
	.align 2, 0
_08087DC8: .4byte 0x0000FFFF
_08087DCC: .4byte gCurTask
_08087DD0:
	cmp r0, #4
	bne _08087EA4
	ldrb r0, [r5]
	bl sub_080335B4
	movs r4, #0
	ldr r0, _08087E1C @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r4, r0
	bhs _08087E10
	movs r6, #0xd4
	lsls r6, r6, #1
	ldrh r2, [r5, #2]
	adds r1, r0, #0
	ldr r3, _08087E20 @ =gKirbys
_08087DEE:
	adds r0, r4, #0
	muls r0, r6, r0
	adds r0, r0, r3
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r2, r0
	bne _08087E06
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08087E06:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r1
	blo _08087DEE
_08087E10:
	mov r0, r8
	cmp r0, #1
	bne _08087E24
	movs r7, #1
	b _08087E3C
	.align 2, 0
_08087E1C: .4byte gUnk_0203AD44
_08087E20: .4byte gKirbys
_08087E24:
	ldr r2, _08087EB4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08087EB8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08087EBC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	adds r0, #2
	adds r7, r0, #0
_08087E3C:
	movs r4, #0
	ldr r0, _08087EC0 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r4, r0
	bhs _08087EA4
	ldr r6, _08087EC4 @ =gUnk_08352DBE
	adds r0, r6, #1
	mov sb, r0
_08087E4C:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _08087EC8 @ =gKirbys
	adds r2, r1, r0
	adds r1, r2, #0
	adds r1, #0x60
	ldrh r0, [r5, #2]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08087E96
	ldrb r0, [r5, #1]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r5, #1]
	lsls r0, r0, #1
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #4]
	adds r0, r2, #0
	mov r1, sl
	mov r2, r8
	adds r3, r7, #0
	bl sub_0804BD98
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_08087E96:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08087EC0 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r4, r0
	blo _08087E4C
_08087EA4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08087EB4: .4byte gRngVal
_08087EB8: .4byte 0x00196225
_08087EBC: .4byte 0x3C6EF35F
_08087EC0: .4byte gUnk_0203AD44
_08087EC4: .4byte gUnk_08352DBE
_08087EC8: .4byte gKirbys

	thumb_func_start sub_08087ECC
sub_08087ECC: @ 0x08087ECC
	push {r4, r5, r6, r7, lr}
	movs r6, #1
	ldr r2, _08087EEC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	mov ip, r2
	cmp r0, #0
	beq _08087EF0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08087EF8
	.align 2, 0
_08087EEC: .4byte gCurTask
_08087EF0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08087EF8:
	adds r4, r0, #0
	movs r2, #0
	ldr r0, _08087F90 @ =gUnk_0203AD44
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r2, r0
	bhs _08087F44
	ldr r7, _08087F94 @ =gKirbys
_08087F08:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r3, r0, r7
	movs r0, #2
	ldrsh r1, [r4, r0]
	adds r0, r3, #0
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r1, r0
	bne _08087F38
	movs r0, #1
	lsls r0, r2
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
	ldr r1, [r3, #0x5c]
	movs r0, #8
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #6
	orrs r1, r0
	str r1, [r3, #0x5c]
	movs r6, #0
_08087F38:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r1, [r5]
	cmp r2, r1
	blo _08087F08
_08087F44:
	cmp r6, #0
	beq _08087F88
	movs r2, #0
	ldrb r0, [r5]
	cmp r2, r0
	bhs _08087F80
	movs r7, #0xd4
	lsls r7, r7, #1
	ldr r6, _08087F94 @ =gKirbys
_08087F56:
	adds r0, r2, #0
	muls r0, r7, r0
	adds r3, r0, r6
	ldrh r0, [r4]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08087F74
	ldr r0, [r3, #0x5c]
	subs r1, #9
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x5c]
_08087F74:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r1, [r5]
	cmp r2, r1
	blo _08087F56
_08087F80:
	mov r1, ip
	ldr r0, [r1]
	bl TaskDestroy
_08087F88:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08087F90: .4byte gUnk_0203AD44
_08087F94: .4byte gKirbys

	thumb_func_start sub_08087F98
sub_08087F98: @ 0x08087F98
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08087FB8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08087FBC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08087FC4
	.align 2, 0
_08087FB8: .4byte gCurTask
_08087FBC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08087FC4:
	ldr r5, [r4, #4]
	ldr r0, _08088000 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r6, r5, #0
	adds r6, #0x56
	ldrb r3, [r6]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _0808804E
	ldr r0, _08088004 @ =0x00000103
	adds r7, r5, r0
	ldrb r0, [r7]
	cmp r0, #0
	beq _08088010
	ldr r0, _08088008 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	cmp r0, r3
	bne _08087FF6
	ldrb r0, [r7]
	bl sub_08035E28
_08087FF6:
	ldr r0, _0808800C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808804E
	.align 2, 0
_08088000: .4byte gUnk_03000510
_08088004: .4byte 0x00000103
_08088008: .4byte gUnk_0203AD3C
_0808800C: .4byte gCurTask
_08088010:
	ldrh r0, [r4, #2]
	subs r0, #1
	strh r0, [r4, #2]
	ldr r1, _08088058 @ =gUnk_0203AD3C
	mov r8, r1
	ldrb r0, [r1]
	ldrb r1, [r6]
	cmp r0, r1
	bne _0808802E
	ldrb r0, [r4]
	bl sub_08035E28
	adds r0, r5, #0
	bl sub_08035F50
_0808802E:
	movs r1, #2
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0808804E
	mov r1, r8
	ldrb r0, [r1]
	ldrb r6, [r6]
	cmp r0, r6
	bne _08088046
	ldrb r0, [r7]
	bl sub_08035E28
_08088046:
	ldr r0, _0808805C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0808804E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08088058: .4byte gUnk_0203AD3C
_0808805C: .4byte gCurTask

	thumb_func_start sub_08088060
sub_08088060: @ 0x08088060
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08088090 @ =sub_080854E8
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088094
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _0808809C
	.align 2, 0
_08088090: .4byte sub_080854E8
_08088094:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_0808809C:
	str r4, [r1, #4]
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080880AC
sub_080880AC: @ 0x080880AC
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080880E4 @ =sub_080850C8
	ldr r1, _080880E8 @ =0x0000356E
	adds r2, r5, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _080880EC @ =sub_080887A0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080880F0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _080880F8
	.align 2, 0
_080880E4: .4byte sub_080850C8
_080880E8: .4byte 0x0000356E
_080880EC: .4byte sub_080887A0
_080880F0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_080880F8:
	str r4, [r1, #4]
	movs r0, #0
	strh r5, [r1, #2]
	strh r0, [r1]
	ldr r0, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	str r0, [r4, #0x5c]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08088118
sub_08088118: @ 0x08088118
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08088148 @ =sub_080863C0
	ldr r2, _0808814C @ =0x00003564
	ldr r1, _08088150 @ =sub_080887EC
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088154
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _0808815C
	.align 2, 0
_08088148: .4byte sub_080863C0
_0808814C: .4byte 0x00003564
_08088150: .4byte sub_080887EC
_08088154:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_0808815C:
	str r4, [r1, #4]
	movs r0, #0
	strh r0, [r1, #2]
	ldr r2, _08088174 @ =0x00000103
	adds r0, r4, r2
	ldrb r0, [r0]
	strh r0, [r1]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08088174: .4byte 0x00000103

	thumb_func_start sub_08088178
sub_08088178: @ 0x08088178
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080881A8 @ =sub_08085180
	ldr r2, _080881AC @ =0x0000356E
	ldr r1, _080881B0 @ =sub_080887A0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080881B4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _080881BC
	.align 2, 0
_080881A8: .4byte sub_08085180
_080881AC: .4byte 0x0000356E
_080881B0: .4byte sub_080887A0
_080881B4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_080881BC:
	str r4, [r1, #4]
	strh r5, [r1, #2]
	adds r0, r4, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	str r0, [r4, #0x5c]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080881E0
sub_080881E0: @ 0x080881E0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08088214 @ =sub_080856F4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08088218 @ =sub_08088884
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808821C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08088224
	.align 2, 0
_08088214: .4byte sub_080856F4
_08088218: .4byte sub_08088884
_0808821C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08088224:
	str r4, [r1, #4]
	movs r0, #0
	strh r5, [r1, #2]
	strh r0, [r1]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08088234
sub_08088234: @ 0x08088234
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r0, _0808826C @ =sub_080859B4
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088270
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08088278
	.align 2, 0
_0808826C: .4byte sub_080859B4
_08088270:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08088278:
	adds r2, r7, #0
	adds r2, #0x56
	ldrb r0, [r2]
	str r0, [r4, #4]
	strh r6, [r4, #2]
	strh r5, [r4]
	adds r1, r5, #0
	ldr r3, _080882AC @ =gCurLevelInfo
	ldrb r2, [r2]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _080882B0 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	movs r2, #2
	ldrsh r1, [r4, r2]
	str r1, [r0]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080882AC: .4byte gCurLevelInfo
_080882B0: .4byte 0x0000065E

	thumb_func_start sub_080882B4
sub_080882B4: @ 0x080882B4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080882E4 @ =sub_08085A54
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080882E8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _080882F0
	.align 2, 0
_080882E4: .4byte sub_08085A54
_080882E8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_080882F0:
	str r4, [r2, #8]
	movs r1, #0
	strh r1, [r2, #2]
	strh r1, [r2]
	movs r0, #0x80
	strh r0, [r2, #4]
	strh r1, [r2, #6]
	ldr r1, _08088320 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	movs r2, #0xf6
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r0, r0, r1
	movs r1, #2
	str r1, [r0]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08088320: .4byte gCurLevelInfo

	thumb_func_start sub_08088324
sub_08088324: @ 0x08088324
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08088354 @ =sub_080888B8
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08088358 @ =sub_0808891C
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808835C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08088364
	.align 2, 0
_08088354: .4byte sub_080888B8
_08088358: .4byte sub_0808891C
_0808835C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08088364:
	str r4, [r2, #4]
	movs r1, #0
	movs r0, #0xc8
	strh r0, [r2, #2]
	strh r1, [r2]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_08033540
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808838C
sub_0808838C: @ 0x0808838C
	ldr r1, _08088394 @ =gUnk_0300051C
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08088394: .4byte gUnk_0300051C

	thumb_func_start sub_08088398
sub_08088398: @ 0x08088398
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080883CC @ =sub_08085E60
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080883D0 @ =sub_0808895C
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080883D4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _080883DC
	.align 2, 0
_080883CC: .4byte sub_08085E60
_080883D0: .4byte sub_0808895C
_080883D4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_080883DC:
	str r4, [r1, #8]
	str r5, [r1, #4]
	movs r0, #0
	strb r0, [r1, #1]
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	strh r0, [r1, #2]
	adds r0, r1, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08088400
sub_08088400: @ 0x08088400
	str r1, [r0, #4]
	ldrb r2, [r0]
	movs r1, #0xf
	ands r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start sub_0808840C
sub_0808840C: @ 0x0808840C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0808843C @ =sub_080864E8
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08088440 @ =sub_080889C0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088444
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _0808844C
	.align 2, 0
_0808843C: .4byte sub_080864E8
_08088440: .4byte sub_080889C0
_08088444:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_0808844C:
	str r4, [r1, #4]
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0808845C
sub_0808845C: @ 0x0808845C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r1, r0
	cmp r1, #0
	bne _080884BA
	ldr r0, _0808849C @ =sub_080865E8
	movs r2, #0xd4
	lsls r2, r2, #6
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080884A0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _080884A8
	.align 2, 0
_0808849C: .4byte sub_080865E8
_080884A0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_080884A8:
	str r4, [r1, #4]
	movs r0, #0
	strh r5, [r1, #2]
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r4, #8]
_080884BA:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080884C4
sub_080884C4: @ 0x080884C4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, [r4, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	bne _0808851E
	ldr r0, _08088500 @ =sub_0808668C
	movs r2, #0xd4
	lsls r2, r2, #6
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088504
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _0808850C
	.align 2, 0
_08088500: .4byte sub_0808668C
_08088504:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_0808850C:
	str r4, [r1, #4]
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r4, #0x5c]
_0808851E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08088528
sub_08088528: @ 0x08088528
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08088558 @ =sub_08086E50
	ldr r2, _0808855C @ =0x00002F9C
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088560
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08088568
	.align 2, 0
_08088558: .4byte sub_08086E50
_0808855C: .4byte 0x00002F9C
_08088560:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08088568:
	movs r0, #0x1c
	strh r0, [r1, #6]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	strh r0, [r1, #2]
	str r4, [r1, #8]
	ldr r1, _08088598 @ =gUnk_08350E34
	adds r0, r4, #0
	bl sub_080860A8
	movs r0, #4
	adds r1, r4, #0
	bl sub_0806FE64
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_08033540
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08088598: .4byte gUnk_08350E34

	thumb_func_start sub_0808859C
sub_0808859C: @ 0x0808859C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r0, _080885D4 @ =sub_0808781C
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080885D8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _080885E0
	.align 2, 0
_080885D4: .4byte sub_0808781C
_080885D8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_080885E0:
	movs r0, #0
	strh r4, [r2, #2]
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r1, [r1]
	strh r1, [r2]
	strh r5, [r2, #4]
	strb r0, [r2, #6]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080885F8
sub_080885F8: @ 0x080885F8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r7, #0xf0
	ldr r1, _0808863C @ =gUnk_08350E98
	adds r0, #0x87
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r6, [r0]
	adds r5, r4, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrb r0, [r0, #0x10]
	cmp r0, #2
	bls _08088618
	adds r7, #0xb4
_08088618:
	adds r0, r4, #0
	bl sub_080886A8
	ldr r0, [r5]
	ldrb r1, [r0, #0x10]
	adds r1, #0xd
	adds r0, r4, #0
	bl sub_08088700
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_0808859C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808863C: .4byte gUnk_08350E98

	thumb_func_start sub_08088640
sub_08088640: @ 0x08088640
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r0, _08088688 @ =gUnk_0203AD3C
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0808869E
	ldr r0, _0808868C @ =sub_08087F98
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088690
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08088698
	.align 2, 0
_08088688: .4byte gUnk_0203AD3C
_0808868C: .4byte sub_08087F98
_08088690:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08088698:
	str r4, [r0, #4]
	strh r5, [r0, #2]
	strh r6, [r0]
_0808869E:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080886A8
sub_080886A8: @ 0x080886A8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080886D8 @ =sub_08087ECC
	ldr r2, _080886DC @ =0x00003596
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080886E0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _080886E8
	.align 2, 0
_080886D8: .4byte sub_08087ECC
_080886DC: .4byte 0x00003596
_080886E0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_080886E8:
	movs r0, #0
	str r0, [r2, #4]
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r1, [r1]
	strh r1, [r2, #2]
	strh r0, [r2]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08088700
sub_08088700: @ 0x08088700
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _08088734 @ =sub_08087770
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08088738 @ =sub_08088A04
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808873C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08088744
	.align 2, 0
_08088734: .4byte sub_08087770
_08088738: .4byte sub_08088A04
_0808873C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08088744:
	movs r0, #0
	str r0, [r1, #4]
	strh r4, [r1, #2]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	strh r0, [r1]
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_08002888
	movs r1, #1
	str r1, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808876C
sub_0808876C: @ 0x0808876C
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088786
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808878E
_08088786:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808878E:
	ldr r0, [r0, #4]
	ldr r1, [r0, #8]
	ldr r2, _0808879C @ =0xFD7FF7F7
	ands r1, r2
	str r1, [r0, #8]
	pop {r0}
	bx r0
	.align 2, 0
_0808879C: .4byte 0xFD7FF7F7

	thumb_func_start sub_080887A0
sub_080887A0: @ 0x080887A0
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080887BA
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080887C2
_080887BA:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080887C2:
	ldr r2, [r0, #4]
	ldr r0, [r2, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x5c]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080887E8
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_0803E558
_080887E8:
	pop {r0}
	bx r0

	thumb_func_start sub_080887EC
sub_080887EC: @ 0x080887EC
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088806
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808880E
_08088806:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808880E:
	ldr r2, [r0, #4]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08088826
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_0803E558
_08088826:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808882C
sub_0808882C: @ 0x0808882C
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088846
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _0808884E
_08088846:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_0808884E:
	ldr r3, [r2, #4]
	ldr r0, [r3, #8]
	ldr r1, _08088880 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r3, #8]
	ldrh r0, [r2]
	cmp r0, #0
	beq _0808887C
	ldrb r0, [r3]
	cmp r0, #1
	bne _0808887C
	adds r0, r3, #0
	adds r0, #0x82
	ldrb r0, [r0]
	subs r0, #0x38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1a
	bhi _0808887C
	ldr r0, [r3, #0x68]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r3, #0x68]
_0808887C:
	pop {r0}
	bx r0
	.align 2, 0
_08088880: .4byte 0xFFFF7FFF

	thumb_func_start sub_08088884
sub_08088884: @ 0x08088884
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808889E
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080888A6
_0808889E:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080888A6:
	ldr r0, [r0, #4]
	ldr r1, [r0, #8]
	ldr r2, _080888B4 @ =0xFFFFFBFF
	ands r1, r2
	str r1, [r0, #8]
	pop {r0}
	bx r0
	.align 2, 0
_080888B4: .4byte 0xFFFFFBFF

	thumb_func_start sub_080888B8
sub_080888B8: @ 0x080888B8
	push {r4, lr}
	ldr r2, _080888D8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _080888DC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _080888E4
	.align 2, 0
_080888D8: .4byte gCurTask
_080888DC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_080888E4:
	ldr r2, [r1, #4]
	ldr r3, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080888FA
	ldr r0, [r4]
	bl TaskDestroy
	b _08088914
_080888FA:
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r3, r0
	str r3, [r2, #8]
	ldrh r0, [r1, #2]
	subs r0, #1
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08088914
	ldr r0, [r4]
	bl TaskDestroy
_08088914:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808891C
sub_0808891C: @ 0x0808891C
	push {r4, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088936
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808893E
_08088936:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808893E:
	ldr r4, [r0, #4]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_080335B4
	ldr r0, [r4, #8]
	ldr r1, _08088958 @ =0xFFFFDFFF
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08088958: .4byte 0xFFFFDFFF

	thumb_func_start sub_0808895C
sub_0808895C: @ 0x0808895C
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088976
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r3, r0, r1
	b _0808897E
_08088976:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
_0808897E:
	ldr r2, _080889B4 @ =gKirbys
	ldr r0, _080889B8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r3, #2]
	cmp r0, r1
	bne _080889AE
	ldr r0, [r3, #8]
	cmp r0, #0
	bne _080889AE
	ldr r2, _080889BC @ =gUnk_0300051C
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
_080889AE:
	pop {r0}
	bx r0
	.align 2, 0
_080889B4: .4byte gKirbys
_080889B8: .4byte gUnk_0203AD3C
_080889BC: .4byte gUnk_0300051C

	thumb_func_start sub_080889C0
sub_080889C0: @ 0x080889C0
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080889DA
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080889E2
_080889DA:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080889E2:
	ldr r0, [r0, #4]
	adds r0, #0x56
	ldr r1, _080889FC @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080889F6
	ldr r0, _08088A00 @ =0x000001FB
	bl m4aSongNumStop
_080889F6:
	pop {r0}
	bx r0
	.align 2, 0
_080889FC: .4byte gUnk_0203AD3C
_08088A00: .4byte 0x000001FB

	thumb_func_start sub_08088A04
sub_08088A04: @ 0x08088A04
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088A1E
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08088A26
_08088A1E:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08088A26:
	ldrb r1, [r0, #2]
	movs r0, #1
	movs r2, #0
	bl sub_08002888
	movs r1, #0
	str r1, [r0]
	pop {r0}
	bx r0

	thumb_func_start sub_08088A38
sub_08088A38: @ 0x08088A38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	ldr r0, _08088A78 @ =sub_08087A78
	ldr r2, _08088A7C @ =0x00002F9C
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088A80
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08088A88
	.align 2, 0
_08088A78: .4byte sub_08087A78
_08088A7C: .4byte 0x00002F9C
_08088A80:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08088A88:
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	movs r1, #0
	strh r0, [r4, #2]
	movs r0, #0xb4
	strh r0, [r4, #4]
	strb r1, [r4]
	strb r6, [r4, #1]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl BonusCreateTomatoAt
	str r0, [r4, #8]
	ldr r2, _08088AC4 @ =0x0000028F
	movs r1, #0
	movs r3, #3
	bl sub_0808AE30
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08088AC4: .4byte 0x0000028F

	thumb_func_start sub_08088AC8
sub_08088AC8: @ 0x08088AC8
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08088AF8 @ =sub_08088C0C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08088AFC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088B00
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08088B08
	.align 2, 0
_08088AF8: .4byte sub_08088C0C
_08088AFC: .4byte sub_0803DCCC
_08088B00:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08088B08:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	movs r3, #0
	strh r0, [r1]
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	adds r2, r1, #0
	orrs r2, r0
	orrs r2, r3
	strh r2, [r5, #6]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08088B80
	movs r0, #1
	orrs r2, r0
	strh r2, [r5, #6]
	ldr r3, _08088B70 @ =gUnk_08350EA0
	ldr r2, _08088B74 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08088B78 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08088B7C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x34]
	subs r0, r0, r1
	b _08088BA4
	.align 2, 0
_08088B70: .4byte gUnk_08350EA0
_08088B74: .4byte gRngVal
_08088B78: .4byte 0x00196225
_08088B7C: .4byte 0x3C6EF35F
_08088B80:
	ldr r3, _08088BF8 @ =gUnk_08350EA0
	ldr r2, _08088BFC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08088C00 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08088C04 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
_08088BA4:
	str r0, [r5, #0x34]
	ldr r1, [r2]
	ldr r0, _08088C00 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08088C04 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x38]
	subs r0, r0, r1
	str r0, [r5, #0x38]
	adds r1, r5, #0
	adds r1, #0xc
	adds r4, #0x56
	ldrb r2, [r4]
	lsls r2, r2, #0xb
	ldr r0, _08088C08 @ =0x06010200
	adds r2, r2, r0
	movs r0, #0
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r3, #0x14
	bl sub_080709F8
	ldrb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x2b
	strb r1, [r0]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08088BF8: .4byte gUnk_08350EA0
_08088BFC: .4byte gRngVal
_08088C00: .4byte 0x00196225
_08088C04: .4byte 0x3C6EF35F
_08088C08: .4byte 0x06010200

	thumb_func_start sub_08088C0C
sub_08088C0C: @ 0x08088C0C
	push {r4, r5, r6, r7, lr}
	ldr r2, _08088C28 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088C2C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08088C34
	.align 2, 0
_08088C28: .4byte gCurTask
_08088C2C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08088C34:
	adds r4, r0, #0
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08088C4A
	ldr r0, [r2]
	bl TaskDestroy
	b _08088F78
_08088C4A:
	ldr r0, _08088CD8 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldr r6, [r4, #0x44]
	cmp r0, #0
	beq _08088C94
	ldr r1, _08088CDC @ =gCurLevelInfo
	mov ip, r1
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r5, _08088CE0 @ =gUnk_02026D50
_08088C60:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, ip
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _08088C8C
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08088CA6
_08088C8C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08088C60
_08088C94:
	movs r0, #1
	cmp r0, #0
	beq _08088CA6
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08088CA6:
	mov ip, r6
	mov r0, ip
	adds r0, #0xd4
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0x1a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08088CE4
	adds r0, r1, #0
	cmp r0, #0x6a
	beq _08088CE4
	cmp r0, #0x6b
	beq _08088CE4
	cmp r0, #0x1d
	beq _08088CE4
	ldrh r1, [r4, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _08088F78
	.align 2, 0
_08088CD8: .4byte gUnk_0203AD44
_08088CDC: .4byte gCurLevelInfo
_08088CE0: .4byte gUnk_02026D50
_08088CE4:
	adds r3, r6, #0
	cmp r3, #0
	beq _08088D38
	ldrb r0, [r3]
	cmp r0, #0
	beq _08088D02
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08088D02
	movs r0, #0
	str r0, [r4, #0x44]
	movs r3, #0
_08088D02:
	cmp r3, #0
	beq _08088D38
	ldr r0, _08088D34 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08088DA8
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08088DA8
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08088F78
	.align 2, 0
_08088D34: .4byte gUnk_03000510
_08088D38:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _08088DA0 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08088D7A
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08088D7A
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08088D7A
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08088D7A
	movs r3, #4
_08088D7A:
	ldr r0, _08088DA4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08088DA8
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08088DA8
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08088F78
	.align 2, 0
_08088DA0: .4byte gKirbys
_08088DA4: .4byte gUnk_03000510
_08088DA8:
	mov r7, ip
	ldr r2, [r7, #0x40]
	ldr r0, [r4, #0x34]
	subs r1, r2, r0
	adds r5, r0, #0
	cmp r1, #0
	blt _08088DCC
	ldr r0, _08088DC8 @ =0xFFFFF000
	ands r1, r0
	mov r6, ip
	adds r6, #0xd4
	cmp r1, #0
	beq _08088DC4
	b _08088ED4
_08088DC4:
	b _08088DDC
	.align 2, 0
_08088DC8: .4byte 0xFFFFF000
_08088DCC:
	subs r0, r5, r2
	ldr r1, _08088E1C @ =0xFFFFF000
	ands r0, r1
	mov r6, ip
	adds r6, #0xd4
	cmp r0, #0
	beq _08088DDC
	b _08088ED4
_08088DDC:
	mov r0, ip
	adds r0, #0xd4
	ldrh r1, [r0]
	adds r6, r0, #0
	cmp r1, #0x6b
	bne _08088E38
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08088E30
	ldr r3, _08088E20 @ =gUnk_08350EC0
	ldr r2, _08088E24 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08088E28 @ =0x00196225
	muls r0, r1, r0
	ldr r7, _08088E2C @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x34]
	subs r0, r0, r1
	b _08088EA0
	.align 2, 0
_08088E1C: .4byte 0xFFFFF000
_08088E20: .4byte gUnk_08350EC0
_08088E24: .4byte gRngVal
_08088E28: .4byte 0x00196225
_08088E2C: .4byte 0x3C6EF35F
_08088E30:
	ldr r3, _08088E34 @ =gUnk_08350EC0
	b _08088E7E
	.align 2, 0
_08088E34: .4byte gUnk_08350EC0
_08088E38:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08088E7C
	ldr r3, _08088E6C @ =gUnk_08350EA0
	ldr r2, _08088E70 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08088E74 @ =0x00196225
	muls r0, r1, r0
	ldr r7, _08088E78 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x34]
	subs r0, r0, r1
	b _08088EA0
	.align 2, 0
_08088E6C: .4byte gUnk_08350EA0
_08088E70: .4byte gRngVal
_08088E74: .4byte 0x00196225
_08088E78: .4byte 0x3C6EF35F
_08088E7C:
	ldr r3, _08088EF4 @ =gUnk_08350EA0
_08088E7E:
	ldr r2, _08088EF8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08088EFC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08088F00 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
_08088EA0:
	str r0, [r4, #0x34]
	ldr r1, [r2]
	ldr r0, _08088EFC @ =0x00196225
	muls r0, r1, r0
	ldr r7, _08088F00 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x38]
	movs r0, #0
	strh r0, [r4, #0x3c]
	ldrh r1, [r4, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r4, #6]
	ldr r5, [r4, #0x34]
_08088ED4:
	ldrh r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	adds r7, r1, #0
	cmp r0, #0
	beq _08088F04
	ldrh r2, [r4, #0x3c]
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r4, #0x3c]
	ldrh r0, [r6]
	cmp r0, #0x6b
	bne _08088F18
	adds r0, r2, #0
	adds r0, #0x90
	b _08088F16
	.align 2, 0
_08088EF4: .4byte gUnk_08350EA0
_08088EF8: .4byte gRngVal
_08088EFC: .4byte 0x00196225
_08088F00: .4byte 0x3C6EF35F
_08088F04:
	ldrh r2, [r4, #0x3c]
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r4, #0x3c]
	ldrh r0, [r6]
	cmp r0, #0x6b
	bne _08088F18
	adds r0, r2, #0
	subs r0, #0x90
_08088F16:
	strh r0, [r4, #0x3c]
_08088F18:
	mov r0, ip
	ldr r2, [r0, #0x44]
	ldr r0, [r4, #0x38]
	subs r3, r2, r0
	adds r1, r0, #0
	cmp r3, #0
	blt _08088F30
	ldr r2, _08088F2C @ =0xFFFFFF00
	ands r2, r3
	b _08088F36
	.align 2, 0
_08088F2C: .4byte 0xFFFFFF00
_08088F30:
	subs r2, r1, r2
	ldr r0, _08088F80 @ =0xFFFFFF00
	ands r2, r0
_08088F36:
	mov r6, ip
	ldr r3, [r6, #0x40]
	subs r0, r3, r5
	cmp r0, #0
	bge _08088F42
	subs r0, r5, r3
_08088F42:
	asrs r0, r0, #0xc
	adds r0, #1
	lsrs r2, r0
	strh r2, [r4, #0x3e]
	mov r3, ip
	ldr r0, [r3, #0x44]
	subs r0, r0, r1
	cmp r0, #0
	ble _08088F58
	rsbs r0, r2, #0
	strh r0, [r4, #0x3e]
_08088F58:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r7
	cmp r0, #0
	bne _08088F72
	movs r6, #0x3c
	ldrsh r0, [r4, r6]
	adds r0, r5, r0
	str r0, [r4, #0x34]
	movs r7, #0x3e
	ldrsh r0, [r4, r7]
	subs r0, r1, r0
	str r0, [r4, #0x38]
_08088F72:
	adds r0, r4, #0
	bl sub_0806FAC8
_08088F78:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08088F80: .4byte 0xFFFFFF00

	thumb_func_start sub_08088F84
sub_08088F84: @ 0x08088F84
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r0, _08088FBC @ =sub_08089050
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08088FC0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088FC4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08088FCC
	.align 2, 0
_08088FBC: .4byte sub_08089050
_08088FC0: .4byte sub_0803DCCC
_08088FC4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08088FCC:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	lsls r1, r6, #0x10
	asrs r1, r1, #4
	adds r1, r1, r2
	str r1, [r4, #0x34]
	lsls r0, r7, #0x10
	asrs r0, r0, #4
	adds r0, r0, r2
	str r0, [r4, #0x38]
	ldr r2, [r5, #0x40]
	subs r1, r1, r2
	strh r1, [r4, #0x3c]
	ldr r1, [r5, #0x44]
	subs r0, r0, r1
	strh r0, [r4, #0x3e]
	adds r1, r5, #0
	adds r1, #0xde
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _08089048 @ =0x06012000
	ldr r3, _0808904C @ =0x00000295
	movs r0, #1
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08089048: .4byte 0x06012000
_0808904C: .4byte 0x00000295

	thumb_func_start sub_08089050
sub_08089050: @ 0x08089050
	push {r4, r5, r6, r7, lr}
	ldr r2, _08089070 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _08089074
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808907C
	.align 2, 0
_08089070: .4byte gCurTask
_08089074:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808907C:
	adds r4, r0, #0
	ldr r3, [r4, #0x44]
	ldrh r1, [r4, #6]
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0808909A
	ldr r0, [r6]
	bl TaskDestroy
	b _08089256
_0808909A:
	adds r1, r3, #0
	cmp r3, #0
	beq _080890E4
	ldrb r0, [r3]
	cmp r0, #0
	beq _080890B2
	ldr r0, [r3, #8]
	ands r0, r5
	cmp r0, #0
	beq _080890B2
	str r2, [r4, #0x44]
	movs r1, #0
_080890B2:
	cmp r1, #0
	beq _080890E4
	ldr r0, _080890E0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08089154
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08089154
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08089256
	.align 2, 0
_080890E0: .4byte gUnk_03000510
_080890E4:
	adds r6, r4, #0
	movs r5, #0
	ldr r2, _0808914C @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08089126
	movs r5, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089126
	movs r5, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089126
	movs r5, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089126
	movs r5, #4
_08089126:
	ldr r0, _08089150 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r5
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08089154
	ldrh r1, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08089154
	adds r0, r6, #0
	bl sub_0803DBC8
	b _08089256
	.align 2, 0
_0808914C: .4byte gKirbys
_08089150: .4byte gUnk_03000510
_08089154:
	adds r0, r3, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0x1a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0808919C
	adds r0, r1, #0
	cmp r0, #0x6a
	beq _0808919C
	cmp r0, #0x6b
	beq _0808919C
	cmp r0, #0x1c
	beq _0808919C
	adds r1, r3, #0
	adds r1, #0xde
	ldrb r0, [r1]
	cmp r0, #0
	beq _08089182
	subs r0, #1
	strb r0, [r1]
_08089182:
	ldr r2, _08089198 @ =0x00000292
	adds r0, r3, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, [r4, #0x34]
	str r1, [r0, #0x34]
	ldr r1, [r4, #0x38]
	str r1, [r0, #0x38]
	b _080891D8
	.align 2, 0
_08089198: .4byte 0x00000292
_0808919C:
	movs r5, #0x3c
	ldrsh r1, [r4, r5]
	cmp r1, #0
	bge _080891A6
	rsbs r1, r1, #0
_080891A6:
	ldr r0, _080891C8 @ =0x000011FF
	cmp r1, r0
	bgt _080891E6
	ldr r7, _080891CC @ =0x00000103
	adds r0, r3, r7
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _080891D0
	adds r0, r3, #0
	movs r1, #0
	bl sub_08063D98
	adds r0, r4, #0
	bl sub_0807A7E8
	b _080891D8
	.align 2, 0
_080891C8: .4byte 0x000011FF
_080891CC: .4byte 0x00000103
_080891D0:
	adds r0, r3, #0
	movs r1, #0
	bl sub_080547C4
_080891D8:
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _08089256
_080891E6:
	ldrh r0, [r4, #4]
	adds r1, r0, #0
	adds r1, #0x2a
	strh r1, [r4, #4]
	ldrh r2, [r4, #0x3c]
	movs r5, #0x3c
	ldrsh r0, [r4, r5]
	cmp r0, #0
	ble _080891FC
	subs r0, r2, r1
	b _080891FE
_080891FC:
	adds r0, r2, r1
_080891FE:
	strh r0, [r4, #0x3c]
	ldrh r2, [r4, #0x3e]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	ble _08089210
	asrs r0, r0, #0x13
	subs r0, r2, r0
	b _0808921E
_08089210:
	cmp r1, #0
	bge _08089220
	movs r7, #0x3e
	ldrsh r0, [r4, r7]
	rsbs r0, r0, #0
	asrs r0, r0, #3
	adds r0, r2, r0
_0808921E:
	strh r0, [r4, #0x3e]
_08089220:
	movs r0, #0x3c
	ldrsh r1, [r4, r0]
	ldr r0, [r3, #0x40]
	adds r5, r0, r1
	str r5, [r4, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r4, r2]
	ldr r0, [r3, #0x44]
	adds r2, r0, r1
	str r2, [r4, #0x38]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08089250
	movs r7, #0x3c
	ldrsh r0, [r4, r7]
	adds r0, r5, r0
	str r0, [r4, #0x34]
	movs r1, #0x3e
	ldrsh r0, [r4, r1]
	subs r0, r2, r0
	str r0, [r4, #0x38]
_08089250:
	adds r0, r4, #0
	bl sub_0806FAC8
_08089256:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808925C
sub_0808925C: @ 0x0808925C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _0808928C @ =sub_08089350
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08089290 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08089294
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _0808929C
	.align 2, 0
_0808928C: .4byte sub_08089350
_08089290: .4byte sub_0803DCCC
_08089294:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_0808929C:
	adds r0, r6, #0
	bl sub_0803E3B0
	movs r5, #0
	movs r0, #3
	strb r0, [r6]
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r6, #0x38]
	str r4, [r6, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r3, _08089334 @ =gRngVal
	ldr r1, [r3]
	ldr r0, _08089338 @ =0x00196225
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, _0808933C @ =0x3C6EF35F
	adds r2, r2, r0
	str r2, [r3]
	lsrs r2, r2, #0x10
	movs r0, #7
	ands r2, r0
	lsls r0, r2, #8
	strh r0, [r6, #4]
	ldr r3, _08089340 @ =gUnk_08350EE0
	lsls r4, r2, #1
	adds r0, r4, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r6, #0x34]
	adds r0, r0, r1
	str r0, [r6, #0x34]
	adds r3, #1
	adds r4, r4, r3
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	ldr r0, [r6, #0x38]
	adds r0, r0, r1
	str r0, [r6, #0x38]
	ldr r1, _08089344 @ =gUnk_08350EF0
	lsls r2, r2, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r6, #0x3c]
	adds r1, #2
	adds r2, r2, r1
	ldrh r0, [r2]
	strh r0, [r6, #0x3e]
	ldrh r1, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r6, #6]
	adds r1, r6, #0
	adds r1, #0xc
	ldr r2, _08089348 @ =0x06012000
	ldr r3, _0808934C @ =0x00000291
	str r5, [sp]
	movs r0, #9
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08089334: .4byte gRngVal
_08089338: .4byte 0x00196225
_0808933C: .4byte 0x3C6EF35F
_08089340: .4byte gUnk_08350EE0
_08089344: .4byte gUnk_08350EF0
_08089348: .4byte 0x06012000
_0808934C: .4byte 0x00000291

	thumb_func_start sub_08089350
sub_08089350: @ 0x08089350
	push {r4, r5, r6, r7, lr}
	ldr r2, _08089370 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08089374
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808937C
	.align 2, 0
_08089370: .4byte gCurTask
_08089374:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808937C:
	adds r4, r0, #0
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08089398
	ldr r0, [r5]
	bl TaskDestroy
	b _08089530
_08089398:
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _080893E4
	ldrb r0, [r1]
	cmp r0, #0
	beq _080893B0
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	beq _080893B0
	str r3, [r4, #0x44]
	movs r1, #0
_080893B0:
	cmp r1, #0
	beq _080893E4
	ldr r0, _080893E0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08089454
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08089454
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08089530
	.align 2, 0
_080893E0: .4byte gUnk_03000510
_080893E4:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _0808944C @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08089426
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089426
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089426
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089426
	movs r3, #4
_08089426:
	ldr r0, _08089450 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08089454
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08089454
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08089530
	.align 2, 0
_0808944C: .4byte gKirbys
_08089450: .4byte gUnk_03000510
_08089454:
	ldr r0, _080894F4 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r7, [r4, #4]
	mov ip, r7
	cmp r0, #0
	beq _0808949C
	ldr r6, _080894F8 @ =gCurLevelInfo
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r5, _080894FC @ =gUnk_02026D50
_0808946A:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _08089494
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080894AE
_08089494:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808946A
_0808949C:
	movs r0, #1
	cmp r0, #0
	beq _080894AE
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_080894AE:
	movs r2, #0xf
	mov r6, ip
	ands r2, r6
	cmp r2, #3
	bne _080894D8
	ldr r1, _08089500 @ =gUnk_08350EF0
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x3c]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x3e]
_080894D8:
	cmp r2, #6
	bne _080894E2
	movs r0, #0
	strh r0, [r4, #0x3c]
	strh r0, [r4, #0x3e]
_080894E2:
	cmp r2, #0xf
	bne _08089504
	ldrh r1, [r4, #6]
	movs r7, #0x80
	lsls r7, r7, #5
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _08089530
	.align 2, 0
_080894F4: .4byte gUnk_0203AD44
_080894F8: .4byte gCurLevelInfo
_080894FC: .4byte gUnk_02026D50
_08089500: .4byte gUnk_08350EF0
_08089504:
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08089524
	movs r0, #0x3c
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r4, r2]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x38]
_08089524:
	adds r0, r4, #0
	bl sub_0806FAC8
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_08089530:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08089538
sub_08089538: @ 0x08089538
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _08089568 @ =sub_08089618
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808956C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08089570
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _08089578
	.align 2, 0
_08089568: .4byte sub_08089618
_0808956C: .4byte sub_0803DCCC
_08089570:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_08089578:
	adds r0, r5, #0
	bl sub_0803E3B0
	movs r4, #0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x38]
	str r6, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r3, _08089600 @ =gRngVal
	ldr r1, [r3]
	ldr r0, _08089604 @ =0x00196225
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, _08089608 @ =0x3C6EF35F
	adds r2, r2, r0
	str r2, [r3]
	lsrs r2, r2, #0x10
	movs r0, #7
	ands r2, r0
	lsls r0, r2, #8
	strh r0, [r5, #4]
	ldr r3, _0808960C @ =gUnk_08350EE0
	lsls r2, r2, #1
	adds r0, r2, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	adds r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x38]
	adds r0, r0, r1
	str r0, [r5, #0x38]
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _08089610 @ =0x06012000
	ldr r3, _08089614 @ =0x000002A3
	str r4, [sp]
	movs r0, #8
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08089600: .4byte gRngVal
_08089604: .4byte 0x00196225
_08089608: .4byte 0x3C6EF35F
_0808960C: .4byte gUnk_08350EE0
_08089610: .4byte 0x06012000
_08089614: .4byte 0x000002A3

	thumb_func_start sub_08089618
sub_08089618: @ 0x08089618
	push {r4, r5, r6, r7, lr}
	ldr r2, _08089638 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _0808963C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08089644
	.align 2, 0
_08089638: .4byte gCurTask
_0808963C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08089644:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08089660
	ldr r0, [r5]
	bl TaskDestroy
	b _0808979A
_08089660:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _080896AC
	ldrb r0, [r1]
	cmp r0, #0
	beq _08089678
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _08089678
	str r2, [r3, #0x44]
	movs r1, #0
_08089678:
	cmp r1, #0
	beq _080896AC
	ldr r0, _080896A8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808971C
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808971C
	adds r0, r3, #0
	bl sub_0803DBC8
	b _0808979A
	.align 2, 0
_080896A8: .4byte gUnk_03000510
_080896AC:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _08089714 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080896EE
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080896EE
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080896EE
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080896EE
	movs r4, #4
_080896EE:
	ldr r0, _08089718 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808971C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808971C
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0808979A
	.align 2, 0
_08089714: .4byte gKirbys
_08089718: .4byte gUnk_03000510
_0808971C:
	ldr r0, _08089788 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _08089760
	ldr r6, _0808978C @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _08089790 @ =gUnk_02026D50
_0808972E:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _08089758
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08089772
_08089758:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808972E
_08089760:
	movs r0, #1
	cmp r0, #0
	beq _08089772
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_08089772:
	ldrh r1, [r3, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08089794
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r3, #6]
	b _0808979A
	.align 2, 0
_08089788: .4byte gUnk_0203AD44
_0808978C: .4byte gCurLevelInfo
_08089790: .4byte gUnk_02026D50
_08089794:
	adds r0, r3, #0
	bl sub_0806FAC8
_0808979A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080897A0
sub_080897A0: @ 0x080897A0
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _080897D0 @ =sub_0808994C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080897D4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080897D8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080897E0
	.align 2, 0
_080897D0: .4byte sub_0808994C
_080897D4: .4byte sub_0803DCCC
_080897D8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080897E0:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0808981E
	ldrh r0, [r5, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x3c]
	movs r0, #0
	strh r0, [r5, #0x3e]
	b _08089826
_0808981E:
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r5, #0x3c]
	strh r1, [r5, #0x3e]
_08089826:
	ldr r0, [r5, #0x38]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r5, #0x38]
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _0808985C @ =0x06012000
	ldr r3, _08089860 @ =0x00000293
	str r4, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808985C: .4byte 0x06012000
_08089860: .4byte 0x00000293

	thumb_func_start sub_08089864
sub_08089864: @ 0x08089864
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	mov r8, r3
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r0, _080898A4 @ =sub_0808994C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080898A8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080898AC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080898B4
	.align 2, 0
_080898A4: .4byte sub_0808994C
_080898A8: .4byte sub_0803DCCC
_080898AC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080898B4:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r1, #0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r2, r5, #0
	adds r2, #0x42
	strh r0, [r2]
	strh r1, [r5, #0x3e]
	lsls r1, r7, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x38]
	adds r0, r0, r1
	str r0, [r5, #0x38]
	movs r0, #1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08089904
	ldrh r0, [r5, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x3c]
	lsls r1, r6, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x34]
	subs r0, r0, r1
	b _08089912
_08089904:
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r5, #0x3c]
	lsls r1, r6, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
_08089912:
	str r0, [r5, #0x34]
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _08089944 @ =0x06012000
	ldr r3, _08089948 @ =0x00000293
	str r4, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08089944: .4byte 0x06012000
_08089948: .4byte 0x00000293

	thumb_func_start sub_0808994C
sub_0808994C: @ 0x0808994C
	push {r4, r5, r6, r7, lr}
	ldr r2, _0808996C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08089970
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08089978
	.align 2, 0
_0808996C: .4byte gCurTask
_08089970:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08089978:
	adds r4, r0, #0
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08089994
	ldr r0, [r5]
	bl TaskDestroy
	b _08089B0C
_08089994:
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _080899E0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080899AC
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	beq _080899AC
	str r3, [r4, #0x44]
	movs r1, #0
_080899AC:
	cmp r1, #0
	beq _080899E0
	ldr r0, _080899DC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08089A50
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08089A50
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08089B0C
	.align 2, 0
_080899DC: .4byte gUnk_03000510
_080899E0:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _08089A48 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08089A22
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089A22
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089A22
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089A22
	movs r3, #4
_08089A22:
	ldr r0, _08089A4C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08089A50
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08089A50
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08089B0C
	.align 2, 0
_08089A48: .4byte gKirbys
_08089A4C: .4byte gUnk_03000510
_08089A50:
	ldr r0, _08089ABC @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _08089A94
	ldr r6, _08089AC0 @ =gCurLevelInfo
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r5, _08089AC4 @ =gUnk_02026D50
_08089A62:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _08089A8C
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08089AA6
_08089A8C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08089A62
_08089A94:
	movs r0, #1
	cmp r0, #0
	beq _08089AA6
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08089AA6:
	ldrh r1, [r4, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08089AC8
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _08089B0C
	.align 2, 0
_08089ABC: .4byte gUnk_0203AD44
_08089AC0: .4byte gCurLevelInfo
_08089AC4: .4byte gUnk_02026D50
_08089AC8:
	movs r0, #1
	ands r0, r1
	ldrh r0, [r4, #0x3e]
	adds r0, #0x20
	strh r0, [r4, #0x3e]
	movs r7, #4
	ldrsh r0, [r4, r7]
	cmp r0, #5
	bne _08089AE0
	adds r0, r4, #0
	bl sub_0808A0F8
_08089AE0:
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08089B00
	movs r0, #0x3c
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r4, r2]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x38]
_08089B00:
	adds r0, r4, #0
	bl sub_0806FAC8
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_08089B0C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08089B14
sub_08089B14: @ 0x08089B14
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08089B44 @ =sub_08089BCC
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08089B48 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08089B4C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08089B54
	.align 2, 0
_08089B44: .4byte sub_08089BCC
_08089B48: .4byte sub_0803DCCC
_08089B4C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08089B54:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08089B92
	ldrh r0, [r5, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x3c]
	movs r0, #0
	strh r0, [r5, #0x3e]
	b _08089B9A
_08089B92:
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r5, #0x3c]
	strh r1, [r5, #0x3e]
_08089B9A:
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _08089BC4 @ =0x06012000
	ldr r3, _08089BC8 @ =0x00000293
	str r4, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08089BC4: .4byte 0x06012000
_08089BC8: .4byte 0x00000293

	thumb_func_start sub_08089BCC
sub_08089BCC: @ 0x08089BCC
	push {r4, r5, r6, r7, lr}
	ldr r2, _08089BEC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08089BF0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08089BF8
	.align 2, 0
_08089BEC: .4byte gCurTask
_08089BF0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08089BF8:
	adds r4, r0, #0
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08089C14
	ldr r0, [r5]
	bl TaskDestroy
	b _08089D90
_08089C14:
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _08089C60
	ldrb r0, [r1]
	cmp r0, #0
	beq _08089C2C
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	beq _08089C2C
	str r3, [r4, #0x44]
	movs r1, #0
_08089C2C:
	cmp r1, #0
	beq _08089C60
	ldr r0, _08089C5C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08089CD0
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08089CD0
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08089D90
	.align 2, 0
_08089C5C: .4byte gUnk_03000510
_08089C60:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _08089CC8 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08089CA2
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089CA2
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089CA2
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089CA2
	movs r3, #4
_08089CA2:
	ldr r0, _08089CCC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08089CD0
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08089CD0
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08089D90
	.align 2, 0
_08089CC8: .4byte gKirbys
_08089CCC: .4byte gUnk_03000510
_08089CD0:
	ldr r0, _08089D3C @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _08089D14
	ldr r6, _08089D40 @ =gCurLevelInfo
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r5, _08089D44 @ =gUnk_02026D50
_08089CE2:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _08089D0C
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08089D26
_08089D0C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08089CE2
_08089D14:
	movs r0, #1
	cmp r0, #0
	beq _08089D26
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08089D26:
	ldrh r1, [r4, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08089D48
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _08089D90
	.align 2, 0
_08089D3C: .4byte gUnk_0203AD44
_08089D40: .4byte gCurLevelInfo
_08089D44: .4byte gUnk_02026D50
_08089D48:
	movs r0, #1
	ands r0, r1
	ldrh r0, [r4, #0x3e]
	adds r0, #0x20
	strh r0, [r4, #0x3e]
	movs r7, #4
	ldrsh r0, [r4, r7]
	cmp r0, #5
	bne _08089D64
	movs r0, #0
	strh r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_0808A0F8
_08089D64:
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08089D84
	movs r0, #0x3c
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r4, r2]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x38]
_08089D84:
	adds r0, r4, #0
	bl sub_0806FAC8
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_08089D90:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08089D98
sub_08089D98: @ 0x08089D98
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08089DC8 @ =sub_08089E50
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08089DCC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08089DD0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08089DD8
	.align 2, 0
_08089DC8: .4byte sub_08089E50
_08089DCC: .4byte sub_0803DCCC
_08089DD0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08089DD8:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08089E16
	ldrh r0, [r5, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x3c]
	movs r0, #0
	strh r0, [r5, #0x3e]
	b _08089E1E
_08089E16:
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r5, #0x3c]
	strh r1, [r5, #0x3e]
_08089E1E:
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _08089E48 @ =0x06012000
	ldr r3, _08089E4C @ =0x00000293
	str r4, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08089E48: .4byte 0x06012000
_08089E4C: .4byte 0x00000293

	thumb_func_start sub_08089E50
sub_08089E50: @ 0x08089E50
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08089E74 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08089E78
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08089E80
	.align 2, 0
_08089E74: .4byte gCurTask
_08089E78:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08089E80:
	adds r4, r0, #0
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08089E9C
	ldr r0, [r5]
	bl TaskDestroy
	b _0808A0EE
_08089E9C:
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _08089EE8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08089EB4
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	beq _08089EB4
	str r3, [r4, #0x44]
	movs r1, #0
_08089EB4:
	cmp r1, #0
	beq _08089EE8
	ldr r0, _08089EE4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08089F58
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08089F58
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0808A0EE
	.align 2, 0
_08089EE4: .4byte gUnk_03000510
_08089EE8:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _08089F50 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08089F2A
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089F2A
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089F2A
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089F2A
	movs r3, #4
_08089F2A:
	ldr r0, _08089F54 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08089F58
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08089F58
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0808A0EE
	.align 2, 0
_08089F50: .4byte gKirbys
_08089F54: .4byte gUnk_03000510
_08089F58:
	ldr r0, _08089FE8 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldr r7, [r4, #0x44]
	mov ip, r7
	ldrh r1, [r4, #4]
	mov r8, r1
	cmp r0, #0
	beq _08089FA4
	ldr r6, _08089FEC @ =gCurLevelInfo
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r5, _08089FF0 @ =gUnk_02026D50
_08089F72:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _08089F9C
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08089FB6
_08089F9C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08089F72
_08089FA4:
	movs r0, #1
	cmp r0, #0
	beq _08089FB6
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08089FB6:
	mov r5, ip
	mov r6, r8
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	bne _08089FC8
	adds r0, r4, #0
	bl sub_0808A0F8
_08089FC8:
	ldrh r1, [r4, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808A05C
	movs r7, #8
	ldrsh r0, [r4, r7]
	cmp r0, #0
	bne _0808A00C
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08089FF4
	movs r0, #0x90
	lsls r0, r0, #2
	b _08089FF6
	.align 2, 0
_08089FE8: .4byte gUnk_0203AD44
_08089FEC: .4byte gCurLevelInfo
_08089FF0: .4byte gUnk_02026D50
_08089FF4:
	ldr r0, _0808A008 @ =0x0000FDC0
_08089FF6:
	strh r0, [r4, #0x3c]
	movs r0, #0x40
	strh r0, [r4, #0x3e]
	ldrh r1, [r4, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r4, #6]
	b _0808A030
	.align 2, 0
_0808A008: .4byte 0x0000FDC0
_0808A00C:
	cmp r0, #1
	bne _0808A030
	ands r0, r1
	cmp r0, #0
	beq _0808A01C
	movs r0, #0x90
	lsls r0, r0, #1
	b _0808A01E
_0808A01C:
	ldr r0, _0808A054 @ =0x0000FEE0
_0808A01E:
	strh r0, [r4, #0x3c]
	movs r0, #0x40
	strh r0, [r4, #0x3e]
	ldr r0, _0808A058 @ =0x00000293
	strh r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #3
	strb r0, [r1]
_0808A030:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	movs r0, #0
	strh r0, [r4, #4]
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4, #6]
	cmp r0, #3
	bne _0808A05C
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	b _0808A0BE
	.align 2, 0
_0808A054: .4byte 0x0000FEE0
_0808A058: .4byte 0x00000293
_0808A05C:
	movs r6, #8
	ldrsh r0, [r4, r6]
	cmp r0, #1
	beq _0808A07A
	cmp r0, #1
	bgt _0808A06E
	cmp r0, #0
	beq _0808A074
	b _0808A0A6
_0808A06E:
	cmp r0, #2
	beq _0808A08C
	b _0808A0A6
_0808A074:
	movs r0, #1
	ands r0, r1
	b _0808A0A0
_0808A07A:
	ands r0, r1
	cmp r0, #0
	beq _0808A086
	ldrh r0, [r4, #0x3c]
	subs r0, #0x10
	b _0808A09E
_0808A086:
	ldrh r0, [r4, #0x3c]
	adds r0, #0x10
	b _0808A09E
_0808A08C:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808A09A
	ldrh r0, [r4, #0x3c]
	subs r0, #0x18
	b _0808A09E
_0808A09A:
	ldrh r0, [r4, #0x3c]
	adds r0, #0x18
_0808A09E:
	strh r0, [r4, #0x3c]
_0808A0A0:
	ldrh r0, [r4, #0x3e]
	adds r0, #0x20
	strh r0, [r4, #0x3e]
_0808A0A6:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808A0C4
	adds r0, r5, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0xd
	beq _0808A0C4
	movs r7, #0x80
	lsls r7, r7, #5
	adds r0, r7, #0
_0808A0BE:
	orrs r0, r1
	strh r0, [r4, #6]
	b _0808A0EE
_0808A0C4:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0808A0E2
	movs r0, #0x3c
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r4, r2]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x38]
_0808A0E2:
	adds r0, r4, #0
	bl sub_0806FAC8
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_0808A0EE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808A0F8
sub_0808A0F8: @ 0x0808A0F8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _0808A128 @ =sub_0808A208
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808A12C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808A130
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808A138
	.align 2, 0
_0808A128: .4byte sub_0808A208
_0808A12C: .4byte sub_0803DCCC
_0808A130:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808A138:
	adds r7, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	ldr r0, [r4, #0x34]
	str r0, [r7, #0x34]
	ldr r0, [r4, #0x38]
	str r0, [r7, #0x38]
	str r4, [r7, #0x44]
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r4, #0x44]
	str r0, [r7, #0x44]
	ldrh r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808A198
	ldrh r0, [r7, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r7, #6]
	ldr r3, _0808A18C @ =gRngVal
	ldr r0, [r3]
	ldr r6, _0808A190 @ =0x00196225
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r5, _0808A194 @ =0x3C6EF35F
	adds r2, r2, r5
	str r2, [r3]
	ldr r1, [r7, #0x34]
	adds r1, #1
	lsrs r0, r2, #0x10
	movs r4, #7
	ands r0, r4
	adds r1, r1, r0
	b _0808A1B4
	.align 2, 0
_0808A18C: .4byte gRngVal
_0808A190: .4byte 0x00196225
_0808A194: .4byte 0x3C6EF35F
_0808A198:
	ldr r3, _0808A1F4 @ =gRngVal
	ldr r0, [r3]
	ldr r6, _0808A1F8 @ =0x00196225
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r5, _0808A1FC @ =0x3C6EF35F
	adds r2, r2, r5
	str r2, [r3]
	ldr r1, [r7, #0x34]
	subs r1, #1
	lsrs r0, r2, #0x10
	movs r4, #7
	ands r0, r4
	subs r1, r1, r0
_0808A1B4:
	str r1, [r7, #0x34]
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r3]
	ldr r1, [r7, #0x38]
	subs r1, #1
	lsrs r0, r0, #0x10
	ands r0, r4
	subs r1, r1, r0
	str r1, [r7, #0x38]
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, _0808A200 @ =0x06012000
	ldr r3, _0808A204 @ =0x00000293
	movs r0, #4
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808A1F4: .4byte gRngVal
_0808A1F8: .4byte 0x00196225
_0808A1FC: .4byte 0x3C6EF35F
_0808A200: .4byte 0x06012000
_0808A204: .4byte 0x00000293

	thumb_func_start sub_0808A208
sub_0808A208: @ 0x0808A208
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0808A22C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _0808A230
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808A238
	.align 2, 0
_0808A22C: .4byte gCurTask
_0808A230:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808A238:
	adds r4, r0, #0
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0808A254
	ldr r0, [r5]
	bl TaskDestroy
	b _0808A3D6
_0808A254:
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _0808A2A0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0808A26C
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	beq _0808A26C
	str r3, [r4, #0x44]
	movs r1, #0
_0808A26C:
	cmp r1, #0
	beq _0808A2A0
	ldr r0, _0808A29C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808A310
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808A310
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0808A3D6
	.align 2, 0
_0808A29C: .4byte gUnk_03000510
_0808A2A0:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _0808A308 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808A2E2
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808A2E2
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808A2E2
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808A2E2
	movs r3, #4
_0808A2E2:
	ldr r0, _0808A30C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808A310
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808A310
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0808A3D6
	.align 2, 0
_0808A308: .4byte gKirbys
_0808A30C: .4byte gUnk_03000510
_0808A310:
	ldr r0, _0808A380 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r6, [r4, #0x3c]
	ldrh r7, [r4, #0x3e]
	mov r8, r7
	cmp r0, #0
	beq _0808A35E
	ldr r1, _0808A384 @ =gCurLevelInfo
	mov ip, r1
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r5, _0808A388 @ =gUnk_02026D50
_0808A32A:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, ip
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808A356
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808A370
_0808A356:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808A32A
_0808A35E:
	movs r0, #1
	cmp r0, #0
	beq _0808A370
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0808A370:
	ldrh r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808A38C
	adds r0, r6, #0
	adds r0, #0x40
	b _0808A390
	.align 2, 0
_0808A380: .4byte gUnk_0203AD44
_0808A384: .4byte gCurLevelInfo
_0808A388: .4byte gUnk_02026D50
_0808A38C:
	adds r0, r6, #0
	subs r0, #0x40
_0808A390:
	strh r0, [r4, #0x3c]
	mov r0, r8
	adds r0, #0x40
	strh r0, [r4, #0x3e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808A3AC
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _0808A3D6
_0808A3AC:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0808A3CA
	movs r7, #0x3c
	ldrsh r1, [r4, r7]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x38]
_0808A3CA:
	adds r0, r4, #0
	bl sub_0806FAC8
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_0808A3D6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808A3E0
sub_0808A3E0: @ 0x0808A3E0
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0808A410 @ =sub_0808A490
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808A414 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808A418
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0808A420
	.align 2, 0
_0808A410: .4byte sub_0808A490
_0808A414: .4byte sub_0803DCCC
_0808A418:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0808A420:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, _0808A47C @ =0x0000FDC0
	strh r0, [r4, #0x3c]
	ldr r0, _0808A480 @ =0x0000FFC0
	strh r0, [r4, #0x3e]
	ldr r0, [r4, #0x34]
	ldr r1, _0808A484 @ =0xFFFFF400
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _0808A488 @ =0x06012000
	ldr r3, _0808A48C @ =0x00000293
	movs r0, #1
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808A47C: .4byte 0x0000FDC0
_0808A480: .4byte 0x0000FFC0
_0808A484: .4byte 0xFFFFF400
_0808A488: .4byte 0x06012000
_0808A48C: .4byte 0x00000293

	thumb_func_start sub_0808A490
sub_0808A490: @ 0x0808A490
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0808A4B4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808A4B8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808A4C0
	.align 2, 0
_0808A4B4: .4byte gCurTask
_0808A4B8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808A4C0:
	adds r6, r0, #0
	ldr r0, [r6, #0x44]
	mov sl, r0
	ldrh r1, [r6, #6]
	mov ip, r1
	movs r0, #0x80
	lsls r0, r0, #5
	mov r7, ip
	ands r0, r7
	cmp r0, #0
	beq _0808A4DE
	ldr r0, [r2]
	bl TaskDestroy
	b _0808A8FA
_0808A4DE:
	ldr r0, _0808A584 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sl
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _0808A4F8
	b _0808A636
_0808A4F8:
	adds r5, r6, #0
	adds r5, #0x40
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r2, [r6, #0x34]
	adds r2, r2, r0
	asrs r2, r2, #8
	ldr r3, _0808A588 @ =gCurLevelInfo
	ldr r7, _0808A58C @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	mov r8, r2
	mov r0, r8
	strh r0, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r7]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #3
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	bne _0808A5A0
	ldr r2, _0808A590 @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808A5A0
	ldr r1, _0808A594 @ =gUnk_0203AD18
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	mov r2, ip
	ands r0, r2
	cmp r0, #0
	beq _0808A598
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _0808A5A0
	.align 2, 0
_0808A584: .4byte gUnk_03000510
_0808A588: .4byte gCurLevelInfo
_0808A58C: .4byte gUnk_0203AD3C
_0808A590: .4byte gKirbys
_0808A594: .4byte gUnk_0203AD18
_0808A598:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
_0808A5A0:
	mov r7, sl
	ldr r1, [r7, #0x40]
	ldr r0, [r6, #0x34]
	subs r0, r1, r0
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r2, _0808A620 @ =gCurLevelInfo
	ldr r4, _0808A624 @ =gUnk_0203AD3C
	ldrb r3, [r4]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r5, r0, r1
	strh r5, [r6, #0x1c]
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r6, #0x14]
	ldrh r3, [r6, #6]
	ands r1, r3
	cmp r1, #0
	beq _0808A5DE
	b _0808A8F2
_0808A5DE:
	ldr r2, _0808A628 @ =gKirbys
	ldrb r1, [r4]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808A5FA
	b _0808A8F2
_0808A5FA:
	ldr r1, _0808A62C @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r5, r0
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r1, [r6, #0x1e]
	adds r0, r0, r1
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0808A630
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _0808A8F2
	.align 2, 0
_0808A620: .4byte gCurLevelInfo
_0808A624: .4byte gUnk_0203AD3C
_0808A628: .4byte gKirbys
_0808A62C: .4byte gUnk_0203AD18
_0808A630:
	adds r0, r6, #0
	adds r0, #0xc
	b _0808A8EE
_0808A636:
	ldr r0, _0808A6A4 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808A67A
	ldr r5, _0808A6A8 @ =gCurLevelInfo
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0808A6AC @ =gUnk_02026D50
_0808A648:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r5
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808A672
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808A68C
_0808A672:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808A648
_0808A67A:
	movs r0, #1
	cmp r0, #0
	beq _0808A68C
	ldrh r1, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r6, #6]
_0808A68C:
	ldrh r1, [r6, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808A6B0
	movs r7, #0x80
	lsls r7, r7, #5
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r6, #6]
	b _0808A8FA
	.align 2, 0
_0808A6A4: .4byte gUnk_0203AD44
_0808A6A8: .4byte gCurLevelInfo
_0808A6AC: .4byte gUnk_02026D50
_0808A6B0:
	ldrh r0, [r6, #0x3c]
	adds r0, #0x18
	strh r0, [r6, #0x3c]
	ldrh r0, [r6, #0x3e]
	adds r0, #0x20
	strh r0, [r6, #0x3e]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0808A6DA
	movs r0, #0x3c
	ldrsh r1, [r6, r0]
	ldr r0, [r6, #0x34]
	adds r0, r0, r1
	str r0, [r6, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r6, r2]
	ldr r0, [r6, #0x38]
	subs r0, r0, r1
	str r0, [r6, #0x38]
_0808A6DA:
	ldrh r1, [r6, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808A6F2
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _0808A6FC
_0808A6F2:
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	ldr r2, _0808A784 @ =0xFFFFFBFF
	ands r1, r2
_0808A6FC:
	str r1, [r0, #8]
	adds r7, r0, #0
	ldrh r4, [r6, #6]
	movs r0, #8
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0x28
	adds r0, r0, r6
	mov r8, r0
	cmp r3, #0
	bne _0808A7A2
	adds r0, r6, #0
	adds r0, #0x27
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r1, [r0]
	adds r5, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _0808A72E
	ldrh r0, [r6, #0x24]
	ldrh r1, [r6, #0x18]
	cmp r0, r1
	beq _0808A744
_0808A72E:
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _0808A744
	strb r3, [r6, #1]
	strh r3, [r6, #2]
	ldr r0, _0808A788 @ =0x0000FFFB
	ands r0, r4
	strh r0, [r6, #6]
_0808A744:
	adds r0, r7, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _0808A78C
	ldrh r0, [r6, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r6, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0808A7A2
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0808A7A2
	movs r0, #0xff
	strb r0, [r5]
	ldrh r1, [r6, #6]
	ldr r0, _0808A788 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r6, #6]
	strb r3, [r6, #1]
	strh r2, [r6, #2]
	adds r0, r7, #0
	bl sub_08155128
	b _0808A7A2
	.align 2, 0
_0808A784: .4byte 0xFFFFFBFF
_0808A788: .4byte 0x0000FFFB
_0808A78C:
	mov r2, r8
	ldrb r1, [r2]
	ldrh r0, [r6, #2]
	adds r0, r0, r1
	strh r0, [r6, #2]
	lsrs r0, r0, #4
	strb r0, [r6, #1]
	ldrh r1, [r6, #6]
	ldr r0, _0808A84C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r6, #6]
_0808A7A2:
	ldr r2, [r6, #0x34]
	asrs r2, r2, #8
	ldr r3, _0808A850 @ =gCurLevelInfo
	ldr r0, _0808A854 @ =gUnk_0203AD3C
	mov ip, r0
	ldrb r0, [r0]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r5, r6, #0
	adds r5, #0x40
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r2
	movs r1, #0
	mov sb, r1
	strh r0, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	mov r2, ip
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r2, r6, #0
	adds r2, #0x41
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	strh r0, [r6, #0x1e]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0808A7FE
	mov r0, sb
	strb r0, [r5]
	strb r0, [r2]
_0808A7FE:
	ldrh r3, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _0808A8FA
	ldr r2, _0808A858 @ =gKirbys
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	mov r8, r1
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808A866
	ldr r1, _0808A85C @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r6, #0x1c]
	adds r0, r0, r2
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r1, [r6, #0x1e]
	adds r0, r0, r1
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0808A860
	adds r0, r7, #0
	bl sub_081564D8
	b _0808A866
	.align 2, 0
_0808A84C: .4byte 0x0000FFFD
_0808A850: .4byte gCurLevelInfo
_0808A854: .4byte gUnk_0203AD3C
_0808A858: .4byte gKirbys
_0808A85C: .4byte gUnk_0203AD18
_0808A860:
	adds r0, r7, #0
	bl sub_0815604C
_0808A866:
	mov r2, sl
	ldr r1, [r2, #0x40]
	ldr r0, [r6, #0x34]
	subs r0, r1, r0
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r2, _0808A8DC @ =gCurLevelInfo
	ldr r4, _0808A8E0 @ =gUnk_0203AD3C
	ldrb r3, [r4]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r5, r0, r1
	strh r5, [r6, #0x1c]
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r6, #0x14]
	ldrh r3, [r6, #6]
	ands r1, r3
	cmp r1, #0
	bne _0808A8F2
	ldr r2, _0808A8E4 @ =gKirbys
	ldrb r1, [r4]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, r8
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808A8F2
	ldr r1, _0808A8E8 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r5, r0
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r2, [r6, #0x1e]
	adds r0, r0, r2
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0808A8EC
	adds r0, r7, #0
	bl sub_081564D8
	b _0808A8F2
	.align 2, 0
_0808A8DC: .4byte gCurLevelInfo
_0808A8E0: .4byte gUnk_0203AD3C
_0808A8E4: .4byte gKirbys
_0808A8E8: .4byte gUnk_0203AD18
_0808A8EC:
	adds r0, r7, #0
_0808A8EE:
	bl sub_0815604C
_0808A8F2:
	ldr r0, [r6, #0x14]
	ldr r1, _0808A908 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r6, #0x14]
_0808A8FA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808A908: .4byte 0xFFFFFBFF

	thumb_func_start sub_0808A90C
sub_0808A90C: @ 0x0808A90C
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0808A93C @ =sub_0808A9C4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808A940 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808A944
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0808A94C
	.align 2, 0
_0808A93C: .4byte sub_0808A9C4
_0808A940: .4byte sub_0803DCCC
_0808A944:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0808A94C:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r4, #0x3c]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #0x3e]
	ldr r0, [r4, #0x38]
	ldr r1, _0808A9B4 @ =0xFFFFFA00
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x34]
	ldr r2, _0808A9B8 @ =0xFFFFF400
	adds r0, r0, r2
	str r0, [r4, #0x34]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _0808A9BC @ =0x06012000
	ldr r3, _0808A9C0 @ =0x00000293
	movs r0, #2
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808A9B4: .4byte 0xFFFFFA00
_0808A9B8: .4byte 0xFFFFF400
_0808A9BC: .4byte 0x06012000
_0808A9C0: .4byte 0x00000293

	thumb_func_start sub_0808A9C4
sub_0808A9C4: @ 0x0808A9C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0808A9E8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808A9EC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808A9F4
	.align 2, 0
_0808A9E8: .4byte gCurTask
_0808A9EC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808A9F4:
	adds r6, r0, #0
	ldr r0, [r6, #0x44]
	mov sl, r0
	ldrh r7, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r7
	cmp r0, #0
	beq _0808AA0E
	ldr r0, [r2]
	bl TaskDestroy
	b _0808AE1E
_0808AA0E:
	ldr r0, _0808AAA4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sl
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _0808AA28
	b _0808AB5A
_0808AA28:
	ldr r2, [r6, #0x34]
	asrs r2, r2, #8
	ldr r3, _0808AAA8 @ =gCurLevelInfo
	ldr r5, _0808AAAC @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	mov r8, r2
	mov r1, r8
	strh r1, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r5]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r7
	cmp r0, #0
	bne _0808AAC0
	ldr r2, _0808AAB0 @ =gKirbys
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808AAC0
	ldr r1, _0808AAB4 @ =gUnk_0203AD18
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r7
	cmp r0, #0
	beq _0808AAB8
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _0808AAC0
	.align 2, 0
_0808AAA4: .4byte gUnk_03000510
_0808AAA8: .4byte gCurLevelInfo
_0808AAAC: .4byte gUnk_0203AD3C
_0808AAB0: .4byte gKirbys
_0808AAB4: .4byte gUnk_0203AD18
_0808AAB8:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
_0808AAC0:
	mov r2, sl
	ldr r1, [r2, #0x40]
	ldr r0, [r6, #0x34]
	subs r0, r1, r0
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r2, _0808AB44 @ =gCurLevelInfo
	ldr r5, _0808AB48 @ =gUnk_0203AD3C
	ldrb r3, [r5]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r0, r6, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r0, r1
	strh r3, [r6, #0x1c]
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r6, #0x14]
	ldrh r4, [r6, #6]
	ands r1, r4
	cmp r1, #0
	beq _0808AB04
	b _0808AE16
_0808AB04:
	ldr r2, _0808AB4C @ =gKirbys
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808AB20
	b _0808AE16
_0808AB20:
	ldr r1, _0808AB50 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r3, r0
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r7, [r6, #0x1e]
	adds r0, r0, r7
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _0808AB54
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _0808AE16
	.align 2, 0
_0808AB44: .4byte gCurLevelInfo
_0808AB48: .4byte gUnk_0203AD3C
_0808AB4C: .4byte gKirbys
_0808AB50: .4byte gUnk_0203AD18
_0808AB54:
	adds r0, r6, #0
	adds r0, #0xc
	b _0808AE12
_0808AB5A:
	ldr r0, _0808ABC8 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808AB9E
	ldr r5, _0808ABCC @ =gCurLevelInfo
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0808ABD0 @ =gUnk_02026D50
_0808AB6C:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r5
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808AB96
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808ABB0
_0808AB96:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808AB6C
_0808AB9E:
	movs r0, #1
	cmp r0, #0
	beq _0808ABB0
	ldrh r1, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r6, #6]
_0808ABB0:
	ldrh r1, [r6, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808ABD4
	movs r7, #0x80
	lsls r7, r7, #5
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r6, #6]
	b _0808AE1E
	.align 2, 0
_0808ABC8: .4byte gUnk_0203AD44
_0808ABCC: .4byte gCurLevelInfo
_0808ABD0: .4byte gUnk_02026D50
_0808ABD4:
	ldrh r0, [r6, #0x3c]
	adds r0, #0xc0
	strh r0, [r6, #0x3c]
	ldrh r0, [r6, #0x3e]
	adds r0, #0x40
	strh r0, [r6, #0x3e]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0808ABFE
	movs r0, #0x3c
	ldrsh r1, [r6, r0]
	ldr r0, [r6, #0x34]
	adds r0, r0, r1
	str r0, [r6, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r6, r2]
	ldr r0, [r6, #0x38]
	subs r0, r0, r1
	str r0, [r6, #0x38]
_0808ABFE:
	ldrh r1, [r6, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808AC16
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _0808AC20
_0808AC16:
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	ldr r2, _0808ACA8 @ =0xFFFFFBFF
	ands r1, r2
_0808AC20:
	str r1, [r0, #8]
	adds r7, r0, #0
	ldrh r4, [r6, #6]
	movs r0, #8
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0x28
	adds r0, r0, r6
	mov r8, r0
	cmp r3, #0
	bne _0808ACC6
	adds r0, r6, #0
	adds r0, #0x27
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r1, [r0]
	adds r5, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _0808AC52
	ldrh r0, [r6, #0x24]
	ldrh r1, [r6, #0x18]
	cmp r0, r1
	beq _0808AC68
_0808AC52:
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _0808AC68
	strb r3, [r6, #1]
	strh r3, [r6, #2]
	ldr r0, _0808ACAC @ =0x0000FFFB
	ands r0, r4
	strh r0, [r6, #6]
_0808AC68:
	adds r0, r7, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _0808ACB0
	ldrh r0, [r6, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r6, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0808ACC6
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0808ACC6
	movs r0, #0xff
	strb r0, [r5]
	ldrh r1, [r6, #6]
	ldr r0, _0808ACAC @ =0x0000FFFB
	ands r0, r1
	strh r0, [r6, #6]
	strb r3, [r6, #1]
	strh r2, [r6, #2]
	adds r0, r7, #0
	bl sub_08155128
	b _0808ACC6
	.align 2, 0
_0808ACA8: .4byte 0xFFFFFBFF
_0808ACAC: .4byte 0x0000FFFB
_0808ACB0:
	mov r2, r8
	ldrb r1, [r2]
	ldrh r0, [r6, #2]
	adds r0, r0, r1
	strh r0, [r6, #2]
	lsrs r0, r0, #4
	strb r0, [r6, #1]
	ldrh r1, [r6, #6]
	ldr r0, _0808AD70 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r6, #6]
_0808ACC6:
	ldr r2, [r6, #0x34]
	asrs r2, r2, #8
	ldr r3, _0808AD74 @ =gCurLevelInfo
	ldr r0, _0808AD78 @ =gUnk_0203AD3C
	mov ip, r0
	ldrb r0, [r0]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r5, r6, #0
	adds r5, #0x40
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r2
	movs r1, #0
	mov sb, r1
	strh r0, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	mov r2, ip
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r2, r6, #0
	adds r2, #0x41
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	strh r0, [r6, #0x1e]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0808AD22
	mov r0, sb
	strb r0, [r5]
	strb r0, [r2]
_0808AD22:
	ldrh r3, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _0808AE1E
	ldr r2, _0808AD7C @ =gKirbys
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	mov r8, r1
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808AD8A
	ldr r1, _0808AD80 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r6, #0x1c]
	adds r0, r0, r2
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r1, [r6, #0x1e]
	adds r0, r0, r1
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0808AD84
	adds r0, r7, #0
	bl sub_081564D8
	b _0808AD8A
	.align 2, 0
_0808AD70: .4byte 0x0000FFFD
_0808AD74: .4byte gCurLevelInfo
_0808AD78: .4byte gUnk_0203AD3C
_0808AD7C: .4byte gKirbys
_0808AD80: .4byte gUnk_0203AD18
_0808AD84:
	adds r0, r7, #0
	bl sub_0815604C
_0808AD8A:
	mov r2, sl
	ldr r1, [r2, #0x40]
	ldr r0, [r6, #0x34]
	subs r0, r1, r0
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r2, _0808AE00 @ =gCurLevelInfo
	ldr r4, _0808AE04 @ =gUnk_0203AD3C
	ldrb r3, [r4]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r5, r0, r1
	strh r5, [r6, #0x1c]
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r6, #0x14]
	ldrh r3, [r6, #6]
	ands r1, r3
	cmp r1, #0
	bne _0808AE16
	ldr r2, _0808AE08 @ =gKirbys
	ldrb r1, [r4]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, r8
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808AE16
	ldr r1, _0808AE0C @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r5, r0
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r2, [r6, #0x1e]
	adds r0, r0, r2
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0808AE10
	adds r0, r7, #0
	bl sub_081564D8
	b _0808AE16
	.align 2, 0
_0808AE00: .4byte gCurLevelInfo
_0808AE04: .4byte gUnk_0203AD3C
_0808AE08: .4byte gKirbys
_0808AE0C: .4byte gUnk_0203AD18
_0808AE10:
	adds r0, r7, #0
_0808AE12:
	bl sub_0815604C
_0808AE16:
	ldr r0, [r6, #0x14]
	ldr r1, _0808AE2C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r6, #0x14]
_0808AE1E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808AE2C: .4byte 0xFFFFFBFF

	thumb_func_start sub_0808AE30
sub_0808AE30: @ 0x0808AE30
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	ldr r0, _0808AE70 @ =sub_0808AF48
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808AE74 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808AE78
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808AE80
	.align 2, 0
_0808AE70: .4byte sub_0808AF48
_0808AE74: .4byte sub_0803DCCC
_0808AE78:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808AE80:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	movs r3, #0
	strh r0, [r1]
	ldr r0, _0808AEF4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808AEC6
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0808AEC6:
	cmp r6, #0
	beq _0808AF14
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r6, r0
	bls _0808AEF8
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_080709F8
	b _0808AF34
	.align 2, 0
_0808AEF4: .4byte gUnk_03000510
_0808AEF8:
	adds r1, r4, #0
	adds r1, #0xc
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_080709F8
	adds r0, r4, #0
	adds r0, #0x40
	strb r6, [r0]
	b _0808AF34
_0808AF14:
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _0808AF44 @ =0x06012000
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	mov r3, r8
	bl sub_080709F8
_0808AF34:
	adds r0, r4, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808AF44: .4byte 0x06012000

	thumb_func_start sub_0808AF48
sub_0808AF48: @ 0x0808AF48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	movs r0, #0
	str r0, [sp, #0x28]
	ldr r2, _0808AF74 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808AF78
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808AF80
	.align 2, 0
_0808AF74: .4byte gCurTask
_0808AF78:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808AF80:
	adds r5, r0, #0
	ldrh r3, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _0808AF96
	ldr r0, [r2]
	bl TaskDestroy
	b _0808B236
_0808AF96:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0808B08A
	ldrb r1, [r1]
	str r1, [sp, #0x28]
	ldr r2, _0808B010 @ =gKirbys
	ldr r0, _0808B014 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808B05C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0808B020
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0808B082
	ldr r1, [sp, #0x28]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r5, #0x18]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r2, [r2]
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _0808B018 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _0808B01C @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _0808B082
	.align 2, 0
_0808B010: .4byte gKirbys
_0808B014: .4byte gUnk_0203AD3C
_0808B018: .4byte 0xFFF7FFFF
_0808B01C: .4byte 0x0400000A
_0808B020:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0808B082
	ldr r2, [sp, #0x28]
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _0808B054 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _0808B058 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _0808B082
	.align 2, 0
_0808B054: .4byte 0xFFF7FFFF
_0808B058: .4byte 0x0400000A
_0808B05C:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _0808B078
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0808B078
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_0808B078:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_0808B082:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0
	strb r0, [r1]
_0808B08A:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _0808B0E8
	ldrb r0, [r3]
	cmp r0, #0
	beq _0808B0A8
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0808B0A8
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_0808B0A8:
	cmp r3, #0
	beq _0808B0E8
	ldr r0, _0808B0E4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808B158
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808B158
	adds r0, r5, #0
	bl sub_0803DBC8
	adds r0, r5, #0
	adds r0, #0x40
	add r6, sp, #0x28
	ldrb r6, [r6]
	strb r6, [r0]
	b _0808B236
	.align 2, 0
_0808B0E4: .4byte gUnk_03000510
_0808B0E8:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _0808B150 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808B12A
	movs r3, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808B12A
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808B12A
	movs r3, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808B12A
	movs r3, #4
_0808B12A:
	ldr r0, _0808B154 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808B158
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808B158
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0808B22C
	.align 2, 0
_0808B150: .4byte gKirbys
_0808B154: .4byte gUnk_03000510
_0808B158:
	ldr r0, _0808B200 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldr r2, [r5, #0x34]
	str r2, [sp, #0x30]
	ldr r6, [r5, #0x38]
	mov ip, r6
	ldrh r7, [r5, #0x3c]
	mov sl, r7
	ldrh r1, [r5, #4]
	mov r8, r1
	ldrh r6, [r5, #0x3e]
	mov r2, sp
	strh r6, [r2, #0x2c]
	ldrh r7, [r5, #8]
	mov sb, r7
	cmp r0, #0
	beq _0808B1B6
	ldr r6, _0808B204 @ =gCurLevelInfo
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0808B208 @ =gUnk_02026D50
_0808B184:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808B1AE
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808B1C8
_0808B1AE:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808B184
_0808B1B6:
	movs r0, #1
	cmp r0, #0
	beq _0808B1C8
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_0808B1C8:
	movs r6, #0x3c
	ldrsh r0, [r5, r6]
	ldr r7, [sp, #0x30]
	adds r2, r7, r0
	str r2, [r5, #0x34]
	movs r1, #0x3e
	ldrsh r0, [r5, r1]
	mov r6, ip
	subs r3, r6, r0
	str r3, [r5, #0x38]
	mov r0, sl
	add r0, r8
	strh r0, [r5, #0x3c]
	mov r7, sp
	ldrh r0, [r7, #0x2c]
	add r0, sb
	strh r0, [r5, #0x3e]
	ldrh r1, [r5, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808B20C
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _0808B236
	.align 2, 0
_0808B200: .4byte gUnk_0203AD44
_0808B204: .4byte gCurLevelInfo
_0808B208: .4byte gUnk_02026D50
_0808B20C:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0808B226
	movs r6, #0x3c
	ldrsh r0, [r5, r6]
	adds r0, r2, r0
	str r0, [r5, #0x34]
	movs r7, #0x3e
	ldrsh r0, [r5, r7]
	subs r0, r3, r0
	str r0, [r5, #0x38]
_0808B226:
	adds r0, r5, #0
	bl sub_0806FAC8
_0808B22C:
	adds r0, r5, #0
	adds r0, #0x40
	add r1, sp, #0x28
	ldrb r1, [r1]
	strb r1, [r0]
_0808B236:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808B248
sub_0808B248: @ 0x0808B248
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	ldr r0, _0808B288 @ =sub_0808B360
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808B28C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808B290
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808B298
	.align 2, 0
_0808B288: .4byte sub_0808B360
_0808B28C: .4byte sub_0803DCCC
_0808B290:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808B298:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	movs r3, #0
	strh r0, [r1]
	ldr r0, _0808B30C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808B2DE
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0808B2DE:
	cmp r6, #0
	beq _0808B32C
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r6, r0
	bls _0808B310
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_080709F8
	b _0808B34C
	.align 2, 0
_0808B30C: .4byte gUnk_03000510
_0808B310:
	adds r1, r4, #0
	adds r1, #0xc
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_080709F8
	adds r0, r4, #0
	adds r0, #0x40
	strb r6, [r0]
	b _0808B34C
_0808B32C:
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _0808B35C @ =0x06012000
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	mov r3, r8
	bl sub_080709F8
_0808B34C:
	adds r0, r4, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808B35C: .4byte 0x06012000

	thumb_func_start sub_0808B360
sub_0808B360: @ 0x0808B360
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	movs r7, #0
	ldr r2, _0808B380 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808B384
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808B38C
	.align 2, 0
_0808B380: .4byte gCurTask
_0808B384:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808B38C:
	adds r5, r0, #0
	ldrh r3, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _0808B3A2
	ldr r0, [r2]
	bl TaskDestroy
	b _0808B622
_0808B3A2:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0808B48E
	ldrb r7, [r1]
	ldr r2, _0808B418 @ =gKirbys
	ldr r0, _0808B41C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808B460
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0808B428
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0808B486
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r5, #0x18]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r2, [r2]
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _0808B420 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _0808B424 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _0808B486
	.align 2, 0
_0808B418: .4byte gKirbys
_0808B41C: .4byte gUnk_0203AD3C
_0808B420: .4byte 0xFFF7FFFF
_0808B424: .4byte 0x0400000A
_0808B428:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0808B486
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _0808B458 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _0808B45C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _0808B486
	.align 2, 0
_0808B458: .4byte 0xFFF7FFFF
_0808B45C: .4byte 0x0400000A
_0808B460:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _0808B47C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0808B47C
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_0808B47C:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_0808B486:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0
	strb r0, [r1]
_0808B48E:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _0808B4E0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0808B4AC
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0808B4AC
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_0808B4AC:
	cmp r3, #0
	beq _0808B4E0
	ldr r0, _0808B4DC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808B550
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808B550
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0808B61C
	.align 2, 0
_0808B4DC: .4byte gUnk_03000510
_0808B4E0:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _0808B548 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808B522
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808B522
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808B522
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808B522
	movs r3, #4
_0808B522:
	ldr r0, _0808B54C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808B550
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808B550
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0808B61C
	.align 2, 0
_0808B548: .4byte gKirbys
_0808B54C: .4byte gUnk_03000510
_0808B550:
	ldr r0, _0808B5C4 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808B598
	ldr r1, _0808B5C8 @ =gCurLevelInfo
	mov ip, r1
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0808B5CC @ =gUnk_02026D50
_0808B564:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r6, ip
	adds r1, r0, r6
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808B590
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808B5AA
_0808B590:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808B564
_0808B598:
	movs r0, #1
	cmp r0, #0
	beq _0808B5AA
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_0808B5AA:
	adds r0, r5, #0
	bl sub_0803D8AC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808B5D0
	ldrh r1, [r5, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _0808B622
	.align 2, 0
_0808B5C4: .4byte gUnk_0203AD44
_0808B5C8: .4byte gCurLevelInfo
_0808B5CC: .4byte gUnk_02026D50
_0808B5D0:
	ldrh r0, [r5, #6]
	movs r2, #4
	orrs r2, r0
	strh r2, [r5, #6]
	movs r6, #0x3c
	ldrsh r1, [r5, r6]
	ldr r0, [r5, #0x34]
	adds r3, r0, r1
	str r3, [r5, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x38]
	subs r1, r0, r1
	str r1, [r5, #0x38]
	ldrh r0, [r5, #4]
	ldrh r4, [r5, #0x3c]
	adds r0, r0, r4
	strh r0, [r5, #0x3c]
	ldrh r0, [r5, #8]
	ldrh r6, [r5, #0x3e]
	adds r0, r0, r6
	strh r0, [r5, #0x3e]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r2, r0
	cmp r2, #0
	bne _0808B616
	movs r2, #0x3c
	ldrsh r0, [r5, r2]
	adds r0, r3, r0
	str r0, [r5, #0x34]
	movs r4, #0x3e
	ldrsh r0, [r5, r4]
	subs r0, r1, r0
	str r0, [r5, #0x38]
_0808B616:
	adds r0, r5, #0
	bl sub_0806FAC8
_0808B61C:
	adds r0, r5, #0
	adds r0, #0x40
	strb r7, [r0]
_0808B622:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808B62C
sub_0808B62C: @ 0x0808B62C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, [sp, #0x24]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, _0808B678 @ =sub_0808B754
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808B67C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808B680
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808B688
	.align 2, 0
_0808B678: .4byte sub_0808B754
_0808B67C: .4byte sub_0803DCCC
_0808B680:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808B688:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	movs r3, #0
	strh r0, [r1]
	mov r0, sb
	strh r0, [r4, #4]
	ldr r0, _0808B700 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808B6D2
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0808B6D2:
	cmp r6, #0
	beq _0808B720
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r6, r0
	bls _0808B704
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_080709F8
	b _0808B740
	.align 2, 0
_0808B700: .4byte gUnk_03000510
_0808B704:
	adds r1, r4, #0
	adds r1, #0xc
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_080709F8
	adds r0, r4, #0
	adds r0, #0x40
	strb r6, [r0]
	b _0808B740
_0808B720:
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _0808B750 @ =0x06012000
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	mov r3, r8
	bl sub_080709F8
_0808B740:
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808B750: .4byte 0x06012000

	thumb_func_start sub_0808B754
sub_0808B754: @ 0x0808B754
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	movs r0, #0
	mov sl, r0
	ldr r2, _0808B780 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808B784
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808B78C
	.align 2, 0
_0808B780: .4byte gCurTask
_0808B784:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808B78C:
	adds r5, r0, #0
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0808B7A4
	ldr r0, [r2]
	bl TaskDestroy
	b _0808BA5A
_0808B7A4:
	ldr r0, [r5, #0x44]
	ldr r0, [r0, #8]
	ands r0, r1
	cmp r0, #0
	beq _0808B7B6
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _0808BA5A
_0808B7B6:
	adds r0, r5, #0
	adds r0, #0x40
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov sb, r0
	cmp r1, #0
	beq _0808B8AC
	ldrb r1, [r0]
	mov sl, r1
	ldr r2, _0808B834 @ =gKirbys
	ldr r0, _0808B838 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808B880
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0808B844
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0808B8A6
	mov r2, sl
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r5, #0x18]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r2, [r2]
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _0808B83C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _0808B840 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _0808B8A6
	.align 2, 0
_0808B834: .4byte gKirbys
_0808B838: .4byte gUnk_0203AD3C


