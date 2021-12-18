.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global HSD_AllocateXFB
HSD_AllocateXFB:
/* 80374F7C 00371B5C  7C 08 02 A6 */	mflr r0
/* 80374F80 00371B60  28 04 00 00 */	cmplwi r4, 0
/* 80374F84 00371B64  90 01 00 04 */	stw r0, 4(r1)
/* 80374F88 00371B68  3C A0 80 4C */	lis r5, FrameBuffer@ha
/* 80374F8C 00371B6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80374F90 00371B70  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 80374F94 00371B74  3B E5 09 48 */	addi r31, r5, FrameBuffer@l
/* 80374F98 00371B78  3B 83 00 00 */	addi r28, r3, 0
/* 80374F9C 00371B7C  40 82 00 0C */	bne lbl_80374FA8
/* 80374FA0 00371B80  38 60 00 00 */	li r3, 0
/* 80374FA4 00371B84  48 00 01 DC */	b lbl_80375180
lbl_80374FA8:
/* 80374FA8 00371B88  A0 64 00 04 */	lhz r3, 4(r4)
/* 80374FAC 00371B8C  A0 04 00 08 */	lhz r0, 8(r4)
/* 80374FB0 00371B90  38 63 00 0F */	addi r3, r3, 0xf
/* 80374FB4 00371B94  54 63 04 36 */	rlwinm r3, r3, 0, 0x10, 0x1b
/* 80374FB8 00371B98  7C 03 01 D6 */	mullw r0, r3, r0
/* 80374FBC 00371B9C  54 1D 08 3C */	slwi r29, r0, 1
/* 80374FC0 00371BA0  4B FC F5 11 */	bl OSGetArenaLo
/* 80374FC4 00371BA4  38 03 00 1F */	addi r0, r3, 0x1f
/* 80374FC8 00371BA8  54 1E 00 34 */	rlwinm r30, r0, 0, 0, 0x1a
/* 80374FCC 00371BAC  4B FC F4 FD */	bl OSGetArenaHi
/* 80374FD0 00371BB0  7C 9D E1 D6 */	mullw r4, r29, r28
/* 80374FD4 00371BB4  54 60 00 34 */	rlwinm r0, r3, 0, 0, 0x1a
/* 80374FD8 00371BB8  90 9F 00 14 */	stw r4, 0x14(r31)
/* 80374FDC 00371BBC  7C 1E 00 40 */	cmplw r30, r0
/* 80374FE0 00371BC0  40 82 00 34 */	bne lbl_80375014
/* 80374FE4 00371BC4  3B DF 00 00 */	addi r30, r31, 0
/* 80374FE8 00371BC8  3B 60 00 00 */	li r27, 0
/* 80374FEC 00371BCC  48 00 00 1C */	b lbl_80375008
lbl_80374FF0:
/* 80374FF0 00371BD0  80 6D A5 68 */	lwz r3, __OSCurrHeap@sda21(r13)
/* 80374FF4 00371BD4  7F A4 EB 78 */	mr r4, r29
/* 80374FF8 00371BD8  4B FC EE F9 */	bl OSAllocFromHeap
/* 80374FFC 00371BDC  90 7E 00 00 */	stw r3, 0(r30)
/* 80375000 00371BE0  3B DE 00 04 */	addi r30, r30, 4
/* 80375004 00371BE4  3B 7B 00 01 */	addi r27, r27, 1
lbl_80375008:
/* 80375008 00371BE8  7C 1B E0 00 */	cmpw r27, r28
/* 8037500C 00371BEC  41 80 FF E4 */	blt lbl_80374FF0
/* 80375010 00371BF0  48 00 00 F8 */	b lbl_80375108
lbl_80375014:
/* 80375014 00371BF4  2C 1C 00 00 */	cmpwi r28, 0
/* 80375018 00371BF8  38 E0 00 00 */	li r7, 0
/* 8037501C 00371BFC  40 81 00 C4 */	ble lbl_803750E0
/* 80375020 00371C00  2C 1C 00 08 */	cmpwi r28, 8
/* 80375024 00371C04  38 9C FF F8 */	addi r4, r28, -8
/* 80375028 00371C08  40 81 01 4C */	ble lbl_80375174
/* 8037502C 00371C0C  38 64 00 07 */	addi r3, r4, 7
/* 80375030 00371C10  54 63 E8 FE */	srwi r3, r3, 3
/* 80375034 00371C14  2C 04 00 00 */	cmpwi r4, 0
/* 80375038 00371C18  7C 69 03 A6 */	mtctr r3
/* 8037503C 00371C1C  38 BF 00 00 */	addi r5, r31, 0
/* 80375040 00371C20  38 9D 00 1F */	addi r4, r29, 0x1f
/* 80375044 00371C24  40 81 01 30 */	ble lbl_80375174
lbl_80375048:
/* 80375048 00371C28  7C 7E 22 14 */	add r3, r30, r4
/* 8037504C 00371C2C  93 C5 00 00 */	stw r30, 0(r5)
/* 80375050 00371C30  54 66 00 34 */	rlwinm r6, r3, 0, 0, 0x1a
/* 80375054 00371C34  7C 66 22 14 */	add r3, r6, r4
/* 80375058 00371C38  90 C5 00 04 */	stw r6, 4(r5)
/* 8037505C 00371C3C  54 66 00 34 */	rlwinm r6, r3, 0, 0, 0x1a
/* 80375060 00371C40  7C 66 22 14 */	add r3, r6, r4
/* 80375064 00371C44  90 C5 00 08 */	stw r6, 8(r5)
/* 80375068 00371C48  54 66 00 34 */	rlwinm r6, r3, 0, 0, 0x1a
/* 8037506C 00371C4C  7C 66 22 14 */	add r3, r6, r4
/* 80375070 00371C50  90 C5 00 0C */	stw r6, 0xc(r5)
/* 80375074 00371C54  54 66 00 34 */	rlwinm r6, r3, 0, 0, 0x1a
/* 80375078 00371C58  7C 66 22 14 */	add r3, r6, r4
/* 8037507C 00371C5C  90 C5 00 10 */	stw r6, 0x10(r5)
/* 80375080 00371C60  54 66 00 34 */	rlwinm r6, r3, 0, 0, 0x1a
/* 80375084 00371C64  7C 66 22 14 */	add r3, r6, r4
/* 80375088 00371C68  90 C5 00 14 */	stw r6, 0x14(r5)
/* 8037508C 00371C6C  54 66 00 34 */	rlwinm r6, r3, 0, 0, 0x1a
/* 80375090 00371C70  7C 66 22 14 */	add r3, r6, r4
/* 80375094 00371C74  90 C5 00 18 */	stw r6, 0x18(r5)
/* 80375098 00371C78  54 63 00 34 */	rlwinm r3, r3, 0, 0, 0x1a
/* 8037509C 00371C7C  90 65 00 1C */	stw r3, 0x1c(r5)
/* 803750A0 00371C80  7C 63 22 14 */	add r3, r3, r4
/* 803750A4 00371C84  54 7E 00 34 */	rlwinm r30, r3, 0, 0, 0x1a
/* 803750A8 00371C88  38 A5 00 20 */	addi r5, r5, 0x20
/* 803750AC 00371C8C  38 E7 00 08 */	addi r7, r7, 8
/* 803750B0 00371C90  42 00 FF 98 */	bdnz lbl_80375048
/* 803750B4 00371C94  48 00 00 C0 */	b lbl_80375174
lbl_803750B8:
/* 803750B8 00371C98  7C 67 E0 50 */	subf r3, r7, r28
/* 803750BC 00371C9C  7C 07 E0 00 */	cmpw r7, r28
/* 803750C0 00371CA0  7C 69 03 A6 */	mtctr r3
/* 803750C4 00371CA4  38 9D 00 1F */	addi r4, r29, 0x1f
/* 803750C8 00371CA8  40 80 00 18 */	bge lbl_803750E0
lbl_803750CC:
/* 803750CC 00371CAC  93 C5 00 00 */	stw r30, 0(r5)
/* 803750D0 00371CB0  7C 7E 22 14 */	add r3, r30, r4
/* 803750D4 00371CB4  54 7E 00 34 */	rlwinm r30, r3, 0, 0, 0x1a
/* 803750D8 00371CB8  38 A5 00 04 */	addi r5, r5, 4
/* 803750DC 00371CBC  42 00 FF F0 */	bdnz lbl_803750CC
lbl_803750E0:
/* 803750E0 00371CC0  7C 1E 00 40 */	cmplw r30, r0
/* 803750E4 00371CC4  40 81 00 1C */	ble lbl_80375100
/* 803750E8 00371CC8  3C 60 80 40 */	lis r3, lbl_80406BC0@ha
/* 803750EC 00371CCC  3C 80 80 40 */	lis r4, lbl_80406BD0@ha
/* 803750F0 00371CD0  38 A4 6B D0 */	addi r5, r4, lbl_80406BD0@l
/* 803750F4 00371CD4  38 63 6B C0 */	addi r3, r3, lbl_80406BC0@l
/* 803750F8 00371CD8  38 80 01 09 */	li r4, 0x109
/* 803750FC 00371CDC  48 01 31 7D */	bl HSD_Panic
lbl_80375100:
/* 80375100 00371CE0  7F C3 F3 78 */	mr r3, r30
/* 80375104 00371CE4  4B FC F3 DD */	bl OSSetArenaLo
lbl_80375108:
/* 80375108 00371CE8  2C 1C 00 03 */	cmpwi r28, 3
/* 8037510C 00371CEC  57 80 10 3A */	slwi r0, r28, 2
/* 80375110 00371CF0  7C BF 02 14 */	add r5, r31, r0
/* 80375114 00371CF4  20 7C 00 03 */	subfic r3, r28, 3
/* 80375118 00371CF8  38 80 00 00 */	li r4, 0
/* 8037511C 00371CFC  40 80 00 50 */	bge lbl_8037516C
/* 80375120 00371D00  54 60 E8 FF */	rlwinm. r0, r3, 0x1d, 3, 0x1f
/* 80375124 00371D04  7C 09 03 A6 */	mtctr r0
/* 80375128 00371D08  41 82 00 34 */	beq lbl_8037515C
lbl_8037512C:
/* 8037512C 00371D0C  90 85 00 00 */	stw r4, 0(r5)
/* 80375130 00371D10  90 85 00 04 */	stw r4, 4(r5)
/* 80375134 00371D14  90 85 00 08 */	stw r4, 8(r5)
/* 80375138 00371D18  90 85 00 0C */	stw r4, 0xc(r5)
/* 8037513C 00371D1C  90 85 00 10 */	stw r4, 0x10(r5)
/* 80375140 00371D20  90 85 00 14 */	stw r4, 0x14(r5)
/* 80375144 00371D24  90 85 00 18 */	stw r4, 0x18(r5)
/* 80375148 00371D28  90 85 00 1C */	stw r4, 0x1c(r5)
/* 8037514C 00371D2C  38 A5 00 20 */	addi r5, r5, 0x20
/* 80375150 00371D30  42 00 FF DC */	bdnz lbl_8037512C
/* 80375154 00371D34  70 63 00 07 */	andi. r3, r3, 7
/* 80375158 00371D38  41 82 00 14 */	beq lbl_8037516C
lbl_8037515C:
/* 8037515C 00371D3C  7C 69 03 A6 */	mtctr r3
lbl_80375160:
/* 80375160 00371D40  90 85 00 00 */	stw r4, 0(r5)
/* 80375164 00371D44  38 A5 00 04 */	addi r5, r5, 4
/* 80375168 00371D48  42 00 FF F8 */	bdnz lbl_80375160
lbl_8037516C:
/* 8037516C 00371D4C  7F E3 FB 78 */	mr r3, r31
/* 80375170 00371D50  48 00 00 10 */	b lbl_80375180
lbl_80375174:
/* 80375174 00371D54  54 E3 10 3A */	slwi r3, r7, 2
/* 80375178 00371D58  7C BF 1A 14 */	add r5, r31, r3
/* 8037517C 00371D5C  4B FF FF 3C */	b lbl_803750B8
lbl_80375180:
/* 80375180 00371D60  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 80375184 00371D64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80375188 00371D68  38 21 00 30 */	addi r1, r1, 0x30
/* 8037518C 00371D6C  7C 08 03 A6 */	mtlr r0
/* 80375190 00371D70  4E 80 00 20 */	blr 

