#ifndef db_2253_internal_h
#define db_2253_internal_h

#include "db_2253_external.h"

#include "ft/fighter.h"
#include "it/item.h"

// text
void db_80225374(void);
void db_802254B8(void);
int db_8022558C(int);
int db_802255A4(int);
int db_802255BC(int);
void db_802255D4(void);
void db_802256CC(void);
void db_80225754(void);
void db_80225A00(void);
void db_80225A54(int);
int db_80225B0C(void);
int db_80225B20(void);
int db_80225B34(void);
void db_80225B48(void);
void db_80225B9C(void);
void db_80225BF0(void);
void db_80225C44(void);
void db_80225C8C(void);
void db_80225CD4(void);
int db_80225D1C(void);
void db_80225D2C(void);
void db_80225D40(void);
int db_80225D54(void);
void db_80225D64(Item_GObj* item, Fighter_GObj* owner);
void db_80225D7C(void);
void db_80225DD8(Item_GObj* item, Fighter_GObj* owner);
void db_80225E6C(Fighter_GObj* gobj);
void db_80225F20(int);
void db_802260D4(int);
void db_802261BC(int);
void db_802262E0(int);
void db_802264C4(int);
void db_8022659C(void);
void db_8022666C(void);
void db_80226730(int);
void db_802267C8(void);
void db_802268B8(void);
u8 db_8022697C(Fighter_GObj* owner);
void db_802269C0(void);
void db_80226BD4(int);
void db_80226E00(void);
void db_80226E0C(int);
void db_802270C4(int);
void db_8022713C(int);
void db_80227174(void);
void db_80227188(void);
void db_80227484(int, int, int, float, float);
void db_802277E8(HSD_GObj*, int);
void db_80227904(HSD_GObj*, int);
void db_802279E8(void);
void db_80227B64(void);
void db_80227BA8(void);
void db_80227CAC(void);
void db_80227D38(void);
void db_80227EB0(void);
void db_80227FE0(void);
void db_80228124(void);
void db_80228318(void);
void db_802283F0(void);
void db_80228620(int);
void db_8022873C(int);
void db_802287C4(void);
void db_802287D8(int);
void db_80228820(void);
void db_8022886C(void);
void db_8022887C(void);
void db_8022892C(void);
int db_802289F8(char*, int, int);
void db_80228A64(void);
void db_80228AB4(OSContext* ctx);
void db_80228B28(u16, OSContext*, ...);
void db_80228C4C(void);
void db_80228CF4(void);
void db_80228D18(void);
void db_80228D38(void);
void db_80228E54(int, int, int);
void db_8022900C(int);
void db_802291A0(int);
void db_80229220(void);
void db_80229240(int);

// rodata
const Vec3 db_803B84D8 = { 0.0F, 1.0F, 0.0F };

// data
char db_803EA6C8[] = "DATE Feb 13 2002  TIME 22:06:27";
char db_string_803EA6E8[] = "DbCo.dat";
char db_string_803EA6F4[] = "dbLoadCommonData";
char db_string_803EA708[] = "[all PLink num] -- Report --\n";
char db_string_803EA728[] =
    "------------------------------------------------------------\n";
