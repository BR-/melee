.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global HashSearchEntry
HashSearchEntry:
/* 80382A40 0037F620  7C 08 02 A6 */	mflr r0
/* 80382A44 0037F624  90 01 00 04 */	stw r0, 4(r1)
/* 80382A48 0037F628  54 80 10 3A */	slwi r0, r4, 2
/* 80382A4C 0037F62C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80382A50 0037F630  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80382A54 0037F634  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80382A58 0037F638  3B C6 00 00 */	addi r30, r6, 0
/* 80382A5C 0037F63C  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80382A60 0037F640  3B A5 00 00 */	addi r29, r5, 0
/* 80382A64 0037F644  93 81 00 18 */	stw r28, 0x18(r1)
/* 80382A68 0037F648  7C 7C 1B 78 */	mr r28, r3
/* 80382A6C 0037F64C  80 63 00 04 */	lwz r3, 4(r3)
/* 80382A70 0037F650  7C 63 02 14 */	add r3, r3, r0
/* 80382A74 0037F654  80 03 00 00 */	lwz r0, 0(r3)
/* 80382A78 0037F658  28 00 00 00 */	cmplwi r0, 0
/* 80382A7C 0037F65C  40 82 00 0C */	bne lbl_80382A88
/* 80382A80 0037F660  38 60 00 00 */	li r3, 0
/* 80382A84 0037F664  48 00 00 9C */	b lbl_80382B20
lbl_80382A88:
/* 80382A88 0037F668  28 1E 00 00 */	cmplwi r30, 0
/* 80382A8C 0037F66C  41 82 00 50 */	beq lbl_80382ADC
/* 80382A90 0037F670  7C 7F 1B 78 */	mr r31, r3
/* 80382A94 0037F674  48 00 00 38 */	b lbl_80382ACC
lbl_80382A98:
/* 80382A98 0037F678  80 DC 00 00 */	lwz r6, 0(r28)
/* 80382A9C 0037F67C  7F 83 E3 78 */	mr r3, r28
/* 80382AA0 0037F680  80 84 00 04 */	lwz r4, 4(r4)
/* 80382AA4 0037F684  7F A5 EB 78 */	mr r5, r29
/* 80382AA8 0037F688  81 86 00 40 */	lwz r12, 0x40(r6)
/* 80382AAC 0037F68C  7D 88 03 A6 */	mtlr r12
/* 80382AB0 0037F690  4E 80 00 21 */	blrl 
/* 80382AB4 0037F694  2C 03 00 00 */	cmpwi r3, 0
/* 80382AB8 0037F698  40 82 00 10 */	bne lbl_80382AC8
/* 80382ABC 0037F69C  93 FE 00 00 */	stw r31, 0(r30)
/* 80382AC0 0037F6A0  80 7F 00 00 */	lwz r3, 0(r31)
/* 80382AC4 0037F6A4  48 00 00 5C */	b lbl_80382B20
lbl_80382AC8:
/* 80382AC8 0037F6A8  83 FF 00 00 */	lwz r31, 0(r31)
lbl_80382ACC:
/* 80382ACC 0037F6AC  80 9F 00 00 */	lwz r4, 0(r31)
/* 80382AD0 0037F6B0  28 04 00 00 */	cmplwi r4, 0
/* 80382AD4 0037F6B4  40 82 FF C4 */	bne lbl_80382A98
/* 80382AD8 0037F6B8  48 00 00 44 */	b lbl_80382B1C
lbl_80382ADC:
/* 80382ADC 0037F6BC  7C 1F 03 78 */	mr r31, r0
/* 80382AE0 0037F6C0  48 00 00 34 */	b lbl_80382B14
lbl_80382AE4:
/* 80382AE4 0037F6C4  80 DC 00 00 */	lwz r6, 0(r28)
/* 80382AE8 0037F6C8  7F 83 E3 78 */	mr r3, r28
/* 80382AEC 0037F6CC  80 9F 00 04 */	lwz r4, 4(r31)
/* 80382AF0 0037F6D0  7F A5 EB 78 */	mr r5, r29
/* 80382AF4 0037F6D4  81 86 00 40 */	lwz r12, 0x40(r6)
/* 80382AF8 0037F6D8  7D 88 03 A6 */	mtlr r12
/* 80382AFC 0037F6DC  4E 80 00 21 */	blrl 
/* 80382B00 0037F6E0  2C 03 00 00 */	cmpwi r3, 0
/* 80382B04 0037F6E4  40 82 00 0C */	bne lbl_80382B10
/* 80382B08 0037F6E8  7F E3 FB 78 */	mr r3, r31
/* 80382B0C 0037F6EC  48 00 00 14 */	b lbl_80382B20
lbl_80382B10:
/* 80382B10 0037F6F0  83 FF 00 00 */	lwz r31, 0(r31)
lbl_80382B14:
/* 80382B14 0037F6F4  28 1F 00 00 */	cmplwi r31, 0
/* 80382B18 0037F6F8  40 82 FF CC */	bne lbl_80382AE4
lbl_80382B1C:
/* 80382B1C 0037F6FC  38 60 00 00 */	li r3, 0
lbl_80382B20:
/* 80382B20 0037F700  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80382B24 0037F704  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80382B28 0037F708  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80382B2C 0037F70C  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80382B30 0037F710  83 81 00 18 */	lwz r28, 0x18(r1)
/* 80382B34 0037F714  38 21 00 28 */	addi r1, r1, 0x28
/* 80382B38 0037F718  7C 08 03 A6 */	mtlr r0
/* 80382B3C 0037F71C  4E 80 00 20 */	blr 

