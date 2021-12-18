.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global func_8038FAA8
func_8038FAA8:
/* 8038FAA8 0038C688  3C 80 80 4D */	lis r4, lbl_804CE380@ha
/* 8038FAAC 0038C68C  80 C3 00 10 */	lwz r6, 0x10(r3)
/* 8038FAB0 0038C690  88 A4 E3 80 */	lbz r5, lbl_804CE380@l(r4)
/* 8038FAB4 0038C694  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8038FAB8 0038C698  7C C4 33 78 */	mr r4, r6
/* 8038FABC 0038C69C  39 05 00 01 */	addi r8, r5, 1
/* 8038FAC0 0038C6A0  88 E6 00 02 */	lbz r7, 2(r6)
/* 8038FAC4 0038C6A4  7C A0 41 D6 */	mullw r5, r0, r8
/* 8038FAC8 0038C6A8  81 2D C1 A4 */	lwz r9, lbl_804D7844@sda21(r13)
/* 8038FACC 0038C6AC  7C A7 2A 14 */	add r5, r7, r5
/* 8038FAD0 0038C6B0  54 A6 10 3A */	slwi r6, r5, 2
/* 8038FAD4 0038C6B4  7C A9 30 2E */	lwzx r5, r9, r6
/* 8038FAD8 0038C6B8  39 47 00 00 */	addi r10, r7, 0
/* 8038FADC 0038C6BC  28 05 00 00 */	cmplwi r5, 0
/* 8038FAE0 0038C6C0  41 82 00 60 */	beq lbl_8038FB40
/* 8038FAE4 0038C6C4  7C 86 23 78 */	mr r6, r4
/* 8038FAE8 0038C6C8  48 00 00 4C */	b lbl_8038FB34
lbl_8038FAEC:
/* 8038FAEC 0038C6CC  80 E6 00 18 */	lwz r7, 0x18(r6)
/* 8038FAF0 0038C6D0  48 00 00 38 */	b lbl_8038FB28
lbl_8038FAF4:
/* 8038FAF4 0038C6D4  88 A7 00 0C */	lbz r5, 0xc(r7)
/* 8038FAF8 0038C6D8  7C 05 00 40 */	cmplw r5, r0
/* 8038FAFC 0038C6DC  40 82 00 28 */	bne lbl_8038FB24
/* 8038FB00 0038C6E0  7C A0 41 D6 */	mullw r5, r0, r8
/* 8038FB04 0038C6E4  7C AA 2A 14 */	add r5, r10, r5
/* 8038FB08 0038C6E8  54 A5 10 3A */	slwi r5, r5, 2
/* 8038FB0C 0038C6EC  7C C9 2A 14 */	add r6, r9, r5
/* 8038FB10 0038C6F0  80 A6 00 00 */	lwz r5, 0(r6)
/* 8038FB14 0038C6F4  7C 05 38 40 */	cmplw r5, r7
/* 8038FB18 0038C6F8  40 82 00 90 */	bne lbl_8038FBA8
/* 8038FB1C 0038C6FC  90 66 00 00 */	stw r3, 0(r6)
/* 8038FB20 0038C700  48 00 00 88 */	b lbl_8038FBA8
lbl_8038FB24:
/* 8038FB24 0038C704  80 E7 00 00 */	lwz r7, 0(r7)
lbl_8038FB28:
/* 8038FB28 0038C708  28 07 00 00 */	cmplwi r7, 0
/* 8038FB2C 0038C70C  40 82 FF C8 */	bne lbl_8038FAF4
/* 8038FB30 0038C710  80 C6 00 0C */	lwz r6, 0xc(r6)
lbl_8038FB34:
/* 8038FB34 0038C714  28 06 00 00 */	cmplwi r6, 0
/* 8038FB38 0038C718  40 82 FF B4 */	bne lbl_8038FAEC
/* 8038FB3C 0038C71C  48 00 00 08 */	b lbl_8038FB44
lbl_8038FB40:
/* 8038FB40 0038C720  7C 69 31 2E */	stwx r3, r9, r6
lbl_8038FB44:
/* 8038FB44 0038C724  3C A0 80 4D */	lis r5, lbl_804CE380@ha
/* 8038FB48 0038C728  80 CD C1 A4 */	lwz r6, lbl_804D7844@sda21(r13)
/* 8038FB4C 0038C72C  38 A5 E3 80 */	addi r5, r5, lbl_804CE380@l
/* 8038FB50 0038C730  88 A5 00 00 */	lbz r5, 0(r5)
/* 8038FB54 0038C734  38 A5 00 01 */	addi r5, r5, 1
/* 8038FB58 0038C738  7C A0 29 D6 */	mullw r5, r0, r5
/* 8038FB5C 0038C73C  7C AA 2A 14 */	add r5, r10, r5
/* 8038FB60 0038C740  54 A5 10 3A */	slwi r5, r5, 2
/* 8038FB64 0038C744  48 00 00 10 */	b lbl_8038FB74
lbl_8038FB68:
/* 8038FB68 0038C748  7C E6 28 2E */	lwzx r7, r6, r5
/* 8038FB6C 0038C74C  28 07 00 00 */	cmplwi r7, 0
/* 8038FB70 0038C750  40 82 00 38 */	bne lbl_8038FBA8
lbl_8038FB74:
/* 8038FB74 0038C754  2C 0A 00 00 */	cmpwi r10, 0
/* 8038FB78 0038C758  38 A5 FF FC */	addi r5, r5, -4
/* 8038FB7C 0038C75C  39 4A FF FF */	addi r10, r10, -1
/* 8038FB80 0038C760  40 82 FF E8 */	bne lbl_8038FB68
/* 8038FB84 0038C764  80 CD C1 A0 */	lwz r6, lbl_804D7840@sda21(r13)
/* 8038FB88 0038C768  54 07 10 3A */	slwi r7, r0, 2
/* 8038FB8C 0038C76C  38 A0 00 00 */	li r5, 0
/* 8038FB90 0038C770  7C C6 38 2E */	lwzx r6, r6, r7
/* 8038FB94 0038C774  90 C3 00 04 */	stw r6, 4(r3)
/* 8038FB98 0038C778  80 CD C1 A0 */	lwz r6, lbl_804D7840@sda21(r13)
/* 8038FB9C 0038C77C  7C 66 39 2E */	stwx r3, r6, r7
/* 8038FBA0 0038C780  90 A3 00 08 */	stw r5, 8(r3)
/* 8038FBA4 0038C784  48 00 00 14 */	b lbl_8038FBB8
lbl_8038FBA8:
/* 8038FBA8 0038C788  80 A7 00 04 */	lwz r5, 4(r7)
/* 8038FBAC 0038C78C  90 A3 00 04 */	stw r5, 4(r3)
/* 8038FBB0 0038C790  90 67 00 04 */	stw r3, 4(r7)
/* 8038FBB4 0038C794  90 E3 00 08 */	stw r7, 8(r3)
lbl_8038FBB8:
/* 8038FBB8 0038C798  80 A3 00 04 */	lwz r5, 4(r3)
/* 8038FBBC 0038C79C  28 05 00 00 */	cmplwi r5, 0
/* 8038FBC0 0038C7A0  41 82 00 08 */	beq lbl_8038FBC8
/* 8038FBC4 0038C7A4  90 65 00 08 */	stw r3, 8(r5)
lbl_8038FBC8:
/* 8038FBC8 0038C7A8  80 C4 00 18 */	lwz r6, 0x18(r4)
/* 8038FBCC 0038C7AC  3C A0 80 4D */	lis r5, lbl_804CE3E4@ha
/* 8038FBD0 0038C7B0  90 C3 00 00 */	stw r6, 0(r3)
/* 8038FBD4 0038C7B4  90 64 00 18 */	stw r3, 0x18(r4)
/* 8038FBD8 0038C7B8  88 85 E3 E4 */	lbz r4, lbl_804CE3E4@l(r5)
/* 8038FBDC 0038C7BC  54 84 CF FF */	rlwinm. r4, r4, 0x19, 0x1f, 0x1f
/* 8038FBE0 0038C7C0  4D 82 00 20 */	beqlr 
/* 8038FBE4 0038C7C4  80 A3 00 08 */	lwz r5, 8(r3)
/* 8038FBE8 0038C7C8  80 8D C1 98 */	lwz r4, lbl_804D7838@sda21(r13)
/* 8038FBEC 0038C7CC  7C 05 20 40 */	cmplw r5, r4
/* 8038FBF0 0038C7D0  4C 82 00 20 */	bnelr 
/* 8038FBF4 0038C7D4  80 A3 00 04 */	lwz r5, 4(r3)
/* 8038FBF8 0038C7D8  80 8D C1 90 */	lwz r4, lbl_804D7830@sda21(r13)
/* 8038FBFC 0038C7DC  7C 05 20 40 */	cmplw r5, r4
/* 8038FC00 0038C7E0  4C 82 00 20 */	bnelr 
/* 8038FC04 0038C7E4  80 8D C1 94 */	lwz r4, lbl_804D7834@sda21(r13)
/* 8038FC08 0038C7E8  7C 00 20 00 */	cmpw r0, r4
/* 8038FC0C 0038C7EC  4C 82 00 20 */	bnelr 
/* 8038FC10 0038C7F0  90 6D C1 90 */	stw r3, lbl_804D7830@sda21(r13)
/* 8038FC14 0038C7F4  4E 80 00 20 */	blr 