.global func_80375194
func_80375194:
/* 80375194 00371D74  7C 08 02 A6 */	mflr r0
/* 80375198 00371D78  3C 80 80 40 */	lis r4, lbl_80406BC0@ha
/* 8037519C 00371D7C  90 01 00 04 */	stw r0, 4(r1)
/* 803751A0 00371D80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803751A4 00371D84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803751A8 00371D88  3B E4 6B C0 */	addi r31, r4, lbl_80406BC0@l
/* 803751AC 00371D8C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803751B0 00371D90  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803751B4 00371D94  93 81 00 10 */	stw r28, 0x10(r1)
/* 803751B8 00371D98  3B 83 00 00 */	addi r28, r3, 0
/* 803751BC 00371D9C  4B FC F3 15 */	bl OSGetArenaLo
/* 803751C0 00371DA0  38 03 00 1F */	addi r0, r3, 0x1f
/* 803751C4 00371DA4  54 1D 00 34 */	rlwinm r29, r0, 0, 0, 0x1a
/* 803751C8 00371DA8  4B FC F3 01 */	bl OSGetArenaHi
/* 803751CC 00371DAC  28 1D 00 00 */	cmplwi r29, 0
/* 803751D0 00371DB0  54 60 00 34 */	rlwinm r0, r3, 0, 0, 0x1a
/* 803751D4 00371DB4  40 82 00 34 */	bne lbl_80375208
/* 803751D8 00371DB8  28 00 00 00 */	cmplwi r0, 0
/* 803751DC 00371DBC  40 82 00 2C */	bne lbl_80375208
/* 803751E0 00371DC0  80 6D A5 68 */	lwz r3, __OSCurrHeap@sda21(r13)
/* 803751E4 00371DC4  7F 84 E3 78 */	mr r4, r28
/* 803751E8 00371DC8  4B FC ED 09 */	bl OSAllocFromHeap
/* 803751EC 00371DCC  7C 7E 1B 79 */	or. r30, r3, r3
/* 803751F0 00371DD0  40 82 00 44 */	bne lbl_80375234
/* 803751F4 00371DD4  38 7F 00 00 */	addi r3, r31, 0
/* 803751F8 00371DD8  38 BF 00 34 */	addi r5, r31, 0x34
/* 803751FC 00371DDC  38 80 01 27 */	li r4, 0x127
/* 80375200 00371DE0  48 01 30 79 */	bl HSD_Panic
/* 80375204 00371DE4  48 00 00 30 */	b lbl_80375234
lbl_80375208:
/* 80375208 00371DE8  3B DD 00 00 */	addi r30, r29, 0
/* 8037520C 00371DEC  7F BD E2 14 */	add r29, r29, r28
/* 80375210 00371DF0  4B FC F2 B9 */	bl OSGetArenaHi
/* 80375214 00371DF4  7C 1D 18 40 */	cmplw r29, r3
/* 80375218 00371DF8  40 81 00 14 */	ble lbl_8037522C
/* 8037521C 00371DFC  38 7F 00 00 */	addi r3, r31, 0
/* 80375220 00371E00  38 BF 00 5C */	addi r5, r31, 0x5c
/* 80375224 00371E04  38 80 01 2E */	li r4, 0x12e
/* 80375228 00371E08  48 01 30 51 */	bl HSD_Panic
lbl_8037522C:
/* 8037522C 00371E0C  7F A3 EB 78 */	mr r3, r29
/* 80375230 00371E10  4B FC F2 B1 */	bl OSSetArenaLo
lbl_80375234:
/* 80375234 00371E14  7F C3 F3 78 */	mr r3, r30
/* 80375238 00371E18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037523C 00371E1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80375240 00371E20  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80375244 00371E24  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80375248 00371E28  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8037524C 00371E2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80375250 00371E30  7C 08 03 A6 */	mtlr r0
/* 80375254 00371E34  4E 80 00 20 */	blr 

