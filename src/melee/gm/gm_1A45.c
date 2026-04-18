#include "gm_1A45.h"

#include "gm_1A36.h"

#include "gm_1A45.static.h"

#include "gm_unsplit.h"

#include "cm/types.h"
#include "db/db.h"
#include "dolphin/gx/GXEnum.h"
#include "dolphin/gx/GXGeometry.h"
#include "dolphin/gx/GXTexture.h"
#include "gm/gmscdata.h"
#include "if/ifcoget.h"
#include "lb/lb_00F9.h"
#include "lb/lb_0192.h"
#include "lb/lbaudio_ax.h"
#include "lb/lbcardgame.h"
#include "lb/lbheap.h"

#include <dolphin/os/OSThread.h>
#include <baselib/controller.h>
#include <baselib/gobjproc.h>
#include <baselib/initialize.h>
#include <baselib/leak.h>
#include <baselib/particle.h>
#include <baselib/perf.h>
#include <baselib/sobjlib.h>

int special_render_pass;

static u64 gm_803DA888[8] = {
    0, 0x82FFFA, 0, 0x8EFFFA, 0x800FFA, 0x808FFA, 0x800FFA, 0,
};

u64 gm_803DA8C8[2] = { -1, -1 };

bool gm_801A45E8(int bit)
{
    return gm_80479D58.unk_10.x0 & (1ULL << bit);
}

int gm_801A4624(void)
{
    return gm_80479D58.unk_10.x0;
}

void gm_801A4634(int bit)
{
    gm_80479D58.unk_10.x0 |= 1ULL << bit;
}

void gm_801A4674(int bit)
{
    gm_80479D58.unk_10.x0 &= ~(1ULL << bit);
}

bool gm_801A46B8(int bit)
{
    return gm_80479D58.unk_10.x2 & (1ULL << bit);
}

bool fn_801A46F4(void)
{
    int i;
    for (i = 0; i < PAD_MAX_CONTROLLERS; i++) {
        HSD_PadStatus* pad = &HSD_PadMasterStatus[(u8) i];
        if (pad->err == 0 && (pad->trigger & 8) && (pad->button & HSD_PAD_X)) {
            return true;
        }
    }
    return false;
}

bool fn_801A47E4(void)
{
    int i;
    for (i = 0; i < PAD_MAX_CONTROLLERS; i++) {
        HSD_PadStatus* pad = &HSD_PadMasterStatus[(u8) i];
        if (pad->err == 0 && (pad->trigger & 0x10)) {
            return true;
        }
    }
    return false;
}

u64 gm_801A48A4(u8 arg0)
{
    int i;
    u64 result = 0;

    for (i = 0; i < ARRAY_SIZE(gm_803DA888); i++) {
        if (arg0 & 1) {
            result |= gm_803DA888[i];
        }
        arg0 >>= 1;
    }

    return result;
}

void gm_801A4970(int (**arg0)(void))
{
    HSD_PadStatus* temp_r3;
    s8 var_r26;
    s8* temp_r4;
    u64 temp_ret;
    int i;
    PAD_STACK(8);

    var_r26 = 0;
    for (i = 0; i < PAD_MAX_CONTROLLERS; i++) {
        temp_r3 = &HSD_PadMasterStatus[(u8) i];
        if ((temp_r3->trigger & 2) && (temp_r3->button & 0x400)) {
            lbHeap_80015DF8();
            OSReport("[hsdDumpClassStat] -- Report --\n");
            hsdDumpClassStat(NULL, 0, 1);
            OSReport("\n");
            OSReport("[HSD_ObjDumpStat] -- Report --\n");
            HSD_ObjDumpStat();
            OSReport("\n");
            db_PrintEntityCounts();
            db_PrintThreadInfo();
            HSD_Leak_80387DF8(0);
            if (gm_804D6728 != NULL) {
                gm_801653C8(gm_804D6728);
                gm_804D6728 = NULL;
            } else {
                gm_804D6728 = gm_80165388(0x19, 0x3F, 0, 0xFE);
                if (gm_804D6724 != NULL) {
                    gm_804D6724();
                }
            }
        }
    }

    if (arg0[0] != NULL && arg0[0]() != 0) {
        if (gm_801A45E8(0)) {
            gm_80479D58.unk_10.x0 &= ~1;
        } else {
            gm_80479D58.unk_10.x0 |= 1;
        }
    }
    if (gm_801A45E8(0)) {
        if (arg0[1] != NULL && arg0[1]() != 0) {
            gm_80479D58.unk_10.x2 |= 1;
        }
    }
}