.global func_8038FC18
func_8038FC18:
/* 8038FC18 0038C7F8  3C 80 80 4D */	lis r4, lbl_804CE3E4@ha
/* 8038FC1C 0038C7FC  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 8038FC20 0038C800  88 04 E3 E4 */	lbz r0, lbl_804CE3E4@l(r4)
/* 8038FC24 0038C804  89 03 00 0C */	lbz r8, 0xc(r3)
/* 8038FC28 0038C808  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8038FC2C 0038C80C  88 E5 00 02 */	lbz r7, 2(r5)
/* 8038FC30 0038C810  41 82 00 18 */	beq lbl_8038FC48
/* 8038FC34 0038C814  80 0D C1 90 */	lwz r0, lbl_804D7830@sda21(r13)
/* 8038FC38 0038C818  7C 03 00 40 */	cmplw r3, r0
/* 8038FC3C 0038C81C  40 82 00 0C */	bne lbl_8038FC48
/* 8038FC40 0038C820  80 03 00 04 */	lwz r0, 4(r3)
/* 8038FC44 0038C824  90 0D C1 90 */	stw r0, lbl_804D7830@sda21(r13)
lbl_8038FC48:
/* 8038FC48 0038C828  3C 80 80 4D */	lis r4, lbl_804CE380@ha
/* 8038FC4C 0038C82C  80 AD C1 A4 */	lwz r5, lbl_804D7844@sda21(r13)
/* 8038FC50 0038C830  38 84 E3 80 */	addi r4, r4, lbl_804CE380@l
/* 8038FC54 0038C834  88 84 00 00 */	lbz r4, 0(r4)
/* 8038FC58 0038C838  38 04 00 01 */	addi r0, r4, 1
/* 8038FC5C 0038C83C  7C 08 01 D6 */	mullw r0, r8, r0
/* 8038FC60 0038C840  7C 07 02 14 */	add r0, r7, r0
/* 8038FC64 0038C844  54 00 10 3A */	slwi r0, r0, 2
/* 8038FC68 0038C848  7C C5 02 14 */	add r6, r5, r0
/* 8038FC6C 0038C84C  80 06 00 00 */	lwz r0, 0(r6)
/* 8038FC70 0038C850  7C 03 00 40 */	cmplw r3, r0
/* 8038FC74 0038C854  40 82 00 30 */	bne lbl_8038FCA4
/* 8038FC78 0038C858  80 A3 00 08 */	lwz r5, 8(r3)
/* 8038FC7C 0038C85C  28 05 00 00 */	cmplwi r5, 0
/* 8038FC80 0038C860  41 82 00 1C */	beq lbl_8038FC9C
/* 8038FC84 0038C864  80 85 00 10 */	lwz r4, 0x10(r5)
/* 8038FC88 0038C868  88 04 00 02 */	lbz r0, 2(r4)
/* 8038FC8C 0038C86C  7C 00 38 00 */	cmpw r0, r7
/* 8038FC90 0038C870  40 82 00 0C */	bne lbl_8038FC9C
/* 8038FC94 0038C874  90 A6 00 00 */	stw r5, 0(r6)
/* 8038FC98 0038C878  48 00 00 0C */	b lbl_8038FCA4
lbl_8038FC9C:
/* 8038FC9C 0038C87C  38 00 00 00 */	li r0, 0
/* 8038FCA0 0038C880  90 06 00 00 */	stw r0, 0(r6)
lbl_8038FCA4:
/* 8038FCA4 0038C884  80 83 00 08 */	lwz r4, 8(r3)
/* 8038FCA8 0038C888  28 04 00 00 */	cmplwi r4, 0
/* 8038FCAC 0038C88C  41 82 00 10 */	beq lbl_8038FCBC
/* 8038FCB0 0038C890  80 03 00 04 */	lwz r0, 4(r3)
/* 8038FCB4 0038C894  90 04 00 04 */	stw r0, 4(r4)
/* 8038FCB8 0038C898  48 00 00 14 */	b lbl_8038FCCC
lbl_8038FCBC:
/* 8038FCBC 0038C89C  80 A3 00 04 */	lwz r5, 4(r3)
/* 8038FCC0 0038C8A0  55 00 10 3A */	slwi r0, r8, 2
/* 8038FCC4 0038C8A4  80 8D C1 A0 */	lwz r4, lbl_804D7840@sda21(r13)
/* 8038FCC8 0038C8A8  7C A4 01 2E */	stwx r5, r4, r0
lbl_8038FCCC:
/* 8038FCCC 0038C8AC  80 83 00 04 */	lwz r4, 4(r3)
/* 8038FCD0 0038C8B0  28 04 00 00 */	cmplwi r4, 0
/* 8038FCD4 0038C8B4  4D 82 00 20 */	beqlr 
/* 8038FCD8 0038C8B8  80 03 00 08 */	lwz r0, 8(r3)
/* 8038FCDC 0038C8BC  90 04 00 08 */	stw r0, 8(r4)
/* 8038FCE0 0038C8C0  4E 80 00 20 */	blr 