char db_string_803EA768[] = "------ Thread info ------\n";
char db_string_803EA784[] = "base:%x, end:%x, size:%d peak:%d \n";
char* db_803EA94C[] = {
    // clang-format off
    "Capsule ",
    "Box     ",
    "Taru    ",
    "Egg     ",
    "Kusudama",
    "TaruCann",
    "BombHei ",
    "Dosei   ",
    "Heart   ",
    "Tomato  ",
    "Star    ",
    "Bat     ",
    "Sword   ",
    "Parasol ",
    "G Shell ",
    "R Shell ",
    "L Gun   ",
    "Freeze  ",
    "Foods   ",
    "MSBomb  ",
    "Flipper ",
    "S Scope ",
    "StarRod ",
    "LipStick",
    "Harisen ",
    "F Flower",
    "Kinoko  ",
    "DKinoko ",
    "Hammer  ",
    "WStar   ",
    "ScBall  ",
    "RabbitC ",
    "MetalB  ",
    "Spycloak",
    "M Ball  ",
    // clang-format on
};
char* db_803EAA50[] = {
    "Random",      "Tosakinto", "Chicorita", "Kabigon",    "Kamex",
    "Matadogas",   "Lizardon",  "Fire",      "Thunder",    "Freezer",
    "Sonans",      "Hassam",    "Unknown",   "Entei",      "Raikou",
    "Suikun",      "Kireihana", "Marumine",  "Lugia",      "Houou",
    "Metamon",     "Pippi",     "Togepy",    "Mew",        "Cerebi",
    "Hitodeman",   "Lucky",     "Porygon2",  "Hinoarashi", "Maril",
    "Fushigibana",
};
char* db_803EAAFC[] = { "Kuriboh ", "Leadead ", "Octarock", "Ottosei " };
char* db_803EABA8[] = {
    // clang-format off
    "old-Kuri",
    "Mato    ",
    "Heiho   ",
    "Nokonoko",
    "Patapata",
    "likelike",
    "old-lead",
    "old-octa",
    "old-otto",
    "whitebea",
    "klap    ",
    "zgshell ",
    "zrshell ",
    // clang-format on
};
int db_803EABDC[0xD] = { 0 };
char db_string_803EAC10[0x78] =
    "Item=%d Foods=%d Yaku=%d Sp_Item=%d Pokemon=%d PokeShot=%d CZako=%d "
    "CZakoShot=%d Zako=%d ZakoShot=%d Shot=%d Etc=%d\n";
int db_803EAD40[4] = { 3, 2, 0, 1 };
struct {
    struct Color bg;
    struct Color fg;
} db_803EAE08[2] = {
    { { 0x00, 0x00, 0x00, 0x00 }, { 0xFF, 0x00, 0x00, 0xFF } },
    { { 0x80, 0x40, 0xFF, 0x80 }, { 0x00, 0x00, 0x00, 0xFF } }
};

// bss
struct {
    int x0;
    int x4;
    int x8;
    int xC;
    int x10;
} db_8049FA00[4];
char db_8049FA50[0x50];
struct {
    unsigned int x0;
    unsigned int x4;
    int x8;
    int xC;
    ItemKind x10;
    int x14;
    ItemKind x18;
    int x1C;
    UnkFlagStruct x20;
    int x24;
} db_8049FAA0;
struct {
    DevText* x0;
    char x4[0x34C];
} db_8049FAC8;
struct {
    DevText* x0;
    char x4[0x5A4];
} db_8049FE18;
char db_804A03C0[0xC0];
char db_804A0480[0x70];

// sdata
int g_debugLevel = 1;
int db_804D4AF8 = 1;

// sbss
int db_804D6B20;
char** submotion_names;
char** motionstate_names;
char** bonus_names;
unsigned short db_804D6B30;
DevText* db_804D6B38;
int db_804D6B3C;
UnkFlagStruct db_804D6B40;
struct {
    int b0 : 3;
    unsigned int b3 : 6;
    unsigned int b9 : 1;
    int b10 : 1;
    int b11 : 1;
    int b12 : 1;
    int b13 : 1;
    int b14 : 1;
    int b15 : 1;
    int b16 : 1;
    int b17 : 1;
    int b18 : 1;
    int b19 : 1;
    int b20 : 1;
    int b21 : 1;
    int b22 : 1;
    int b23 : 1;
    int b24 : 1;
    int b25 : 1;
    int b26 : 1;
    int b27 : 1;
    int b28 : 1;
    int b29 : 1;
    int b30 : 1;
    int b31 : 1;
} db_804D6B48;
unsigned int db_804D6B50;
DevText* db_804D6B58;
unsigned char db_804D6B5C;
unsigned char db_804D6B5D;
int db_804D6B60;
int db_804D6B64;
int db_804D6B68;
int db_804D6B6C;
int db_804D6B70;
int db_804D6B74;
int db_804D6B78;
int db_804D6B7C;
int db_804D6B80;
int db_804D6B88;
char db_804D6B8C;
unsigned int db_804D6B90;
int db_804D6B94;
struct {
    unsigned char x0;
    UnkFlagStruct x1;
} db_804D6B98;
struct {
    DevText* text;
    char buffer[1500];
}* db_804D6B9C;
UnkFlagStruct db_804D6BA0;

// sdata2 (constants)

#endif