.global HSD_GXInit
HSD_GXInit:
/* 80375258 00371E38  7C 08 02 A6 */	mflr r0
/* 8037525C 00371E3C  90 01 00 04 */	stw r0, 4(r1)
/* 80375260 00371E40  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 80375264 00371E44  93 E1 00 54 */	stw r31, 0x54(r1)
/* 80375268 00371E48  38 61 00 0C */	addi r3, r1, 0xc
/* 8037526C 00371E4C  C0 42 EB B8 */	lfs f2, lbl_804DE598@sda21(r2)
/* 80375270 00371E50  C0 22 EB B4 */	lfs f1, lbl_804DE594@sda21(r2)
/* 80375274 00371E54  FC 60 10 90 */	fmr f3, f2
/* 80375278 00371E58  4B FC 8E 79 */	bl func_8033E0F0
/* 8037527C 00371E5C  C0 42 EB B8 */	lfs f2, lbl_804DE598@sda21(r2)
/* 80375280 00371E60  38 61 00 0C */	addi r3, r1, 0xc
/* 80375284 00371E64  C0 22 EB B4 */	lfs f1, lbl_804DE594@sda21(r2)
/* 80375288 00371E68  FC 60 10 90 */	fmr f3, f2
/* 8037528C 00371E6C  4B FC 8E 75 */	bl func_8033E100
/* 80375290 00371E70  C0 42 EB B8 */	lfs f2, lbl_804DE598@sda21(r2)
/* 80375294 00371E74  38 61 00 0C */	addi r3, r1, 0xc
/* 80375298 00371E78  C0 22 EB B4 */	lfs f1, lbl_804DE594@sda21(r2)
/* 8037529C 00371E7C  FC 60 10 90 */	fmr f3, f2
/* 803752A0 00371E80  FC 80 08 90 */	fmr f4, f1
/* 803752A4 00371E84  FC A0 10 90 */	fmr f5, f2
/* 803752A8 00371E88  FC C0 10 90 */	fmr f6, f2
/* 803752AC 00371E8C  4B FC 8B D9 */	bl func_8033DE84
/* 803752B0 00371E90  80 0D A7 7C */	lwz r0, lbl_804D5E1C@sda21(r13)
/* 803752B4 00371E94  38 81 00 08 */	addi r4, r1, 8
/* 803752B8 00371E98  38 61 00 0C */	addi r3, r1, 0xc
/* 803752BC 00371E9C  90 01 00 08 */	stw r0, 8(r1)
/* 803752C0 00371EA0  4B FC 8E 5D */	bl func_8033E11C
/* 803752C4 00371EA4  3B E0 00 00 */	li r31, 0
lbl_803752C8:
/* 803752C8 00371EA8  7F E3 FB 78 */	mr r3, r31
/* 803752CC 00371EAC  4B FF 18 99 */	bl func_80366B64
/* 803752D0 00371EB0  38 83 00 00 */	addi r4, r3, 0
/* 803752D4 00371EB4  38 61 00 0C */	addi r3, r1, 0xc
/* 803752D8 00371EB8  4B FC 8E 6D */	bl func_8033E144
/* 803752DC 00371EBC  3B FF 00 01 */	addi r31, r31, 1
/* 803752E0 00371EC0  2C 1F 00 08 */	cmpwi r31, 8
/* 803752E4 00371EC4  41 80 FF E4 */	blt lbl_803752C8
/* 803752E8 00371EC8  38 60 FF FF */	li r3, -1
/* 803752EC 00371ECC  4B FE CC D9 */	bl func_80361FC4
/* 803752F0 00371ED0  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 803752F4 00371ED4  83 E1 00 54 */	lwz r31, 0x54(r1)
/* 803752F8 00371ED8  38 21 00 58 */	addi r1, r1, 0x58
/* 803752FC 00371EDC  7C 08 03 A6 */	mtlr r0
/* 80375300 00371EE0  4E 80 00 20 */	blr 