.global func_8038FCE4
func_8038FCE4:
/* 8038FCE4 0038C8C4  7C 08 02 A6 */	mflr r0
/* 8038FCE8 0038C8C8  90 01 00 04 */	stw r0, 4(r1)
/* 8038FCEC 0038C8CC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8038FCF0 0038C8D0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8038FCF4 0038C8D4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8038FCF8 0038C8D8  7C 7E 1B 78 */	mr r30, r3
/* 8038FCFC 0038C8DC  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 8038FD00 0038C8E0  4B FF FF 19 */	bl func_8038FC18
/* 8038FD04 0038C8E4  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8038FD08 0038C8E8  7C 00 F0 40 */	cmplw r0, r30
/* 8038FD0C 0038C8EC  40 82 00 10 */	bne lbl_8038FD1C
/* 8038FD10 0038C8F0  80 1E 00 00 */	lwz r0, 0(r30)
/* 8038FD14 0038C8F4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8038FD18 0038C8F8  48 00 00 24 */	b lbl_8038FD3C
lbl_8038FD1C:
/* 8038FD1C 0038C8FC  7C 03 03 78 */	mr r3, r0
/* 8038FD20 0038C900  48 00 00 08 */	b lbl_8038FD28
lbl_8038FD24:
/* 8038FD24 0038C904  7C 03 03 78 */	mr r3, r0
lbl_8038FD28:
/* 8038FD28 0038C908  80 03 00 00 */	lwz r0, 0(r3)
/* 8038FD2C 0038C90C  7C 00 F0 40 */	cmplw r0, r30
/* 8038FD30 0038C910  40 82 FF F4 */	bne lbl_8038FD24
/* 8038FD34 0038C914  80 1E 00 00 */	lwz r0, 0(r30)
/* 8038FD38 0038C918  90 03 00 00 */	stw r0, 0(r3)
lbl_8038FD3C:
/* 8038FD3C 0038C91C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8038FD40 0038C920  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8038FD44 0038C924  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8038FD48 0038C928  38 21 00 18 */	addi r1, r1, 0x18
/* 8038FD4C 0038C92C  7C 08 03 A6 */	mtlr r0
/* 8038FD50 0038C930  4E 80 00 20 */	blr 