void gm_801A4B08(bool (*arg0)(void), bool (*arg1)(void))
{
    gm_80479D58.unk_10.x4[0] = arg0;
    gm_80479D58.unk_10.x4[1] = arg1;
}

void gm_801A4B1C(void)
{
    gm_801A4B08(fn_801A46F4, fn_801A47E4);
}

void gm_801A4B40(UNK_T arg0)
{
    gm_80479D58.unk_10.unk_30 = arg0;
}

void gm_801A4B50(int arg0)
{
    gm_80479D58.unk_10.unk_34 = arg0;
}

void gm_801A4B60(void)
{
    gm_80479D58.unk_C = 1;
}

void gm_801A4B74(void)
{
    gm_80479D58.unk_C = 2;
}

void gm_801A4B88(struct MinorSceneInfo* info)
{
    gm_804D6720 = info;
}

/// @brief returns a pointer to the current scenes enter data
void* gm_801A4B90(void)
{
    return gm_804D6720->load_data;
}

/// @brief returns a pointer to the current scenes exit data
void* gm_801A4B9C(void)
{
    return gm_804D6720->leave_data;
}

u32 gm_801A4BA8(void)
{
    return gm_80479D58.unk_0;
}

u32 gm_801A4BB8(void)
{
    return gm_80479D58.unk_8;
}

HSD_GObj* gm_801A4BC8(void)
{
    return gm_804D672C;
}

void fn_801A4BD0(HSD_GObj* gobj) {}

void gm_801A4BD4(void)
{
    PAD_STACK(0x18);

    gm_801A4B08(fn_801A46F4, fn_801A47E4);
    gm_801A4B40(0);
    gm_801A4B50(0);

    lb_80019880(1.0F / 60 * OS_TIMER_CLOCK);
    HSD_GObj_803912E0(&gm_80479D48.initdata);
    gm_80479D48.initdata.gproc_pri_max = 0x18;
    HSD_SObjLib_804D7960 =
        HSD_GObj_803912A8(&gm_80479D48.initdata, &HSD_SObjLib_8040C3A4);
    HSD_SObjLib_803A44A4();
    gm_80479D48.initdata.unk_2 = &gm_80479D58.unk_10.unk_28;
    HSD_GObj_80391304(&gm_80479D48.initdata);
    hsd_80392474();
    un_802FF78C();
    gm_804D672C = GObj_Create(14, 0, 0);
    if (gm_804D672C != NULL) {
        HSD_GObj_SetupProc(gm_804D672C, fn_801A4BD0, 0);
    }
    gm_804D6728 = NULL;
    gm_804D6724 = NULL;
    gm_801A3E88();
    lbAudioAx_8002835C();
    lb_80014534();
}

MinorSceneHandler* gm_801A4CE0(u8 id)
{
    MinorSceneHandler* cur;
    for (cur = gm_801A50A0(); cur->class_id != 0x2D; cur++) {
        if (cur->class_id == id) {
            return cur;
        }
    }
    return NULL;
}

inline u64 maybe_gm_801A48A4(u8 i)
{
    u64 temp_ret = gm_801A48A4(i);
    if (gm_80479D58.unk_10.unk_38_0) {
        return temp_ret;
    } else {
        return -1ULL;
    }
}

extern HSD_GObj* Player_GetEntity(s32 slot);
static void setup_gfx(void)
{
    HSD_GObj *player0, *saved1, *saved2;
    float ortho[4][4], ident[4][4];
    GXTexObj texobj;
    static u16 checkerboard_texture[] ATTRIBUTE_ALIGN(
        32) = { 0xF81F, 0, 0, 0, 0, 0xF81F };
    static const GXColor bg = { 0, 0xFF, 0, 0xFF };
    static const float TEXTURE_SCALE = 15;
    extern int special_render_pass;
    extern void HSD_StateInvalidate(int mask);
    extern Camera cm_80452C68;
    extern void __GXInitGX(void);
    extern GXColor erase_color;
    __GXInitGX();
    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
    GXSetVtxDesc(GX_VA_CLR0, GX_DIRECT);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_TEX_ST, GX_F32, 0);
    GXSetNumChans(1);
    GXSetNumTexGens(1);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXInitTexObj(&texobj, checkerboard_texture, 2, 2, GX_TF_RGB565, GX_REPEAT,
                 GX_REPEAT, GX_FALSE);
    GXInitTexObjLOD(&texobj, GX_NEAR_MIP_NEAR, GX_NEAR, 0, 0, 0, GX_TRUE,
                    GX_FALSE, GX_ANISO_1);
    GXLoadTexObj(&texobj, GX_TEXMAP0);
    GXSetCullMode(GX_CULL_NONE);
    MTXOrtho(ortho, 0, 1, 0, 1, 0, 1);
    GXSetProjection(ortho, GX_ORTHOGRAPHIC);
    MTXIdentity(ident);
    GXLoadPosMtxImm(ident, GX_PNMTX0);
}