.global HSD_OSInit
HSD_OSInit:
/* 80375304 00371EE4  7C 08 02 A6 */	mflr r0
/* 80375308 00371EE8  3C 60 80 4C */	lis r3, FrameBuffer@ha
/* 8037530C 00371EEC  90 01 00 04 */	stw r0, 4(r1)
/* 80375310 00371EF0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80375314 00371EF4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80375318 00371EF8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8037531C 00371EFC  3B C3 09 48 */	addi r30, r3, FrameBuffer@l
/* 80375320 00371F00  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80375324 00371F04  93 81 00 08 */	stw r28, 8(r1)
/* 80375328 00371F08  4B FC F1 A9 */	bl OSGetArenaLo
/* 8037532C 00371F0C  7C 7D 1B 78 */	mr r29, r3
/* 80375330 00371F10  4B FC F1 99 */	bl OSGetArenaHi
/* 80375334 00371F14  7C 7C 1B 78 */	mr r28, r3
/* 80375338 00371F18  4B FD 28 AD */	bl OSGetPhysicalMemSize
/* 8037533C 00371F1C  90 7E 00 0C */	stw r3, 0xc(r30)
/* 80375340 00371F20  4B FC F1 91 */	bl OSGetArenaLo
/* 80375344 00371F24  7C 7F 1B 78 */	mr r31, r3
/* 80375348 00371F28  4B FC F1 81 */	bl OSGetArenaHi
/* 8037534C 00371F2C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80375350 00371F30  7F 84 E3 78 */	mr r4, r28
/* 80375354 00371F34  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 80375358 00371F38  7C 63 00 50 */	subf r3, r3, r0
/* 8037535C 00371F3C  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80375360 00371F40  7C 63 FA 14 */	add r3, r3, r31
/* 80375364 00371F44  7C 65 18 50 */	subf r3, r5, r3
/* 80375368 00371F48  7C 00 18 50 */	subf r0, r0, r3
/* 8037536C 00371F4C  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80375370 00371F50  7F A3 EB 78 */	mr r3, r29
/* 80375374 00371F54  80 AD A7 74 */	lwz r5, lbl_804D5E14@sda21(r13)
/* 80375378 00371F58  4B FC ED 01 */	bl OSInitAlloc
/* 8037537C 00371F5C  7C 7F 1B 78 */	mr r31, r3
/* 80375380 00371F60  4B FC F1 61 */	bl OSSetArenaLo
/* 80375384 00371F64  38 7F 00 1F */	addi r3, r31, 0x1f
/* 80375388 00371F68  80 0D A7 78 */	lwz r0, lbl_804D5E18@sda21(r13)
/* 8037538C 00371F6C  54 7F 00 34 */	rlwinm r31, r3, 0, 0, 0x1a
/* 80375390 00371F70  38 7F 00 00 */	addi r3, r31, 0
/* 80375394 00371F74  57 9D 00 34 */	rlwinm r29, r28, 0, 0, 0x1a
/* 80375398 00371F78  7C 9F 02 14 */	add r4, r31, r0
/* 8037539C 00371F7C  4B FC ED 4D */	bl OSCreateHeap
/* 803753A0 00371F80  80 0D A7 78 */	lwz r0, lbl_804D5E18@sda21(r13)
/* 803753A4 00371F84  7F A4 EB 78 */	mr r4, r29
/* 803753A8 00371F88  90 6D A9 78 */	stw r3, lbl_804D6018@sda21(r13)
/* 803753AC 00371F8C  7F FF 02 14 */	add r31, r31, r0
/* 803753B0 00371F90  93 ED C0 18 */	stw r31, lbl_804D76B8@sda21(r13)
/* 803753B4 00371F94  7F E3 FB 78 */	mr r3, r31
/* 803753B8 00371F98  93 AD C0 1C */	stw r29, lbl_804D76BC@sda21(r13)
/* 803753BC 00371F9C  4B FC ED 2D */	bl OSCreateHeap
/* 803753C0 00371FA0  90 6D A7 60 */	stw r3, lbl_804D5E00@sda21(r13)
/* 803753C4 00371FA4  80 6D A7 60 */	lwz r3, lbl_804D5E00@sda21(r13)
/* 803753C8 00371FA8  4B FC EC A1 */	bl func_80344068
/* 803753CC 00371FAC  7C 7F E8 50 */	subf r3, r31, r29
/* 803753D0 00371FB0  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 803753D4 00371FB4  38 80 00 00 */	li r4, 0
/* 803753D8 00371FB8  48 00 55 75 */	bl HSD_ObjSetHeap
/* 803753DC 00371FBC  7F A3 EB 78 */	mr r3, r29
/* 803753E0 00371FC0  4B FC F1 01 */	bl OSSetArenaLo
/* 803753E4 00371FC4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803753E8 00371FC8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803753EC 00371FCC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 803753F0 00371FD0  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 803753F4 00371FD4  83 81 00 08 */	lwz r28, 8(r1)
/* 803753F8 00371FD8  38 21 00 18 */	addi r1, r1, 0x18
/* 803753FC 00371FDC  7C 08 03 A6 */	mtlr r0
/* 80375400 00371FE0  4E 80 00 20 */	blr 

.global HSD_GetHeap
HSD_GetHeap:
/* 80375404 00371FE4  80 6D A7 60 */	lwz r3, lbl_804D5E00@sda21(r13)
/* 80375408 00371FE8  4E 80 00 20 */	blr 

.global func_8037540C
func_8037540C:
/* 8037540C 00371FEC  90 6D A7 60 */	stw r3, lbl_804D5E00@sda21(r13)
/* 80375410 00371FF0  4E 80 00 20 */	blr 

.global func_80375414
func_80375414:
/* 80375414 00371FF4  80 0D C0 18 */	lwz r0, lbl_804D76B8@sda21(r13)
/* 80375418 00371FF8  90 03 00 00 */	stw r0, 0(r3)
/* 8037541C 00371FFC  80 0D C0 1C */	lwz r0, lbl_804D76BC@sda21(r13)
/* 80375420 00372000  90 04 00 00 */	stw r0, 0(r4)
/* 80375424 00372004  4E 80 00 20 */	blr 