.global func_8038FD54
func_8038FD54:
/* 8038FD54 0038C934  7C 08 02 A6 */	mflr r0
/* 8038FD58 0038C938  3C C0 80 4D */	lis r6, lbl_804CE3B8@ha
/* 8038FD5C 0038C93C  90 01 00 04 */	stw r0, 4(r1)
/* 8038FD60 0038C940  3C E0 80 41 */	lis r7, lbl_80408480@ha
/* 8038FD64 0038C944  38 06 E3 B8 */	addi r0, r6, lbl_804CE3B8@l
/* 8038FD68 0038C948  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8038FD6C 0038C94C  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 8038FD70 0038C950  3B 63 00 00 */	addi r27, r3, 0
/* 8038FD74 0038C954  3B E7 84 80 */	addi r31, r7, lbl_80408480@l
/* 8038FD78 0038C958  3B 84 00 00 */	addi r28, r4, 0
/* 8038FD7C 0038C95C  3B A5 00 00 */	addi r29, r5, 0
/* 8038FD80 0038C960  7C 03 03 78 */	mr r3, r0
/* 8038FD84 0038C964  4B FE AE 45 */	bl HSD_ObjAlloc
/* 8038FD88 0038C968  7C 7E 1B 79 */	or. r30, r3, r3
/* 8038FD8C 0038C96C  40 82 00 14 */	bne lbl_8038FDA0
/* 8038FD90 0038C970  38 7F 00 00 */	addi r3, r31, 0
/* 8038FD94 0038C974  38 80 00 1F */	li r4, 0x1f
/* 8038FD98 0038C978  38 AD A9 C0 */	addi r5, r13, lbl_804D6060@sda21
/* 8038FD9C 0038C97C  4B FF 84 85 */	bl __assert
lbl_8038FDA0:
/* 8038FDA0 0038C980  3C 60 80 4D */	lis r3, lbl_804CE380@ha
/* 8038FDA4 0038C984  38 63 E3 80 */	addi r3, r3, lbl_804CE380@l
/* 8038FDA8 0038C988  88 03 00 02 */	lbz r0, 2(r3)
/* 8038FDAC 0038C98C  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 8038FDB0 0038C990  7C 03 00 40 */	cmplw r3, r0
/* 8038FDB4 0038C994  40 81 00 14 */	ble lbl_8038FDC8
/* 8038FDB8 0038C998  38 7F 00 00 */	addi r3, r31, 0
/* 8038FDBC 0038C99C  38 BF 00 0C */	addi r5, r31, 0xc
/* 8038FDC0 0038C9A0  38 80 00 D8 */	li r4, 0xd8
/* 8038FDC4 0038C9A4  4B FF 84 5D */	bl __assert
lbl_8038FDC8:
/* 8038FDC8 0038C9A8  9B BE 00 0C */	stb r29, 0xc(r30)
/* 8038FDCC 0038C9AC  38 A0 00 00 */	li r5, 0
/* 8038FDD0 0038C9B0  38 80 00 03 */	li r4, 3
/* 8038FDD4 0038C9B4  88 1E 00 0D */	lbz r0, 0xd(r30)
/* 8038FDD8 0038C9B8  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 8038FDDC 0038C9BC  38 7E 00 00 */	addi r3, r30, 0
/* 8038FDE0 0038C9C0  98 1E 00 0D */	stb r0, 0xd(r30)
/* 8038FDE4 0038C9C4  54 05 D7 FE */	rlwinm r5, r0, 0x1a, 0x1f, 0x1f
/* 8038FDE8 0038C9C8  88 1E 00 0D */	lbz r0, 0xd(r30)
/* 8038FDEC 0038C9CC  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 8038FDF0 0038C9D0  98 1E 00 0D */	stb r0, 0xd(r30)
/* 8038FDF4 0038C9D4  88 1E 00 0D */	lbz r0, 0xd(r30)
/* 8038FDF8 0038C9D8  50 80 26 B6 */	rlwimi r0, r4, 4, 0x1a, 0x1b
/* 8038FDFC 0038C9DC  98 1E 00 0D */	stb r0, 0xd(r30)
/* 8038FE00 0038C9E0  93 7E 00 10 */	stw r27, 0x10(r30)
/* 8038FE04 0038C9E4  93 9E 00 14 */	stw r28, 0x14(r30)
/* 8038FE08 0038C9E8  4B FF FC A1 */	bl func_8038FAA8
/* 8038FE0C 0038C9EC  7F C3 F3 78 */	mr r3, r30
/* 8038FE10 0038C9F0  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 8038FE14 0038C9F4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8038FE18 0038C9F8  38 21 00 38 */	addi r1, r1, 0x38
/* 8038FE1C 0038C9FC  7C 08 03 A6 */	mtlr r0
/* 8038FE20 0038CA00  4E 80 00 20 */	blr 