void do_that_funky_render(void)
{
    HSD_GObj *player0, *saved1, *saved2;
    float ortho[4][4], ident[4][4];
    GXTexObj texobj;
    static u16 checkerboard_texture[] ATTRIBUTE_ALIGN(
        32) = { 0xF81F, 0, 0, 0, 0, 0xF81F };
    static const GXColor bg = { 0, 0xFF, 0, 0xFF };
    static const float TEXTURE_SCALE = 15;
    extern int special_render_pass;
    extern void HSD_StateInvalidate(int mask);
    extern Camera cm_80452C68;
    extern void __GXInitGX(void);
    extern GXColor erase_color;
    player0 = Player_GetEntity(0);
    if (player0 == NULL || player0->render_cb == NULL) {
        return;
    }
    GXSetCopyClear(bg, GX_MAX_Z24);
    // draw checkered background
    setup_gfx();
    GXSetAlphaUpdate(GX_ENABLE);
    GXSetZMode(GX_TRUE, GX_ALWAYS, GX_TRUE);
    GXSetVtxDesc(GX_VA_TEX0, GX_DIRECT);
    GXSetTevOp(GX_TEVSTAGE0, GX_MODULATE);
    GXBegin(GX_QUADS, GX_VTXFMT0, 4);
    GXPosition3f32(0, 0, -1);
    GXColor4u8(255, 255, 255, 255);
    GXTexCoord2f32(0, 0);
    GXPosition3f32(1, 0, -1);
    GXColor4u8(255, 255, 255, 255);
    GXTexCoord2f32(TEXTURE_SCALE, 0);
    GXPosition3f32(1, 1, -1);
    GXColor4u8(255, 255, 255, 255);
    GXTexCoord2f32(TEXTURE_SCALE, TEXTURE_SCALE);
    GXPosition3f32(0, 1, -1);
    GXColor4u8(255, 255, 255, 255);
    GXTexCoord2f32(0, TEXTURE_SCALE);
    GXEnd();
    // draw fighter
    __GXInitGX();
    HSD_StateInvalidate(-1);
    GXInvalidateVtxCache();
    GXInvalidateTexAll();
    GXSetColorUpdate(GX_FALSE);
    HSD_CObjSetCurrent(cm_80452C68.gobj->hsd_obj);
    special_render_pass = true;
    saved1 = HSD_GObj_804D7818;
    saved2 = HSD_GObj_804D7814;
    HSD_GObj_804D7818 = player0;
    HSD_GObj_804D7814 = player0;
    player0->render_cb(player0, 0);
    HSD_GObj_804D7818 = saved1;
    HSD_GObj_804D7814 = saved2;
    special_render_pass = false;
    GXSetColorUpdate(GX_TRUE);
    HSD_CObjEndCurrent();
    // draw normal background
    setup_gfx();
    GXSetZMode(GX_TRUE, GX_EQUAL, GX_FALSE);
    GXSetVtxDesc(GX_VA_TEX0, GX_NONE);
    GXSetTevOp(GX_TEVSTAGE0, GX_PASSCLR);
    GXBegin(GX_QUADS, GX_VTXFMT0, 4);
    if (!cm_80452C68.x398_b5) {
        GXPosition3f32(0, 0, -1);
        GXColor4u8(erase_color.r, erase_color.g, erase_color.b, erase_color.a);
        GXPosition3f32(1, 0, -1);
        GXColor4u8(erase_color.r, erase_color.g, erase_color.b, erase_color.a);
        GXPosition3f32(1, 1, -1);
        GXColor4u8(erase_color.r, erase_color.g, erase_color.b, erase_color.a);
        GXPosition3f32(0, 1, -1);
        GXColor4u8(erase_color.r, erase_color.g, erase_color.b, erase_color.a);
    } else {
        GXPosition3f32(0, 0, -1);
        GXColor4u8(0, 0, 0, 0xFF);
        GXPosition3f32(1, 0, -1);
        GXColor4u8(0, 0, 0, 0xFF);
        GXPosition3f32(1, 1, -1);
        GXColor4u8(0, 0, 0, 0xFF);
        GXPosition3f32(0, 1, -1);
        GXColor4u8(0, 0, 0, 0xFF);
    }
    GXEnd();
    __GXInitGX();
    HSD_StateInvalidate(-1);
    GXInvalidateVtxCache();
    GXInvalidateTexAll();
    HSD_CObjSetCurrent(cm_80452C68.gobj->hsd_obj);
}