.global func_80375428
func_80375428:
/* 80375428 00372008  7C 08 02 A6 */	mflr r0
/* 8037542C 0037200C  3C A0 80 3C */	lis r5, lbl_803B94E0@ha
/* 80375430 00372010  90 01 00 04 */	stw r0, 4(r1)
/* 80375434 00372014  39 05 94 E0 */	addi r8, r5, lbl_803B94E0@l
/* 80375438 00372018  3C A0 80 40 */	lis r5, lbl_80406C3C@ha
/* 8037543C 0037201C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80375440 00372020  38 05 6C 3C */	addi r0, r5, lbl_80406C3C@l
/* 80375444 00372024  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80375448 00372028  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8037544C 0037202C  3B C4 00 00 */	addi r30, r4, 0
/* 80375450 00372030  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80375454 00372034  3B A3 00 00 */	addi r29, r3, 0
/* 80375458 00372038  7C 03 03 78 */	mr r3, r0
/* 8037545C 0037203C  80 E8 00 00 */	lwz r7, 0(r8)
/* 80375460 00372040  80 C8 00 04 */	lwz r6, 4(r8)
/* 80375464 00372044  90 E1 00 10 */	stw r7, 0x10(r1)
/* 80375468 00372048  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8037546C 0037204C  80 88 00 08 */	lwz r4, 8(r8)
/* 80375470 00372050  80 08 00 0C */	lwz r0, 0xc(r8)
/* 80375474 00372054  90 81 00 18 */	stw r4, 0x18(r1)
/* 80375478 00372058  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8037547C 0037205C  80 88 00 10 */	lwz r4, 0x10(r8)
/* 80375480 00372060  80 08 00 14 */	lwz r0, 0x14(r8)
/* 80375484 00372064  90 81 00 20 */	stw r4, 0x20(r1)
/* 80375488 00372068  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037548C 0037206C  80 08 00 18 */	lwz r0, 0x18(r8)
/* 80375490 00372070  90 01 00 28 */	stw r0, 0x28(r1)
/* 80375494 00372074  48 00 D2 85 */	bl func_80382718
/* 80375498 00372078  48 00 01 1D */	bl HSD_ObjInit
/* 8037549C 0037207C  3B E1 00 10 */	addi r31, r1, 0x10
/* 803754A0 00372080  48 00 00 18 */	b lbl_803754B8
lbl_803754A4:
/* 803754A4 00372084  80 6D C0 18 */	lwz r3, lbl_804D76B8@sda21(r13)
/* 803754A8 00372088  7D 88 03 A6 */	mtlr r12
/* 803754AC 0037208C  80 8D C0 1C */	lwz r4, lbl_804D76BC@sda21(r13)
/* 803754B0 00372090  4E 80 00 21 */	blrl 
/* 803754B4 00372094  3B FF 00 04 */	addi r31, r31, 4
lbl_803754B8:
/* 803754B8 00372098  81 9F 00 00 */	lwz r12, 0(r31)
/* 803754BC 0037209C  28 0C 00 00 */	cmplwi r12, 0
/* 803754C0 003720A0  40 82 FF E4 */	bne lbl_803754A4
/* 803754C4 003720A4  28 1D 00 00 */	cmplwi r29, 0
/* 803754C8 003720A8  41 82 00 08 */	beq lbl_803754D0
/* 803754CC 003720AC  93 AD C0 18 */	stw r29, lbl_804D76B8@sda21(r13)
lbl_803754D0:
/* 803754D0 003720B0  28 1E 00 00 */	cmplwi r30, 0
/* 803754D4 003720B4  41 82 00 08 */	beq lbl_803754DC
/* 803754D8 003720B8  93 CD C0 1C */	stw r30, lbl_804D76BC@sda21(r13)
lbl_803754DC:
/* 803754DC 003720BC  80 6D A7 60 */	lwz r3, lbl_804D5E00@sda21(r13)
/* 803754E0 003720C0  4B FC EC 75 */	bl OSDestroyHeap
/* 803754E4 003720C4  80 6D C0 18 */	lwz r3, lbl_804D76B8@sda21(r13)
/* 803754E8 003720C8  80 8D C0 1C */	lwz r4, lbl_804D76BC@sda21(r13)
/* 803754EC 003720CC  4B FC EB FD */	bl OSCreateHeap
/* 803754F0 003720D0  90 6D A7 60 */	stw r3, lbl_804D5E00@sda21(r13)
/* 803754F4 003720D4  80 6D A7 60 */	lwz r3, lbl_804D5E00@sda21(r13)
/* 803754F8 003720D8  4B FC EB 71 */	bl func_80344068
/* 803754FC 003720DC  80 6D C0 18 */	lwz r3, lbl_804D76B8@sda21(r13)
/* 80375500 003720E0  38 80 00 00 */	li r4, 0
/* 80375504 003720E4  80 0D C0 1C */	lwz r0, lbl_804D76BC@sda21(r13)
/* 80375508 003720E8  7C 63 00 50 */	subf r3, r3, r0
/* 8037550C 003720EC  48 00 54 41 */	bl HSD_ObjSetHeap
/* 80375510 003720F0  80 6D A7 60 */	lwz r3, lbl_804D5E00@sda21(r13)
/* 80375514 003720F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80375518 003720F8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8037551C 003720FC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80375520 00372100  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80375524 00372104  38 21 00 40 */	addi r1, r1, 0x40
/* 80375528 00372108  7C 08 03 A6 */	mtlr r0
/* 8037552C 0037210C  4E 80 00 20 */	blr 

.global func_80375530
func_80375530:
/* 80375530 00372110  80 6D C0 20 */	lwz r3, lbl_804D76C0@sda21(r13)
/* 80375534 00372114  4E 80 00 20 */	blr 

.global func_80375538
func_80375538:
/* 80375538 00372118  7C 08 02 A6 */	mflr r0
/* 8037553C 0037211C  3C 80 80 4C */	lis r4, lbl_804C1D80@ha
/* 80375540 00372120  90 01 00 04 */	stw r0, 4(r1)
/* 80375544 00372124  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80375548 00372128  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8037554C 0037212C  3B E4 1D 80 */	addi r31, r4, lbl_804C1D80@l
/* 80375550 00372130  90 6D C0 20 */	stw r3, lbl_804D76C0@sda21(r13)
/* 80375554 00372134  88 1F 00 19 */	lbz r0, 0x19(r31)
/* 80375558 00372138  28 00 00 00 */	cmplwi r0, 0
/* 8037555C 0037213C  41 82 00 14 */	beq lbl_80375570
/* 80375560 00372140  38 60 00 02 */	li r3, 2
/* 80375564 00372144  80 8D A7 68 */	lwz r4, lbl_804D5E08@sda21(r13)
/* 80375568 00372148  4B FC B9 11 */	bl func_80340E78
/* 8037556C 0037214C  48 00 00 10 */	b lbl_8037557C
lbl_80375570:
/* 80375570 00372150  80 6D C0 28 */	lwz r3, lbl_804D76C8@sda21(r13)
/* 80375574 00372154  38 80 00 00 */	li r4, 0
/* 80375578 00372158  4B FC B9 01 */	bl func_80340E78
lbl_8037557C:
/* 8037557C 0037215C  A0 9F 00 08 */	lhz r4, 8(r31)
/* 80375580 00372160  A0 1F 00 10 */	lhz r0, 0x10(r31)
/* 80375584 00372164  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 80375588 00372168  7C 00 20 50 */	subf r0, r0, r4
/* 8037558C 0037216C  54 04 0F FE */	srwi r4, r0, 0x1f
/* 80375590 00372170  4B FC BA C5 */	bl func_80341054
/* 80375594 00372174  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80375598 00372178  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8037559C 0037217C  38 21 00 18 */	addi r1, r1, 0x18
/* 803755A0 00372180  7C 08 03 A6 */	mtlr r0
/* 803755A4 00372184  4E 80 00 20 */	blr 

