#ifndef db_2253_external_h
#define db_2253_external_h

#include "dolphin/os/OSContext.h"
#include "ft/fighter.h"
#include "sysdolphin/baselib/gobj.h"

typedef struct DevText {
    u16 x;
    u16 y;
    u8 w;
    u8 h;
    u8 cursor_x;
    u8 cursor_y;
    f32 scale_x;
    f32 scale_y;
    u32 bg_color;
    u32 text_colors[4];
    u8 id;
    u8 line_width;
    u32 flags; // 0x10=ShowCursor 0x40=HideBackground
    u8 current_color;
    char* buf;
    struct DevText* prev;
    struct DevText* next;
} DevText;

struct Color {
    u8 r, g, b, a;
};

extern u8 _stack_addr[];
extern u8 _stack_end[];
extern int hsd_8040FF80;
extern int lbl_8040FFFF;
int fn_80355F94(int, int*, int*);
void hsd_80393DA0(void*, int);
void Exception_ReportStackTrace(OSContext*, int);
void Exception_ReportCodeline(u16 err, int dsisr, int dar, OSContext* ctx);
void hsd_80397DFC(int);
void Exception_StoreDebugLevel(int);
void hsd_80397DA4(OSContext*);
void lb_80019A48(void);
HSD_GObj* DevText_GetGObj(void);
DevText* DevText_Create(int, int, int, int, int, char*);
void DevText_Show(HSD_GObj*, void*);
void DevText_HideCursor(DevText*);
void DevText_SetBGColor(DevText*, struct Color);
void DevText_SetTextColor(DevText*, struct Color);
void DevText_SetScale(DevText*, float, float);
void DevText_ShowBackground(DevText*);
void DevText_ShowText(DevText*);
void DevText_Erase(DevText*);
void DevText_Printf(DevText*, char*, ...);
void DevText_SetCursorX(DevText*, int);
void DevText_SetCursorXY(DevText*, int, int);
void DevText_HideBackground(DevText*);
void DevText_HideText(DevText*);
int it_8026C704(void);
void pl_80039450(s32);
int hsd_80393A5C(char*, int, int);
extern HSD_ObjAllocData HSD_PSAppSrt_804D10B0;
extern HSD_ObjAllocData efLib_80458EB0;
extern HSD_ObjAllocData hsd_804D0F60;
extern HSD_ObjAllocData hsd_804D0F90;
void Camera_80030B0C(int);
void Camera_80030A60(int);
void Camera_80030A8C(int);
void Camera_80030B38(int);
void Camera_80030B64(int);
void Camera_80030B90(int);
void Camera_80030AA4(int);
void Camera_80030AA4(int);
int gm_8016C658(int);
int gm_8016F1B8(int);
unsigned int pl_80039418(int, int);
void lbShadow_8000EEE0(Fighter_GObj*);
M2C_UNK Camera_8002FEEC(s32);
M2C_UNK Camera_8003006C(void);
M2C_UNK Camera_800300F0(void);
s32 Camera_80030154(void);
s32 Camera_80030178(void);
u8 gm_801A4310(void);

#endif