int doing_that_funky_render_lowpoly = false;
void do_that_funky_render_lowpoly(void)
{
    HSD_GObj *player0, *saved1, *saved2;
    float ortho[4][4], ident[4][4];
    GXTexObj texobj;
    static u16 checkerboard_texture[] ATTRIBUTE_ALIGN(
        32) = { 0xF81F, 0, 0, 0, 0, 0xF81F };
    static const GXColor bg = { 0, 0xFF, 0, 0xFF };
    static const float TEXTURE_SCALE = 15;
    extern int special_render_pass;
    extern void HSD_StateInvalidate(int mask);
    extern Camera cm_80452C68;
    extern void __GXInitGX(void);
    extern GXColor erase_color;
    player0 = Player_GetEntity(0);
    if (player0 == NULL) {
        return;
    }
    GXSetCopyClear(bg, GX_MAX_Z24);
    // draw checkered background
    setup_gfx();
    GXSetAlphaUpdate(GX_ENABLE);
    GXSetZMode(GX_TRUE, GX_ALWAYS, GX_TRUE);
    GXSetVtxDesc(GX_VA_TEX0, GX_DIRECT);
    GXSetTevOp(GX_TEVSTAGE0, GX_MODULATE);
    GXBegin(GX_QUADS, GX_VTXFMT0, 4);
    GXPosition3f32(0, 0, -1);
    GXColor4u8(255, 255, 255, 255);
    GXTexCoord2f32(0, 0);
    GXPosition3f32(1, 0, -1);
    GXColor4u8(255, 255, 255, 255);
    GXTexCoord2f32(TEXTURE_SCALE, 0);
    GXPosition3f32(1, 1, -1);
    GXColor4u8(255, 255, 255, 255);
    GXTexCoord2f32(TEXTURE_SCALE, TEXTURE_SCALE);
    GXPosition3f32(0, 1, -1);
    GXColor4u8(255, 255, 255, 255);
    GXTexCoord2f32(0, TEXTURE_SCALE);
    GXEnd();
    // // draw fighter
    // __GXInitGX();
    // HSD_StateInvalidate(-1);
    // GXInvalidateVtxCache();
    // GXInvalidateTexAll();
    // GXSetColorUpdate(GX_FALSE);
    // {
    //     extern HSD_CObj *lowpoly_cobj;
    //     HSD_CObjSetCurrent(lowpoly_cobj);
    // }
    // doing_that_funky_render_lowpoly = true;
    // {
    //     extern void ftDrawCommon_80080C28(HSD_GObj*, int);
    //     ftDrawCommon_80080C28(player0, 0);
    //     ftDrawCommon_80080C28(player0, 1);
    //     ftDrawCommon_80080C28(player0, 2);
    // }
    // doing_that_funky_render_lowpoly = false;
    // GXSetColorUpdate(GX_TRUE);
    // HSD_CObjEndCurrent();
    // // draw normal background
    // setup_gfx();
    // GXSetZMode(GX_TRUE, GX_EQUAL, GX_FALSE);
    // GXSetVtxDesc(GX_VA_TEX0, GX_NONE);
    // GXSetTevOp(GX_TEVSTAGE0, GX_PASSCLR);
    // GXBegin(GX_QUADS, GX_VTXFMT0, 4);
    // GXPosition3f32(0, 0, -1);
    // GXColor4u8(0, 0, 0, 0xFF);
    // GXPosition3f32(1, 0, -1);
    // GXColor4u8(0, 0, 0, 0xFF);
    // GXPosition3f32(1, 1, -1);
    // GXColor4u8(0, 0, 0, 0xFF);
    // GXPosition3f32(0, 1, -1);
    // GXColor4u8(0, 0, 0, 0xFF);
    // GXEnd();
    // __GXInitGX();
    // HSD_StateInvalidate(-1);
    // GXInvalidateVtxCache();
    // GXInvalidateTexAll();
    // {
    //     extern HSD_CObj *lowpoly_cobj;
    //     HSD_CObjSetCurrent(lowpoly_cobj);
    // }
}