.global func_803755A8
func_803755A8:
/* 803755A8 00372188  80 0D C0 20 */	lwz r0, lbl_804D76C0@sda21(r13)
/* 803755AC 0037218C  2C 00 00 03 */	cmpwi r0, 3
/* 803755B0 00372190  4E 80 00 20 */	blr 

.global HSD_ObjInit
HSD_ObjInit:
/* 803755B4 00372194  7C 08 02 A6 */	mflr r0
/* 803755B8 00372198  90 01 00 04 */	stw r0, 4(r1)
/* 803755BC 0037219C  94 21 FF F8 */	stwu r1, -8(r1)
/* 803755C0 003721A0  48 00 8E 3D */	bl HSD_ListInitAllocData
/* 803755C4 003721A4  4B FE EA 05 */	bl HSD_AObjInitAllocData
/* 803755C8 003721A8  4B FF 53 7D */	bl HSD_FObjInitAllocData
/* 803755CC 003721AC  48 00 77 C1 */	bl HSD_IDInitAllocData
/* 803755D0 003721B0  48 00 51 45 */	bl func_8037A714
/* 803755D4 003721B4  48 00 51 7D */	bl func_8037A750
/* 803755D8 003721B8  48 00 58 5D */	bl HSD_RObjInitAllocData
/* 803755DC 003721BC  4B FE CA 49 */	bl HSD_RenderInitAllocData
/* 803755E0 003721C0  48 00 9C 71 */	bl HSD_ShadowInitAllocData
/* 803755E4 003721C4  4B FF E2 BD */	bl HSD_ZListInitAllocData
/* 803755E8 003721C8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803755EC 003721CC  38 21 00 08 */	addi r1, r1, 8
/* 803755F0 003721D0  7C 08 03 A6 */	mtlr r0
/* 803755F4 003721D4  4E 80 00 20 */	blr 

.global func_803755F8
func_803755F8:
/* 803755F8 003721D8  7C 08 02 A6 */	mflr r0
/* 803755FC 003721DC  3C 60 80 3C */	lis r3, lbl_803B94FC@ha
/* 80375600 003721E0  90 01 00 04 */	stw r0, 4(r1)
/* 80375604 003721E4  38 00 00 0E */	li r0, 0xe
/* 80375608 003721E8  38 63 94 FC */	addi r3, r3, lbl_803B94FC@l
/* 8037560C 003721EC  7C 09 03 A6 */	mtctr r0
/* 80375610 003721F0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80375614 003721F4  3C 80 80 40 */	lis r4, lbl_80406BC0@ha
/* 80375618 003721F8  BF 61 00 8C */	stmw r27, 0x8c(r1)
/* 8037561C 003721FC  3B C4 6B C0 */	addi r30, r4, lbl_80406BC0@l
/* 80375620 00372200  38 A1 00 0C */	addi r5, r1, 0xc
/* 80375624 00372204  38 83 FF F8 */	addi r4, r3, -8
lbl_80375628:
/* 80375628 00372208  84 64 00 08 */	lwzu r3, 8(r4)
/* 8037562C 0037220C  80 04 00 04 */	lwz r0, 4(r4)
/* 80375630 00372210  94 65 00 08 */	stwu r3, 8(r5)
/* 80375634 00372214  90 05 00 04 */	stw r0, 4(r5)
/* 80375638 00372218  42 00 FF F0 */	bdnz lbl_80375628
/* 8037563C 0037221C  3B 61 00 14 */	addi r27, r1, 0x14
/* 80375640 00372220  48 00 00 98 */	b lbl_803756D8
lbl_80375644:
/* 80375644 00372224  81 9B 00 00 */	lwz r12, 0(r27)
/* 80375648 00372228  7D 88 03 A6 */	mtlr r12
/* 8037564C 0037222C  4E 80 00 21 */	blrl 
/* 80375650 00372230  7C 7F 1B 79 */	or. r31, r3, r3
/* 80375654 00372234  40 82 00 14 */	bne lbl_80375668
/* 80375658 00372238  38 7E 00 B0 */	addi r3, r30, 0xb0
/* 8037565C 0037223C  38 80 00 ED */	li r4, 0xed
/* 80375660 00372240  38 AD A7 DC */	addi r5, r13, lbl_804D5E7C@sda21
/* 80375664 00372244  48 01 2B BD */	bl __assert
lbl_80375668:
/* 80375668 00372248  81 9B 00 00 */	lwz r12, 0(r27)
/* 8037566C 0037224C  83 BF 00 10 */	lwz r29, 0x10(r31)
/* 80375670 00372250  7D 88 03 A6 */	mtlr r12
/* 80375674 00372254  4E 80 00 21 */	blrl 
/* 80375678 00372258  7C 7F 1B 79 */	or. r31, r3, r3
/* 8037567C 0037225C  40 82 00 14 */	bne lbl_80375690
/* 80375680 00372260  38 7E 00 B0 */	addi r3, r30, 0xb0
/* 80375684 00372264  38 80 00 DD */	li r4, 0xdd
/* 80375688 00372268  38 AD A7 DC */	addi r5, r13, lbl_804D5E7C@sda21
/* 8037568C 0037226C  48 01 2B 95 */	bl __assert
lbl_80375690:
/* 80375690 00372270  81 9B 00 00 */	lwz r12, 0(r27)
/* 80375694 00372274  83 9F 00 0C */	lwz r28, 0xc(r31)
/* 80375698 00372278  7D 88 03 A6 */	mtlr r12
/* 8037569C 0037227C  4E 80 00 21 */	blrl 
/* 803756A0 00372280  7C 7F 1B 79 */	or. r31, r3, r3
/* 803756A4 00372284  40 82 00 14 */	bne lbl_803756B8
/* 803756A8 00372288  38 7E 00 B0 */	addi r3, r30, 0xb0
/* 803756AC 0037228C  38 80 00 CD */	li r4, 0xcd
/* 803756B0 00372290  38 AD A7 DC */	addi r5, r13, lbl_804D5E7C@sda21
/* 803756B4 00372294  48 01 2B 6D */	bl __assert
lbl_803756B8:
/* 803756B8 00372298  80 BF 00 08 */	lwz r5, 8(r31)
/* 803756BC 0037229C  7F 86 E3 78 */	mr r6, r28
/* 803756C0 003722A0  80 9B 00 04 */	lwz r4, 4(r27)
/* 803756C4 003722A4  38 FD 00 00 */	addi r7, r29, 0
/* 803756C8 003722A8  38 7E 00 BC */	addi r3, r30, 0xbc
/* 803756CC 003722AC  4C C6 31 82 */	crclr 6
/* 803756D0 003722B0  4B FC FF D9 */	bl OSReport
/* 803756D4 003722B4  3B 7B 00 08 */	addi r27, r27, 8
lbl_803756D8:
/* 803756D8 003722B8  80 1B 00 04 */	lwz r0, 4(r27)
/* 803756DC 003722BC  28 00 00 00 */	cmplwi r0, 0
/* 803756E0 003722C0  40 82 FF 64 */	bne lbl_80375644
/* 803756E4 003722C4  BB 61 00 8C */	lmw r27, 0x8c(r1)
/* 803756E8 003722C8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 803756EC 003722CC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 803756F0 003722D0  7C 08 03 A6 */	mtlr r0
/* 803756F4 003722D4  4E 80 00 20 */	blr 

