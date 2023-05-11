#ifndef MELEE_FT_FTACTION_H
#define MELEE_FT_FTACTION_H

#include <baselib/gobj.h>


typedef struct FtCmdState {
    float x0; //timer
    float x4; //frame
    char *x8; //script
    int xC;   //stack_depth
    void *(x10[5]); //stack
} FtCmdState;

void ftAction_80071028(Fighter_GObj *arg0, FtCmdState *arg1);

void ftAction_80073240(HSD_GObj*);
void ftAction_80073354(HSD_GObj*);
void ftAction_8007349C(HSD_GObj*);

#endif