.global func_8038FE24
func_8038FE24:
/* 8038FE24 0038CA04  7C 08 02 A6 */	mflr r0
/* 8038FE28 0038CA08  3C 80 80 4D */	lis r4, lbl_804CE3E4@ha
/* 8038FE2C 0038CA0C  90 01 00 04 */	stw r0, 4(r1)
/* 8038FE30 0038CA10  38 A4 E3 E4 */	addi r5, r4, lbl_804CE3E4@l
/* 8038FE34 0038CA14  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8038FE38 0038CA18  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8038FE3C 0038CA1C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8038FE40 0038CA20  3B C3 00 00 */	addi r30, r3, 0
/* 8038FE44 0038CA24  88 85 00 00 */	lbz r4, 0(r5)
/* 8038FE48 0038CA28  54 80 CF FF */	rlwinm. r0, r4, 0x19, 0x1f, 0x1f
/* 8038FE4C 0038CA2C  40 82 00 20 */	bne lbl_8038FE6C
/* 8038FE50 0038CA30  80 0D C1 98 */	lwz r0, lbl_804D7838@sda21(r13)
/* 8038FE54 0038CA34  7C 1E 00 40 */	cmplw r30, r0
/* 8038FE58 0038CA38  40 82 00 14 */	bne lbl_8038FE6C
/* 8038FE5C 0038CA3C  38 00 00 01 */	li r0, 1
/* 8038FE60 0038CA40  50 04 2E B4 */	rlwimi r4, r0, 5, 0x1a, 0x1a
/* 8038FE64 0038CA44  98 85 00 00 */	stb r4, 0(r5)
/* 8038FE68 0038CA48  48 00 00 54 */	b lbl_8038FEBC
lbl_8038FE6C:
/* 8038FE6C 0038CA4C  83 FE 00 10 */	lwz r31, 0x10(r30)
/* 8038FE70 0038CA50  7F C3 F3 78 */	mr r3, r30
/* 8038FE74 0038CA54  4B FF FD A5 */	bl func_8038FC18
/* 8038FE78 0038CA58  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8038FE7C 0038CA5C  7C 03 F0 40 */	cmplw r3, r30
/* 8038FE80 0038CA60  40 82 00 18 */	bne lbl_8038FE98
/* 8038FE84 0038CA64  80 1E 00 00 */	lwz r0, 0(r30)
/* 8038FE88 0038CA68  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8038FE8C 0038CA6C  48 00 00 20 */	b lbl_8038FEAC
/* 8038FE90 0038CA70  48 00 00 08 */	b lbl_8038FE98
lbl_8038FE94:
/* 8038FE94 0038CA74  7C 03 03 78 */	mr r3, r0
lbl_8038FE98:
/* 8038FE98 0038CA78  80 03 00 00 */	lwz r0, 0(r3)
/* 8038FE9C 0038CA7C  7C 00 F0 40 */	cmplw r0, r30
/* 8038FEA0 0038CA80  40 82 FF F4 */	bne lbl_8038FE94
/* 8038FEA4 0038CA84  80 1E 00 00 */	lwz r0, 0(r30)
/* 8038FEA8 0038CA88  90 03 00 00 */	stw r0, 0(r3)
lbl_8038FEAC:
/* 8038FEAC 0038CA8C  3C 60 80 4D */	lis r3, lbl_804CE3B8@ha
/* 8038FEB0 0038CA90  38 63 E3 B8 */	addi r3, r3, lbl_804CE3B8@l
/* 8038FEB4 0038CA94  38 9E 00 00 */	addi r4, r30, 0
/* 8038FEB8 0038CA98  4B FE AE 69 */	bl HSD_ObjFree
lbl_8038FEBC:
/* 8038FEBC 0038CA9C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8038FEC0 0038CAA0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8038FEC4 0038CAA4  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8038FEC8 0038CAA8  38 21 00 18 */	addi r1, r1, 0x18
/* 8038FECC 0038CAAC  7C 08 03 A6 */	mtlr r0
/* 8038FED0 0038CAB0  4E 80 00 20 */	blr 