.global func_803756F8
func_803756F8:
/* 803756F8 003722D8  7C 08 02 A6 */	mflr r0
/* 803756FC 003722DC  90 01 00 04 */	stw r0, 4(r1)
/* 80375700 003722E0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80375704 003722E4  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80375708 003722E8  40 86 00 24 */	bne cr1, lbl_8037572C
/* 8037570C 003722EC  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 80375710 003722F0  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80375714 003722F4  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 80375718 003722F8  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8037571C 003722FC  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80375720 00372300  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 80375724 00372304  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 80375728 00372308  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_8037572C:
/* 8037572C 0037230C  90 61 00 08 */	stw r3, 8(r1)
/* 80375730 00372310  3B E0 00 00 */	li r31, 0
/* 80375734 00372314  90 81 00 0C */	stw r4, 0xc(r1)
/* 80375738 00372318  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8037573C 0037231C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80375740 00372320  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80375744 00372324  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80375748 00372328  91 21 00 20 */	stw r9, 0x20(r1)
/* 8037574C 0037232C  91 41 00 24 */	stw r10, 0x24(r1)
/* 80375750 00372330  80 0D C0 2C */	lwz r0, init_done@sda21(r13)
/* 80375754 00372334  2C 00 00 00 */	cmpwi r0, 0
/* 80375758 00372338  41 82 00 30 */	beq lbl_80375788
/* 8037575C 0037233C  80 0D C0 30 */	lwz r0, lbl_804D76D0@sda21(r13)
/* 80375760 00372340  2C 00 00 00 */	cmpwi r0, 0
/* 80375764 00372344  40 82 00 1C */	bne lbl_80375780
/* 80375768 00372348  3C 60 80 40 */	lis r3, lbl_80406CA4@ha
/* 8037576C 0037234C  4C C6 31 82 */	crclr 6
/* 80375770 00372350  38 63 6C A4 */	addi r3, r3, lbl_80406CA4@l
/* 80375774 00372354  4B FC FF 35 */	bl OSReport
/* 80375778 00372358  38 00 00 01 */	li r0, 1
/* 8037577C 0037235C  90 0D C0 30 */	stw r0, lbl_804D76D0@sda21(r13)
lbl_80375780:
/* 80375780 00372360  38 60 00 00 */	li r3, 0
/* 80375784 00372364  48 00 00 F4 */	b lbl_80375878
lbl_80375788:
/* 80375788 00372368  3C 00 01 00 */	lis r0, 0x100
/* 8037578C 0037236C  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80375790 00372370  38 01 00 88 */	addi r0, r1, 0x88
/* 80375794 00372374  2C 03 00 02 */	cmpwi r3, 2
/* 80375798 00372378  90 01 00 70 */	stw r0, 0x70(r1)
/* 8037579C 0037237C  38 01 00 08 */	addi r0, r1, 8
/* 803757A0 00372380  38 81 00 6C */	addi r4, r1, 0x6c
/* 803757A4 00372384  90 01 00 74 */	stw r0, 0x74(r1)
/* 803757A8 00372388  41 82 00 70 */	beq lbl_80375818
/* 803757AC 0037238C  40 80 00 14 */	bge lbl_803757C0
/* 803757B0 00372390  2C 03 00 00 */	cmpwi r3, 0
/* 803757B4 00372394  41 82 00 1C */	beq lbl_803757D0
/* 803757B8 00372398  40 80 00 3C */	bge lbl_803757F4
/* 803757BC 0037239C  48 00 00 B8 */	b lbl_80375874
lbl_803757C0:
/* 803757C0 003723A0  2C 03 00 04 */	cmpwi r3, 4
/* 803757C4 003723A4  41 82 00 9C */	beq lbl_80375860
/* 803757C8 003723A8  40 80 00 AC */	bge lbl_80375874
/* 803757CC 003723AC  48 00 00 70 */	b lbl_8037583C
lbl_803757D0:
/* 803757D0 003723B0  38 64 00 00 */	addi r3, r4, 0
/* 803757D4 003723B4  38 80 00 01 */	li r4, 1
/* 803757D8 003723B8  4B FA CE 49 */	bl __va_arg
/* 803757DC 003723BC  80 03 00 00 */	lwz r0, 0(r3)
/* 803757E0 003723C0  28 00 00 00 */	cmplwi r0, 0
/* 803757E4 003723C4  41 82 00 90 */	beq lbl_80375874
/* 803757E8 003723C8  90 0D A7 6C */	stw r0, iparam_fifo_size@sda21(r13)
/* 803757EC 003723CC  3B E0 00 01 */	li r31, 1
/* 803757F0 003723D0  48 00 00 84 */	b lbl_80375874
lbl_803757F4:
/* 803757F4 003723D4  38 64 00 00 */	addi r3, r4, 0
/* 803757F8 003723D8  38 80 00 01 */	li r4, 1
/* 803757FC 003723DC  4B FA CE 25 */	bl __va_arg
/* 80375800 003723E0  80 03 00 00 */	lwz r0, 0(r3)
/* 80375804 003723E4  28 00 00 00 */	cmplwi r0, 0
/* 80375808 003723E8  41 82 00 6C */	beq lbl_80375874
/* 8037580C 003723EC  90 0D A7 70 */	stw r0, lbl_804D5E10@sda21(r13)
/* 80375810 003723F0  3B E0 00 01 */	li r31, 1
/* 80375814 003723F4  48 00 00 60 */	b lbl_80375874
lbl_80375818:
/* 80375818 003723F8  38 64 00 00 */	addi r3, r4, 0
/* 8037581C 003723FC  38 80 00 01 */	li r4, 1
/* 80375820 00372400  4B FA CE 01 */	bl __va_arg
/* 80375824 00372404  80 03 00 00 */	lwz r0, 0(r3)
/* 80375828 00372408  28 00 00 00 */	cmplwi r0, 0
/* 8037582C 0037240C  41 82 00 48 */	beq lbl_80375874
/* 80375830 00372410  90 0D A7 74 */	stw r0, lbl_804D5E14@sda21(r13)
/* 80375834 00372414  3B E0 00 01 */	li r31, 1
/* 80375838 00372418  48 00 00 3C */	b lbl_80375874
lbl_8037583C:
/* 8037583C 0037241C  38 64 00 00 */	addi r3, r4, 0
/* 80375840 00372420  38 80 00 01 */	li r4, 1
/* 80375844 00372424  4B FA CD DD */	bl __va_arg
/* 80375848 00372428  80 03 00 00 */	lwz r0, 0(r3)
/* 8037584C 0037242C  28 00 00 00 */	cmplwi r0, 0
/* 80375850 00372430  41 82 00 24 */	beq lbl_80375874
/* 80375854 00372434  90 0D A7 78 */	stw r0, lbl_804D5E18@sda21(r13)
/* 80375858 00372438  3B E0 00 01 */	li r31, 1
/* 8037585C 0037243C  48 00 00 18 */	b lbl_80375874
lbl_80375860:
/* 80375860 00372440  38 64 00 00 */	addi r3, r4, 0
/* 80375864 00372444  38 80 00 01 */	li r4, 1
/* 80375868 00372448  4B FA CD B9 */	bl __va_arg
/* 8037586C 0037244C  80 03 00 00 */	lwz r0, 0(r3)
/* 80375870 00372450  90 0D A7 64 */	stw r0, rmode@sda21(r13)
lbl_80375874:
/* 80375874 00372454  7F E3 FB 78 */	mr r3, r31
lbl_80375878:
/* 80375878 00372458  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8037587C 0037245C  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80375880 00372460  38 21 00 80 */	addi r1, r1, 0x80
/* 80375884 00372464  7C 08 03 A6 */	mtlr r0
/* 80375888 00372468  4E 80 00 20 */	blr 