void do_that_funky_render_reflection(void)
{
    HSD_GObj *player0, *saved1, *saved2;
    float ortho[4][4], ident[4][4];
    GXTexObj texobj;
    static u16 checkerboard_texture[] ATTRIBUTE_ALIGN(
        32) = { 0xF81F, 0, 0, 0, 0, 0xF81F };
    static const GXColor bg = { 0, 0xFF, 0, 0xFF };
    static const float TEXTURE_SCALE = 120;
    extern int special_render_pass;
    extern void HSD_StateInvalidate(int mask);
    extern Camera cm_80452C68;
    extern void __GXInitGX(void);
    extern GXColor erase_color;
    player0 = Player_GetEntity(0);
    if (player0 == NULL || player0->render_cb == NULL) {
        return;
    }
    GXSetCopyClear(bg, GX_MAX_Z24);
    // draw checkered background
    setup_gfx();
    GXSetAlphaUpdate(GX_ENABLE);
    GXSetZMode(GX_TRUE, GX_ALWAYS, GX_TRUE);
    GXSetVtxDesc(GX_VA_TEX0, GX_DIRECT);
    GXSetTevOp(GX_TEVSTAGE0, GX_MODULATE);
    GXBegin(GX_QUADS, GX_VTXFMT0, 4);
    GXPosition3f32(0, 0, -1);
    GXColor4u8(255, 255, 255, 255);
    GXTexCoord2f32(0, 0);
    GXPosition3f32(1, 0, -1);
    GXColor4u8(255, 255, 255, 255);
    GXTexCoord2f32(TEXTURE_SCALE, 0);
    GXPosition3f32(1, 1, -1);
    GXColor4u8(255, 255, 255, 255);
    GXTexCoord2f32(TEXTURE_SCALE, TEXTURE_SCALE);
    GXPosition3f32(0, 1, -1);
    GXColor4u8(255, 255, 255, 255);
    GXTexCoord2f32(0, TEXTURE_SCALE);
    GXEnd();
    // draw fighter
    __GXInitGX();
    HSD_StateInvalidate(-1);
    GXInvalidateVtxCache();
    GXInvalidateTexAll();
    GXSetColorUpdate(GX_FALSE);
    {
        extern HSD_CObj* reflection_cobj;
        HSD_CObjSetCurrent(reflection_cobj);
    }
    special_render_pass = true;
    saved1 = HSD_GObj_804D7818;
    saved2 = HSD_GObj_804D7814;
    HSD_GObj_804D7818 = player0;
    HSD_GObj_804D7814 = player0;
    player0->render_cb(player0, 0);
    HSD_GObj_804D7818 = saved1;
    HSD_GObj_804D7814 = saved2;
    special_render_pass = false;
    GXSetColorUpdate(GX_TRUE);
    HSD_CObjEndCurrent();
    // draw normal background
    setup_gfx();
    GXSetZMode(GX_TRUE, GX_EQUAL, GX_FALSE);
    GXSetVtxDesc(GX_VA_TEX0, GX_NONE);
    GXSetTevOp(GX_TEVSTAGE0, GX_PASSCLR);
    GXBegin(GX_QUADS, GX_VTXFMT0, 4);
    GXPosition3f32(0, 0, -1);
    GXColor4u8(0xFF, 0xFF, 0xFF, 0xFF);
    GXPosition3f32(1, 0, -1);
    GXColor4u8(0xFF, 0xFF, 0xFF, 0xFF);
    GXPosition3f32(1, 1, -1);
    GXColor4u8(0xFF, 0xFF, 0xFF, 0xFF);
    GXPosition3f32(0, 1, -1);
    GXColor4u8(0xFF, 0xFF, 0xFF, 0xFF);
    GXEnd();
    __GXInitGX();
    HSD_StateInvalidate(-1);
    GXInvalidateVtxCache();
    GXInvalidateTexAll();
    {
        extern HSD_CObj* reflection_cobj;
        HSD_CObjSetCurrent(reflection_cobj);
    }
}