.global func_8038FED4
func_8038FED4:
/* 8038FED4 0038CAB4  7C 08 02 A6 */	mflr r0
/* 8038FED8 0038CAB8  3C 80 80 4D */	lis r4, lbl_804CE3B8@ha
/* 8038FEDC 0038CABC  90 01 00 04 */	stw r0, 4(r1)
/* 8038FEE0 0038CAC0  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8038FEE4 0038CAC4  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 8038FEE8 0038CAC8  3B E4 E3 B8 */	addi r31, r4, lbl_804CE3B8@l
/* 8038FEEC 0038CACC  3B C0 00 01 */	li r30, 1
/* 8038FEF0 0038CAD0  83 83 00 18 */	lwz r28, 0x18(r3)
/* 8038FEF4 0038CAD4  3C 60 80 4D */	lis r3, lbl_804CE3E4@ha
/* 8038FEF8 0038CAD8  3B A3 E3 E4 */	addi r29, r3, lbl_804CE3E4@l
/* 8038FEFC 0038CADC  48 00 00 44 */	b lbl_8038FF40
lbl_8038FF00:
/* 8038FF00 0038CAE0  88 7D 00 00 */	lbz r3, 0(r29)
/* 8038FF04 0038CAE4  83 7C 00 00 */	lwz r27, 0(r28)
/* 8038FF08 0038CAE8  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 8038FF0C 0038CAEC  40 82 00 1C */	bne lbl_8038FF28
/* 8038FF10 0038CAF0  80 0D C1 98 */	lwz r0, lbl_804D7838@sda21(r13)
/* 8038FF14 0038CAF4  7C 1C 00 40 */	cmplw r28, r0
/* 8038FF18 0038CAF8  40 82 00 10 */	bne lbl_8038FF28
/* 8038FF1C 0038CAFC  53 C3 2E B4 */	rlwimi r3, r30, 5, 0x1a, 0x1a
/* 8038FF20 0038CB00  98 7D 00 00 */	stb r3, 0(r29)
/* 8038FF24 0038CB04  48 00 00 18 */	b lbl_8038FF3C
lbl_8038FF28:
/* 8038FF28 0038CB08  7F 83 E3 78 */	mr r3, r28
/* 8038FF2C 0038CB0C  4B FF FD B9 */	bl func_8038FCE4
/* 8038FF30 0038CB10  38 7F 00 00 */	addi r3, r31, 0
/* 8038FF34 0038CB14  38 9C 00 00 */	addi r4, r28, 0
/* 8038FF38 0038CB18  4B FE AD E9 */	bl HSD_ObjFree
lbl_8038FF3C:
/* 8038FF3C 0038CB1C  7F 7C DB 78 */	mr r28, r27
lbl_8038FF40:
/* 8038FF40 0038CB20  28 1C 00 00 */	cmplwi r28, 0
/* 8038FF44 0038CB24  40 82 FF BC */	bne lbl_8038FF00
/* 8038FF48 0038CB28  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 8038FF4C 0038CB2C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8038FF50 0038CB30  38 21 00 28 */	addi r1, r1, 0x28
/* 8038FF54 0038CB34  7C 08 03 A6 */	mtlr r0
/* 8038FF58 0038CB38  4E 80 00 20 */	blr 


.section .sdata

.global lbl_804D6060
lbl_804D6060:
    .asciz "gproc"
    .balign 4