.global HSD_HashSearch
HSD_HashSearch:
/* 80382B40 0037F720  7C 08 02 A6 */	mflr r0
/* 80382B44 0037F724  90 01 00 04 */	stw r0, 4(r1)
/* 80382B48 0037F728  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80382B4C 0037F72C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80382B50 0037F730  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80382B54 0037F734  3B C5 00 00 */	addi r30, r5, 0
/* 80382B58 0037F738  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80382B5C 0037F73C  3B A4 00 00 */	addi r29, r4, 0
/* 80382B60 0037F740  93 81 00 18 */	stw r28, 0x18(r1)
/* 80382B64 0037F744  7C 7C 1B 78 */	mr r28, r3
/* 80382B68 0037F748  80 63 00 00 */	lwz r3, 0(r3)
/* 80382B6C 0037F74C  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 80382B70 0037F750  38 7C 00 00 */	addi r3, r28, 0
/* 80382B74 0037F754  7D 88 03 A6 */	mtlr r12
/* 80382B78 0037F758  4E 80 00 21 */	blrl 
/* 80382B7C 0037F75C  80 1C 00 08 */	lwz r0, 8(r28)
/* 80382B80 0037F760  3B E3 00 00 */	addi r31, r3, 0
/* 80382B84 0037F764  7C 1F 00 40 */	cmplw r31, r0
/* 80382B88 0037F768  41 80 00 18 */	blt lbl_80382BA0
/* 80382B8C 0037F76C  3C 60 80 40 */	lis r3, lbl_80407720@ha
/* 80382B90 0037F770  38 A3 77 20 */	addi r5, r3, lbl_80407720@l
/* 80382B94 0037F774  38 6D A9 20 */	addi r3, r13, lbl_804D5FC0@sda21
/* 80382B98 0037F778  38 80 00 71 */	li r4, 0x71
/* 80382B9C 0037F77C  48 00 56 85 */	bl __assert
lbl_80382BA0:
/* 80382BA0 0037F780  38 7C 00 00 */	addi r3, r28, 0
/* 80382BA4 0037F784  38 9F 00 00 */	addi r4, r31, 0
/* 80382BA8 0037F788  38 BD 00 00 */	addi r5, r29, 0
/* 80382BAC 0037F78C  38 C0 00 00 */	li r6, 0
/* 80382BB0 0037F790  4B FF FE 91 */	bl HashSearchEntry
/* 80382BB4 0037F794  28 1E 00 00 */	cmplwi r30, 0
/* 80382BB8 0037F798  41 82 00 14 */	beq lbl_80382BCC
/* 80382BBC 0037F79C  7C 83 00 D0 */	neg r4, r3
/* 80382BC0 0037F7A0  30 04 FF FF */	addic r0, r4, -1
/* 80382BC4 0037F7A4  7C 00 21 10 */	subfe r0, r0, r4
/* 80382BC8 0037F7A8  90 1E 00 00 */	stw r0, 0(r30)
lbl_80382BCC:
/* 80382BCC 0037F7AC  28 03 00 00 */	cmplwi r3, 0
/* 80382BD0 0037F7B0  41 82 00 0C */	beq lbl_80382BDC
/* 80382BD4 0037F7B4  80 63 00 08 */	lwz r3, 8(r3)
/* 80382BD8 0037F7B8  48 00 00 08 */	b lbl_80382BE0
lbl_80382BDC:
/* 80382BDC 0037F7BC  38 60 00 00 */	li r3, 0
lbl_80382BE0:
/* 80382BE0 0037F7C0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80382BE4 0037F7C4  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80382BE8 0037F7C8  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80382BEC 0037F7CC  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80382BF0 0037F7D0  83 81 00 18 */	lwz r28, 0x18(r1)
/* 80382BF4 0037F7D4  38 21 00 28 */	addi r1, r1, 0x28
/* 80382BF8 0037F7D8  7C 08 03 A6 */	mtlr r0
/* 80382BFC 0037F7DC  4E 80 00 20 */	blr 


.section .sdata

.global lbl_804D5FC0
lbl_804D5FC0:
    .asciz "hash.c"
    .balign 4