void gm_801A4D34(void (*arg0)(void), MinorSceneInfo* arg1)
{
    int pad_queue_count;
    int i;
    struct gm_80479D58_t* temp_r25;

    PAD_STACK(28);

    temp_r25 = &gm_80479D58;
    gm_801677C0(&temp_r25->unk_10);
    gm_80479D58.unk_0 = 0;
    gm_80479D58.unk_4 = 0;
    gm_80479D58.unk_8 = 0;
    gm_80479D58.unk_C = 0;
    HSD_PadFlushQueue(HSD_PAD_FLUSH_QUEUE_LEAVE1);
    lb_8001CF18();

    while (temp_r25->unk_C == 0) {
        hsd_80392E80();
        gmMainLib_8046B0F0.xC = false;

        while ((pad_queue_count = lb_80019894()) == 0) {
            lb_800195D0();
        }
        lb_800195D0();

        if (HSD_PadGetResetSwitch()) {
            gmMainLib_8046B0F0.resetting = true;
            break;
        }

        for (i = 0; i < pad_queue_count; i++) {
            HSD_PerfSetStartTime();
            lb_800198E0();
            if (g_debugLevel >= 3) {
                gm_801A4970(temp_r25->unk_10.x4);
            }
            if (gm_801A46B8(0) || !gm_801A45E8(0)) {
                temp_r25->unk_10.unk_38_0 = true;
            } else {
                temp_r25->unk_10.unk_38_0 = false;
            }
            if (gm_80479D58.unk_10.unk_38_0) {
                lb_80019900();
                if (lb_80019A30(0)) {
                    gm_801A3A74();
                }
                if (lb_80019A30(0) && (arg0 != NULL)) {
                    arg0();
                }
            }
            if (gm_80479D58.unk_10.x0 != gm_80479D58.unk_10.x1 ||
                temp_r25->unk_10.x2 != temp_r25->unk_10.x3)
            {
                temp_r25->unk_10.unk_20 =
                    maybe_gm_801A48A4(temp_r25->unk_10.x0);
                temp_r25->unk_10.x1 = temp_r25->unk_10.x0;
                temp_r25->unk_10.x3 = temp_r25->unk_10.x2;
                temp_r25->unk_10.x2 = 0;
            }
            temp_r25->unk_10.unk_28 = temp_r25->unk_10.unk_20;
            if (lb_80019A30(0) == 0) {
                temp_r25->unk_10.unk_28 |=
                    gm_803DA8C8[temp_r25->unk_10.unk_34];
            }
            if (lb_80019A30(1) == 0) {
                temp_r25->unk_10.unk_28 |=
                    ~gm_803DA8C8[temp_r25->unk_10.unk_34];
            }
            if (g_debugLevel >= 3) {
                db_CheckScreenshot();
            }
            lbAudioAx_80027DF8();
            if (temp_r25->unk_10.unk_30 != NULL) {
                temp_r25->unk_10.unk_30();
            }
            HSD_GObj_80390CFC();
            if (temp_r25->unk_0 != -2) {
                temp_r25->unk_0++;
            }
            if (gm_80479D58.unk_10.unk_38_0 && (lb_80019A30(0) != 0)) {
                if (temp_r25->unk_8 != -2) {
                    temp_r25->unk_8++;
                }
            }
            HSD_PerfSetCPUTime();
            if (g_debugLevel >= 3) {
                OSCheckActiveThreads();
            }
            gmMainLib_8046B0F0.xC = false;
            if (temp_r25->unk_C != 0) {
                break;
            }
        }
        if (temp_r25->unk_C == 2) {
            break;
        }

        lb_800195D0();
        GXInvalidateVtxCache();
        GXInvalidateTexAll();
        HSD_StartRender(HSD_RP_SCREEN);
        HSD_GObj_80390FC0();
        HSD_Init_803755A8();
        HSD_PerfSetDrawTime();
        HSD_VICopyXFBAsync(HSD_RP_SCREEN);
        if (temp_r25->unk_4 != -2U) {
            temp_r25->unk_4++;
        }
        db_TakeScreenshotIfPending();
        HSD_PerfSetTotalTime();
        HSD_PerfInitStat();
    }
    HSD_VIWaitXFBFlush();
}