.section .rodata

.global lbl_803B94E0
lbl_803B94E0:
	.4byte _HSD_AObjForgetMemory
    .4byte _HSD_DispForgetMemory
    .4byte _HSD_IDForgetMemory
    .4byte _HSD_ObjAllocForgetMemory
    .4byte _HSD_RandForgetMemory
    .4byte _HSD_RObjForgetMemory
    .4byte NULL
.global lbl_803B94FC
lbl_803B94FC:
    .4byte HSD_AObjGetAllocData
    .4byte lbl_804D5E20
    .4byte HSD_FObjGetAllocData
    .4byte lbl_804D5E28
    .4byte HSD_IDGetAllocData
    .4byte lbl_804D5E30
    .4byte HSD_SListGetAllocData
    .4byte lbl_804D5E34
    .4byte HSD_DListGetAllocData
    .4byte lbl_804D5E3C
    .4byte HSD_VecGetAllocData
    .4byte lbl_804D5E44
    .4byte HSD_MtxGetAllocData
    .4byte lbl_804D5E48
    .4byte HSD_RObjGetAllocData
    .4byte lbl_804D5E4C
    .4byte HSD_RvalueObjGetAllocData
    .4byte lbl_804D5E54
    .4byte HSD_ShadowGetAllocData
    .4byte lbl_804D5E5C
    .4byte HSD_RenderGetAllocData
    .4byte lbl_804D5E64
    .4byte HSD_ChanGetAllocData
    .4byte lbl_804D5E6C
    .4byte HSD_TevRegGetAllocData
    .4byte lbl_804D5E74
	.4byte NULL
    .4byte NULL
    .4byte NULL


.section .bss, "wa"

.skip 0x4

.global FrameBuffer
FrameBuffer:
    .skip 0xC
.global memReport
memReport:
    .skip 0x2C


.section .sdata

.global lbl_804D5E00
lbl_804D5E00:
    .4byte 0xFFFFFFFF
.global rmode
rmode:
    .4byte lbl_80401168
.global lbl_804D5E08
lbl_804D5E08:
    .4byte 0x00000002
.global iparam_fifo_size
iparam_fifo_size:
    .4byte 0x00040000
.global lbl_804D5E10
lbl_804D5E10:
    .4byte 0x00000002
.global lbl_804D5E14
lbl_804D5E14:
    .4byte 0x00000004
.global lbl_804D5E18
lbl_804D5E18:
    .4byte 0x00080000
.global lbl_804D5E1C
lbl_804D5E1C:
    .4byte 0x00000000
.global lbl_804D5E20
lbl_804D5E20:
    .4byte 0x616F626A
    .4byte 0x00000000
.global lbl_804D5E28
lbl_804D5E28:
    .4byte 0x666F626A
    .4byte 0x00000000
.global lbl_804D5E30
lbl_804D5E30:
    .4byte 0x69640000
.global lbl_804D5E34
lbl_804D5E34:
    .4byte 0x736C6973
    .4byte 0x74000000
.global lbl_804D5E3C
lbl_804D5E3C:
    .4byte 0x646C6973
    .4byte 0x74000000
.global lbl_804D5E44
lbl_804D5E44:
    .4byte 0x76656300
.global lbl_804D5E48
lbl_804D5E48:
    .4byte 0x6D747800
.global lbl_804D5E4C
lbl_804D5E4C:
    .4byte 0x726F626A
    .4byte 0x00000000
.global lbl_804D5E54
lbl_804D5E54:
    .4byte 0x7276616C
    .4byte 0x00000000
.global lbl_804D5E5C
lbl_804D5E5C:
    .4byte 0x73686164
    .4byte 0x6F770000
.global lbl_804D5E64
lbl_804D5E64:
    .4byte 0x72656E64
    .4byte 0x65720000
.global lbl_804D5E6C
lbl_804D5E6C:
    .4byte 0x6368616E
    .4byte 0x00000000
.global lbl_804D5E74
lbl_804D5E74:
    .4byte 0x74657672
    .4byte 0x65670000
.global lbl_804D5E7C
lbl_804D5E7C:
    .asciz "data"
    .balign 4
    .4byte NULL


.section .sbss

.global lbl_804D76B8
lbl_804D76B8:
	.skip 0x4
.global lbl_804D76BC
lbl_804D76BC:
	.skip 0x4
.global lbl_804D76C0
lbl_804D76C0:
	.skip 0x4
.global DefaultFifoObj
DefaultFifoObj:
	.skip 0x4
.global lbl_804D76C8
lbl_804D76C8:
	.skip 0x4
.global init_done
init_done:
	.skip 0x4
.global lbl_804D76D0
lbl_804D76D0:
	.skip 0x8
