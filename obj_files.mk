# Linker order for every file, passed to the Metrowerks linker.

INIT_O_FILES :=\
    $(BUILD_DIR)/src/Runtime/__mem.o\
    $(BUILD_DIR)/src/MetroTRK/mem_TRK.o\
    $(BUILD_DIR)/asm/init.o\
    $(BUILD_DIR)/src/dolphin/os/init/__start.o

EXTAB_O_FILES :=\
    $(BUILD_DIR)/asm/extab.o

EXTABINDEX_O_FILES :=\
    $(BUILD_DIR)/asm/extabindex.o

TEXT_O_FILES :=\
    $(BUILD_DIR)/src/melee/lb/lbcommand.o\
    $(BUILD_DIR)/src/melee/lb/lbcollision.o\
    $(BUILD_DIR)/asm/melee/lb/lbcollision.o\
    $(BUILD_DIR)/src/melee/lb/lblanguage.o\
    $(BUILD_DIR)/src/melee/lb/lbtime.o\
    $(BUILD_DIR)/src/melee/lb/lb_00B0.o\
    $(BUILD_DIR)/asm/melee/lb/lb_00CE.o\
    $(BUILD_DIR)/src/melee/lb/lbvector.o\
    $(BUILD_DIR)/asm/melee/lb/lbshadow.o\
    $(BUILD_DIR)/asm/melee/lb/lb_00F9.o\
    $(BUILD_DIR)/asm/melee/lb/lbarq.o\
    $(BUILD_DIR)/asm/melee/lb/lbmemory.o\
    $(BUILD_DIR)/asm/melee/lb/lbheap.o\
    $(BUILD_DIR)/src/melee/lb/lbfile.o\
    $(BUILD_DIR)/src/melee/lb/lbarchive.o\
    $(BUILD_DIR)/asm/melee/lb/lbarchive.o\
    $(BUILD_DIR)/asm/melee/lb/lbdvd.o\
    $(BUILD_DIR)/asm/melee/lb/lb_0192.o\
    $(BUILD_DIR)/asm/melee/lb/lb_0198.o\
    $(BUILD_DIR)/asm/melee/lb/lbsnap.o\
    $(BUILD_DIR)/asm/melee/lb/lbgx.o\
    $(BUILD_DIR)/asm/melee/lb/lbanim.o\
    $(BUILD_DIR)/asm/melee/lb/lbmthp.o\
    $(BUILD_DIR)/asm/melee/lb/lbjpeg.o\
    $(BUILD_DIR)/asm/melee/lb/lbbgflash.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/melee/lb/lbrefract_data.o\
    $(BUILD_DIR)/asm/melee/lb/lbrefract1.o\
    $(BUILD_DIR)/asm/melee/lb/lbrefract2.o\
    $(BUILD_DIR)/asm/melee/lb/lbrefract3.o\
    $(BUILD_DIR)/src/melee/lb/lbrefract3.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/melee/lb/lbaudio_ax.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/melee/cm/camera.o\
    $(BUILD_DIR)/src/melee/cm/cmsnap.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/pl/player.o\
    $(BUILD_DIR)/asm/melee/pl/pl_0371.o\
    $(BUILD_DIR)/asm/melee/pl/pltrick.o\
    $(BUILD_DIR)/asm/melee/pl/plbonus.o\
    $(BUILD_DIR)/asm/melee/pl/plbonuslib.o\
    $(BUILD_DIR)/asm/melee/pl/pl_040D.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/mp/mpcoll.o\
    $(BUILD_DIR)/asm/melee/mp/mpcoll.o\
    $(BUILD_DIR)/asm/melee/mp/mplib.o\
    $(BUILD_DIR)/asm/melee/mp/mpisland.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/melee/ef/eflib.o\
    $(BUILD_DIR)/asm/melee/ef/efsync.o\
    $(BUILD_DIR)/asm/melee/ef/ef_061D.o\
    $(BUILD_DIR)/asm/melee/ef/efasync.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/fighter.o\
    $(BUILD_DIR)/asm/melee/ft/ftanim.o\
    $(BUILD_DIR)/src/melee/ft/ftaction.o\
    $(BUILD_DIR)/src/melee/ft/ftparts.o\
    $(BUILD_DIR)/src/melee/ft/ftcamera.o\
    $(BUILD_DIR)/src/melee/ft/ftcoll.o\
    $(BUILD_DIR)/asm/melee/ft/ftcoll.o\
    $(BUILD_DIR)/src/melee/ft/ft_07C1.o\
    $(BUILD_DIR)/src/melee/ft/ft_07C6.o\
    $(BUILD_DIR)/src/melee/ft/ftcommon.o\
    $(BUILD_DIR)/src/melee/ft/ftdrawcommon.o\
    $(BUILD_DIR)/asm/melee/ft/ftdrawcommon_data.o\
    $(BUILD_DIR)/src/melee/ft/ftcliffcommon.o\
    $(BUILD_DIR)/src/melee/ft/ftwalljump.o\
    $(BUILD_DIR)/src/melee/ft/ft_0819.o\
    $(BUILD_DIR)/src/melee/ft/ft_081B.o\
    $(BUILD_DIR)/asm/melee/ft/ft_0852.o\
    $(BUILD_DIR)/src/melee/ft/ftdata.o\
    $(BUILD_DIR)/src/melee/ft/ftdata2.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_Init.o\
    $(BUILD_DIR)/asm/melee/ft/ftdata.o\
    $(BUILD_DIR)/src/melee/ft/ftlib.o\
    $(BUILD_DIR)/src/melee/ft/ftwaitanim.o\
    $(BUILD_DIR)/src/melee/ft/ft_0877.o\
    $(BUILD_DIR)/asm/melee/ft/ft_0877.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_Wait.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_08A6.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_Attack1.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_AttackDash.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_AttackS3.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_AttackHi3.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_AttackLw3.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_AttackS4.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_AttackHi4.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_AttackLw4.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_AttackAir.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_LandingAir.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_Damage.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_DamageFall.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_DamageIce.o\
    $(BUILD_DIR)/asm/melee/ft/ftCo_DamageIce.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_Guard.o\
    $(BUILD_DIR)/asm/melee/ft/ftCo_Guard.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_ItemGet.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_ItemThrow.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_SpecialS.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_SpecialAir.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_FallSpecial.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_Lift.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_DownBound.o\
    $(BUILD_DIR)/asm/melee/ft/ftCo_DownBound.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_DownStand.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_Down.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_DownAttack.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_Passive.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_PassiveStand.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_ShieldBreakFly.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_ShieldBreakFall.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_ShieldBreakDown.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_ShieldBreakStand.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_Furafura.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_Escape.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_EscapeAir.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_Rebound.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_Pass.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_Ottotto.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_CliffWait.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_CliffClimb.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_CliffAttack.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_CliffEscape.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_CliffJump.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_CargoWait.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_CargoWalk.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_CargoTurn.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_CargoKneebend.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_CargoJump.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_CargoFall.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_CargoLanding.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_CargoThrow.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_09C4.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_Shouldered.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_CaptureCaptain.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_09CB.o\
    $(BUILD_DIR)/asm/melee/ft/ftCo_09CB.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_BarrelWait.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_StopWall.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_StopCeil.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_DownDamage.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_MissFoot.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_09F4.o\
    $(BUILD_DIR)/asm/melee/ft/ftCo_09F4.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_09F7.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMario/ftMr_Strings.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_0A01.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_0B3E.o\
    $(BUILD_DIR)/asm/melee/ft/ftCo_0B3E.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_CaptureYoshi.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_YoshiEgg.o\
    $(BUILD_DIR)/asm/melee/ft/ftCo_YoshiEgg.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_CaptureKoopa.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_CaptureDamageKoopa.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_CaptureWaitKoopa.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_ThrownKoopa.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_CaptureMewtwo.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCommon/ftCo_ThrownMewtwo.o\
    $(BUILD_DIR)/asm/melee/ft/ft_08A4.o\
    $(BUILD_DIR)/asm/melee/ft/ftmaterial.o\
    $(BUILD_DIR)/asm/melee/ft/ftcolanim.o\
    $(BUILD_DIR)/asm/melee/ft/ftdevice.o\
    $(BUILD_DIR)/asm/melee/ft/ft_0C08.o\
    $(BUILD_DIR)/asm/melee/ft/ftafterimage.o\
    $(BUILD_DIR)/asm/melee/ft/ft_0C31.o\
    $(BUILD_DIR)/asm/melee/ft/ftmetal.o\
    $(BUILD_DIR)/asm/melee/ft/ft_0C88.o\
    $(BUILD_DIR)/asm/melee/ft/ftswing.o\
    $(BUILD_DIR)/asm/melee/ft/ft_0CD1.o\
    $(BUILD_DIR)/asm/melee/ft/ftstarrodswing.o\
    $(BUILD_DIR)/asm/melee/ft/ftlipstickswing.o\
    $(BUILD_DIR)/asm/melee/ft/ft_0CDD.o\
    $(BUILD_DIR)/asm/melee/ft/ftattacks4combo.o\
    $(BUILD_DIR)/asm/melee/ft/ft_0CEE.o\
    $(BUILD_DIR)/asm/melee/ft/ftchangeparam.o\
    $(BUILD_DIR)/asm/melee/ft/ft_0D14.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftDonkey/ftDk_HeavyWait0.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftDonkey/ftDk_HeavyWalk.o\
    $(BUILD_DIR)/src/melee/ft/ftwalkcommon.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftDonkey/ftDk_MS_345_0.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftDonkey/ftDk_HeavyTurn.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftDonkey/ftDk_HeavyFall.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftDonkey/ftDk_HeavyJump.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftDonkey/ftDk_HeavyWait1.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftDonkey/ftDk_HeavyLanding.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftMario/ftMr_Init.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMario/ftMr_SpecialN.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMario/ftMr_SpecialS.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMario/ftMr_SpecialHi.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMario/ftMr_SpecialLw.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftCaptain/ftCa_Init.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCaptain/ftCa_SpecialN.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCaptain/ftCa_SpecialS.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCaptain/ftCa_SpecialLw.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCaptain/ftCa_SpecialHi.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftFox/ftFx_Init.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftFox/ftFx_AppealS.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftFox/ftFx_SpecialN.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftFox/ftFx_SpecialHi.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftFox/ftFx_SpecialLw.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftFox/ftFx_SpecialS.o\


TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftLink/ftLk_Init.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftLink/ftLk_AttackAir.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftLink/ftLk_SpecialLw.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftLink/ftLk_SpecialHi.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftLink/ftLk_SpecialS.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftLink/ftLk_SpecialN.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftKirby/ftKb_Init.o\
    $(BUILD_DIR)/asm/melee/ft/chara/ftKb_Init.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftDonkey/ftDk_Init.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftDonkey/ftDk_SpecialLw.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftDonkey/ftDk_SpecialS.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftDonkey/ftDk_SpecialN.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftDonkey/ftDk_SpecialHi.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftSeak/ftSk_Init.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftSeak/ftSk_SpecialS.o\
    $(BUILD_DIR)/asm/melee/ft/chara/ftSeak/ftSk_SpecialN.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftSeak/ftSk_SpecialN.o\
    $(BUILD_DIR)/asm/melee/ft/chara/ftSeak/ftSk_SpecialHi.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftSeak/ftSk_SpecialHi.o\
    $(BUILD_DIR)/asm/melee/ft/chara/ftSeak/ftSk_SpecialLw.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftSeak/ftSk_SpecialLw.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftNess/ftNs_Init.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftNess/ftNs_AttackS4.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftNess/ftNs_AttackHi4.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftNess/ftNs_AttackLw4.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftNess/ftNs_SpecialS.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftNess/ftNs_SpecialN.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftNess/ftNs_SpecialHi.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftNess/ftNs_SpecialLw.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftPeach/ftPe_Init.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftPeach/ftPe_Float.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftPeach/ftPe_FloatFall.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftPeach/ftPe_FloatAttack.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftPeach/ftPe_AttackS4.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftPeach/ftPe_SpecialS.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftPeach/ftPe_SpecialLw.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftPeach/ftPe_SpecialHi.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftPeach/ftPe_SpecialN.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftPopo/ftPp_Init.o\
    $(BUILD_DIR)/asm/melee/ft/chara/ftPp_SpecialS.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftNana/ftNn_Init.o\
    $(BUILD_DIR)/asm/melee/ft/chara/ftNn_Init.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftNana/ftNn_Unk0.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftPikachu/ftPk_Init.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftPikachu/ftPk_SpecialN.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftPikachu/ftPk_SpecialS.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftPikachu/ftPk_SpecialHi.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftPikachu/ftPk_SpecialLw.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftSamus/ftSs_Init.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftSamus/ftSs_SpecialLw_0.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftSamus/ftSs_SpecialN.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftSamus/ftSs_SpecialS.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftSamus/ftSs_SpecialHi.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftSamus/ftSs_SpecialLw_1.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftYoshi/ftYs_Init.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftYoshi/ftYs_Guard.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftYoshi/ftYs_SpecialN.o\
    $(BUILD_DIR)/asm/melee/ft/chara/ftYs_SpecialN.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftKoopa/ftKp_Init.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftKoopa/ftKp_Unk1.o\
    $(BUILD_DIR)/asm/melee/ft/chara/ftKp_SpecialS.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftMars/ftMs_Init.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMars/ftMs_SpecialN.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMars/ftMs_SpecialS.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMars/ftMs_SpecialHi.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMars/ftMs_SpecialLw.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftZelda/ftZd_Init.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftZelda/ftZd_SpecialHi.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftZelda/ftZd_SpecialN.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftZelda/ftZd_SpecialLw.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftZelda/ftZd_SpecialS.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftPurin/ftPr_Init.o\
    $(BUILD_DIR)/asm/melee/ft/chara/ftPr_Init.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftLuigi/ftLg_Init.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftLuigi/ftLg_SpecialN.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftLuigi/ftLg_SpecialS.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftLuigi/ftLg_SpecialHi.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftLuigi/ftLg_SpecialLw.o\


TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftMewtwo/ftMt_Init.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMewtwo/ftMt_SpecialHi.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMewtwo/ftMt_SpecialLw.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMewtwo/ftMt_SpecialS.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMewtwo/ftMt_SpecialN.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftCLink/ftCl_Init.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCLink/ftCl_AppealS.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftDrMario/ftDr_Init.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftDrMario/ftDr_AppealS.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftFalco/ftFc_Init.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftPichu/ftPc_Init.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftGameWatch/ftGw_Init.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftGameWatch/ftGw_AttackS4.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftGameWatch/ftGw_AttackLw3.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftGameWatch/ftGw_AttackAir.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftGameWatch/ftGw_Attack11.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftGameWatch/ftGw_Attack100.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftGameWatch/ftGw_SpecialS.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftGameWatch/ftGw_SpecialLw.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftGameWatch/ftGw_SpecialHi.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftGameWatch/ftGw_SpecialN.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftGanon/ftGn_Init.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftEmblem/ftFe_Init.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftZakoBoy/ftBo_Init.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftZakoGirl/ftGl_Init.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftGigaKoopa/ftGk_Init.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftSandbag/ftSb_Init.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_Init.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_Wait1_0.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_Wait1_2.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_Entry.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_Damage_0.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_Sweep.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_SweepWait.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_Slap.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_Walk.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_Drill.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_RockCrush.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_PaperCrush.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_Poke.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_FingerBeam.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_FingerGun.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_FingerGun3.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_BackAirplane1.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_BackAirplane2.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_BackAirplane3.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_BackCrush_0.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_BackCrush_1.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_BackDisappear.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_Squeeze.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_Wait1_1.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_Squeezing.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_Throw.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_Slam.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_TagCrush.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_TagApplaud.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_TagRockPaper.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_TagCancel.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_CaptureMasterHand.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_CaptureDamageMasterHand.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftMasterHand/ftMh_ThrownMasterHand.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/chara/ftCrazyHand/ftCh_Init.o\
    $(BUILD_DIR)/src/melee/ft/chara/ftCrazyHand/ftCh_Unk0.o\
    $(BUILD_DIR)/asm/melee/ft/chara/ftCh_Init.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/ft/ftbosslib.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/gm/gmmain_lib.o\
    $(BUILD_DIR)/asm/melee/gm/gmmain_lib.o\
    $(BUILD_DIR)/src/melee/gm/gmmain.o\
    $(BUILD_DIR)/asm/melee/gm/gm_1601.o\
    $(BUILD_DIR)/asm/melee/gm/gmtitle.o\
    $(BUILD_DIR)/asm/melee/gm/gmcamera.o\
    $(BUILD_DIR)/asm/melee/gm_1A36.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/gr/ground.o\
    $(BUILD_DIR)/asm/melee/gr/ground.o\
    $(BUILD_DIR)/asm/melee/gr/grdisplay.o\
    $(BUILD_DIR)/src/melee/gr/grdatfiles.o\
    $(BUILD_DIR)/asm/melee/gr/granime.o\
    $(BUILD_DIR)/asm/melee/gr/grmaterial.o\
    $(BUILD_DIR)/src/melee/gr/grlib.o\
    $(BUILD_DIR)/src/melee/gr/grdynamicattr.o\
    $(BUILD_DIR)/asm/melee/gr/grzakogenerator.o\
    $(BUILD_DIR)/asm/melee/gr/grfzerocar.o\
    $(BUILD_DIR)/asm/melee/gr/grizumi.o\
    $(BUILD_DIR)/asm/melee/gr/grcastle.o\
    $(BUILD_DIR)/asm/melee/gr/grstadium.o\
    $(BUILD_DIR)/asm/melee/gr/grkongo.o\
    $(BUILD_DIR)/asm/melee/gr/grzebes.o\
    $(BUILD_DIR)/asm/melee/gr/grcorneria.o\
    $(BUILD_DIR)/src/melee/gr/grstory.o\
    $(BUILD_DIR)/asm/melee/gr/gronett.o\
    $(BUILD_DIR)/asm/melee/gr/grbigblue.o\
    $(BUILD_DIR)/asm/melee/gr/grmutecity.o\
    $(BUILD_DIR)/asm/melee/gr/grfourside.o\
    $(BUILD_DIR)/asm/melee/gr/grgreatbay.o\
    $(BUILD_DIR)/asm/melee/gr/gricemt.o\
    $(BUILD_DIR)/asm/melee/gr/grinishie1.o\
    $(BUILD_DIR)/asm/melee/gr/grinishie2.o\
    $(BUILD_DIR)/asm/melee/gr/grkraid.o\
    $(BUILD_DIR)/asm/melee/gr/grrcruise.o\
    $(BUILD_DIR)/src/melee/gr/grshrine.o\
    $(BUILD_DIR)/asm/melee/gr/gryorster.o\
    $(BUILD_DIR)/asm/melee/gr/grgarden.o\
    $(BUILD_DIR)/asm/melee/gr/grvenom.o\
    $(BUILD_DIR)/asm/melee/gr/grtest.o\
    $(BUILD_DIR)/asm/melee/gr/grkinokoroute.o\
    $(BUILD_DIR)/asm/melee/gr/grshrineroute.o\
    $(BUILD_DIR)/asm/melee/gr/grzebesroute.o\
    $(BUILD_DIR)/asm/melee/gr/grbigblueroute.o\
    $(BUILD_DIR)/src/melee/gr/grfigure1.o\
    $(BUILD_DIR)/src/melee/gr/grfigure2.o\
    $(BUILD_DIR)/src/melee/gr/grfigure3.o\
    $(BUILD_DIR)/asm/melee/gr/groldyoshi.o\
    $(BUILD_DIR)/asm/melee/gr/groldkongo.o\
    $(BUILD_DIR)/asm/melee/gr/groldpupupu.o\
    $(BUILD_DIR)/asm/melee/gr/grpura.o\
    $(BUILD_DIR)/asm/melee/gr/grgreens.o\
    $(BUILD_DIR)/asm/melee/gr/grflatzone.o\
    $(BUILD_DIR)/asm/melee/gr/grpushon.o\
    $(BUILD_DIR)/asm/melee/gr/grfigureget.o\
    $(BUILD_DIR)/src/melee/gr/grbattle.o\
    $(BUILD_DIR)/asm/melee/gr/grlast.o\
    $(BUILD_DIR)/asm/melee/gr/grhomerun.o\
    $(BUILD_DIR)/asm/melee/gr/grheal.o\
    $(BUILD_DIR)/asm/melee/gr/grtmario.o\
    $(BUILD_DIR)/src/melee/gr/grtcaptain.o\
    $(BUILD_DIR)/asm/melee/gr/grtclink.o\
    $(BUILD_DIR)/src/melee/gr/grtdonkey.o\
    $(BUILD_DIR)/asm/melee/gr/grtdrmario.o\
    $(BUILD_DIR)/src/melee/gr/grtfalco.o\
    $(BUILD_DIR)/asm/melee/gr/grtfox.o\
    $(BUILD_DIR)/src/melee/gr/grticeclimber.o\
    $(BUILD_DIR)/asm/melee/gr/grtkirby.o\
    $(BUILD_DIR)/src/melee/gr/grtkoopa.o\
    $(BUILD_DIR)/asm/melee/gr/grtlink.o\
    $(BUILD_DIR)/src/melee/gr/grtluigi.o\
    $(BUILD_DIR)/src/melee/gr/grtmars.o\
    $(BUILD_DIR)/asm/melee/gr/grtmewtwo.o\
    $(BUILD_DIR)/src/melee/gr/grtness.o\
    $(BUILD_DIR)/asm/melee/gr/grtpeach.o\
    $(BUILD_DIR)/src/melee/gr/grtpichu.o\
    $(BUILD_DIR)/asm/melee/gr/grtpikachu.o\
    $(BUILD_DIR)/asm/melee/gr/grtpurin.o\
    $(BUILD_DIR)/asm/melee/gr/grtsamus.o\
    $(BUILD_DIR)/asm/melee/gr/grtseak.o\
    $(BUILD_DIR)/src/melee/gr/grtyoshi.o\
    $(BUILD_DIR)/asm/melee/gr/grtzelda.o\
    $(BUILD_DIR)/asm/melee/gr/grtgamewatch.o\
    $(BUILD_DIR)/src/melee/gr/grtemblem.o\
    $(BUILD_DIR)/asm/melee/gr/grtganon.o\
    $(BUILD_DIR)/src/melee/gr/stage.o\
    $(BUILD_DIR)/asm/melee/gr/stage.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/melee/db/db_2253.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/melee/mn_2295.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/melee/mn/mnitemsw.o\
    $(BUILD_DIR)/asm/melee/mn/mnstagesw.o\
    $(BUILD_DIR)/asm/melee/mn/mnname.o\
    $(BUILD_DIR)/asm/melee/mn/mnnamenew.o\
    $(BUILD_DIR)/asm/melee/mn/mndiagram.o\
    $(BUILD_DIR)/asm/melee/mn/mndiagram2.o\
    $(BUILD_DIR)/asm/melee/mn/mndiagram3.o\
    $(BUILD_DIR)/asm/melee/mn/mnvibration.o\
    $(BUILD_DIR)/asm/melee/mn/mnsound.o\
    $(BUILD_DIR)/asm/melee/mn/mndeflicker.o\
    $(BUILD_DIR)/asm/melee/mn/mnsoundtest.o\
    $(BUILD_DIR)/asm/melee/mn/mnlanguage.o\
    $(BUILD_DIR)/asm/melee/mn/mnhyaku.o\
    $(BUILD_DIR)/asm/melee/mn/mnevent.o\
    $(BUILD_DIR)/asm/melee/mn/mndatadel.o\
    $(BUILD_DIR)/asm/melee/mn/mncount.o\
    $(BUILD_DIR)/asm/melee/mn/mninfo.o\
    $(BUILD_DIR)/asm/melee/mn/mninfobonus.o\
    $(BUILD_DIR)/asm/melee/mn/mnsnap.o\
    $(BUILD_DIR)/asm/melee/mn/mngallery.o\
    $(BUILD_DIR)/asm/melee/mn/mnstagesel.o\
    $(BUILD_DIR)/src/melee/mn/mncharsel.o\
    $(BUILD_DIR)/asm/melee/mn/mncharsel.o\
    $(BUILD_DIR)/src/melee/it/item.o\
    $(BUILD_DIR)/src/melee/it/it_26B1.o\
    $(BUILD_DIR)/asm/melee/it/it_266F.o\
    $(BUILD_DIR)/asm/melee/it/itcoll.o\
    $(BUILD_DIR)/asm/melee/it/it_2725.o\
    $(BUILD_DIR)/src/melee/it/it_803F1418.o\
    $(BUILD_DIR)/asm/melee/it/it_803F1418.o\
    $(BUILD_DIR)/src/melee/it/it_803F23CC.o\
    $(BUILD_DIR)/asm/melee/it/it_803F23CC.o\
    $(BUILD_DIR)/src/melee/it/it_803F3100.o\
    $(BUILD_DIR)/asm/melee/it/it_803F3100.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/melee/it/items/itcapsule.o\
    $(BUILD_DIR)/asm/melee/it/items/itbombhei.o\
    $(BUILD_DIR)/asm/melee/it/items/itdosei.o\
    $(BUILD_DIR)/asm/melee/it/items/itheart.o\
    $(BUILD_DIR)/asm/melee/it/items/ittomato.o\
    $(BUILD_DIR)/src/melee/it/items/itstar.o\
    $(BUILD_DIR)/asm/melee/it/items/itbat.o\
    $(BUILD_DIR)/asm/melee/it/items/itsword.o\
    $(BUILD_DIR)/asm/melee/it/items/itbox.o\
    $(BUILD_DIR)/asm/melee/it/items/ittaru.o\
    $(BUILD_DIR)/asm/melee/it/items/itegg.o\
    $(BUILD_DIR)/asm/melee/it/items/itkusudama.o\
    $(BUILD_DIR)/src/melee/it/items/itparasol.o\
    $(BUILD_DIR)/asm/melee/it/items/itgshell.o\
    $(BUILD_DIR)/asm/melee/it/items/itrshell.o\
    $(BUILD_DIR)/asm/melee/it/items/itlgun.o\
    $(BUILD_DIR)/asm/melee/it/items/itfreeze.o\
    $(BUILD_DIR)/asm/melee/it/items/itfoods.o\
    $(BUILD_DIR)/asm/melee/it/items/itmsbomb.o\
    $(BUILD_DIR)/asm/melee/it/items/itflipper.o\
    $(BUILD_DIR)/asm/melee/it/items/itsscope.o\
    $(BUILD_DIR)/asm/melee/it/items/itstarrod.o\
    $(BUILD_DIR)/asm/melee/it/items/itharisen.o\
    $(BUILD_DIR)/asm/melee/it/items/itfflower.o\
    $(BUILD_DIR)/asm/melee/it/items/itkinoko.o\
    $(BUILD_DIR)/asm/melee/it/items/itdkinoko.o\
    $(BUILD_DIR)/asm/melee/it/items/ithammer.o\
    $(BUILD_DIR)/asm/melee/it/items/itwstar.o\
    $(BUILD_DIR)/asm/melee/it/items/itscball.o\
    $(BUILD_DIR)/asm/melee/it/items/itrabbitc.o\
    $(BUILD_DIR)/asm/melee/it/items/itmetalb.o\
    $(BUILD_DIR)/asm/melee/it/items/itlipstick.o\
    $(BUILD_DIR)/asm/melee/it/items/itspycloak.o\
    $(BUILD_DIR)/asm/melee/it/items/ittarucann.o\
    $(BUILD_DIR)/asm/melee/it/items/itmball.o\
    $(BUILD_DIR)/asm/melee/it/items/itlgunray.o\
    $(BUILD_DIR)/asm/melee/it/items/itstarrodstar.o\
    $(BUILD_DIR)/asm/melee/it/items/itsscopebeam.o\
    $(BUILD_DIR)/asm/melee/it/items/itlgunbeam.o\
    $(BUILD_DIR)/asm/melee/it/items/ithammerhead.o\
    $(BUILD_DIR)/asm/melee/it/items/itlipstickspore.o\
    $(BUILD_DIR)/asm/melee/it/items/itfflowerflame.o\
    $(BUILD_DIR)/asm/melee/it/items/itevyoshiegg.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/melee/it/items/itmariofireball.o\
    $(BUILD_DIR)/asm/melee/it/items/itkirbycutterbeam.o\
    $(BUILD_DIR)/src/melee/it/items/itfoxlaser.o\
    $(BUILD_DIR)/src/melee/it/items/itfoxillusion.o\
    $(BUILD_DIR)/asm/melee/it/items/itlinkbomb.o\
    $(BUILD_DIR)/asm/melee/it/items/itlinkboomerang.o\
    $(BUILD_DIR)/asm/melee/it/items/itlinkhookshot.o\
    $(BUILD_DIR)/asm/melee/it/items/itlinkarrow.o\
    $(BUILD_DIR)/asm/melee/it/items/itnesspkfire.o\
    $(BUILD_DIR)/asm/melee/it/items/itnesspkfirepillar.o\
    $(BUILD_DIR)/asm/melee/it/items/itnesspkflush.o\
    $(BUILD_DIR)/asm/melee/it/items/itnesspkthunderball.o\
    $(BUILD_DIR)/asm/melee/it/items/itnesspkthundertrail.o\
    $(BUILD_DIR)/asm/melee/it/items/itkoopaflame.o\
    $(BUILD_DIR)/asm/melee/it/items/itnessbat.o\
    $(BUILD_DIR)/asm/melee/it/items/itunk1.o\
    $(BUILD_DIR)/asm/melee/it/items/itkirbyhammer.o\
    $(BUILD_DIR)/asm/melee/it/items/itfoxblaster.o\
    $(BUILD_DIR)/asm/melee/it/items/itlinkbow.o\
    $(BUILD_DIR)/asm/melee/it/items/itnesspkflushexplode.o\
    $(BUILD_DIR)/asm/melee/it/items/itseakneedlethrown.o\
    $(BUILD_DIR)/asm/melee/it/items/itseakneedleheld.o\
    $(BUILD_DIR)/src/melee/it/items/itseakvanish.o\
    $(BUILD_DIR)/asm/melee/it/items/itpikachuthunder.o\
    $(BUILD_DIR)/asm/melee/it/items/itmariocape.o\
    $(BUILD_DIR)/asm/melee/it/items/ityoshieggthrow.o\
    $(BUILD_DIR)/src/melee/it/items/ityoshistar.o\
    $(BUILD_DIR)/asm/melee/it/items/itpikachutjoltground.o\
    $(BUILD_DIR)/asm/melee/it/items/itpikachutjoltair.o\
    $(BUILD_DIR)/asm/melee/it/items/itsamusbomb.o\
    $(BUILD_DIR)/asm/melee/it/items/itsamuschargeshot.o\
    $(BUILD_DIR)/asm/melee/it/items/itsamusmissile.o\
    $(BUILD_DIR)/asm/melee/it/items/itsamusgrapple.o\
    $(BUILD_DIR)/asm/melee/it/items/itseakchain.o\
    $(BUILD_DIR)/asm/melee/it/items/itpeachexplode.o\
    $(BUILD_DIR)/asm/melee/it/items/itpeachturnip.o\
    $(BUILD_DIR)/src/melee/it/items/itpeachparasol.o\
    $(BUILD_DIR)/asm/melee/it/items/itpeachtoad.o\
    $(BUILD_DIR)/asm/melee/it/items/itpeachtoadspore.o\
    $(BUILD_DIR)/asm/melee/it/items/itnessyoyo.o\
    $(BUILD_DIR)/asm/melee/it/items/itluigifireball.o\
    $(BUILD_DIR)/asm/melee/it/items/itdrmariopill.o\
    $(BUILD_DIR)/asm/melee/it/items/itclimbersice.o\
    $(BUILD_DIR)/asm/melee/it/items/itclimbersblizzard.o\
    $(BUILD_DIR)/asm/melee/it/items/itclimbersstring.o\
    $(BUILD_DIR)/asm/melee/it/items/itzeldadinfire.o\
    $(BUILD_DIR)/asm/melee/it/items/itzeldadinfireexplode.o\
    $(BUILD_DIR)/asm/melee/it/items/itmewtwodisable.o\
    $(BUILD_DIR)/asm/melee/it/items/itmewtwoshadowball.o\
    $(BUILD_DIR)/asm/melee/it/items/itgamewatchgreenhouse.o\
    $(BUILD_DIR)/asm/melee/it/items/itgamewatchmanhole.o\
    $(BUILD_DIR)/asm/melee/it/items/itgamewatchfire.o\
    $(BUILD_DIR)/asm/melee/it/items/itgamewatchparachute.o\
    $(BUILD_DIR)/asm/melee/it/items/itgamewatchturtle.o\
    $(BUILD_DIR)/asm/melee/it/items/itgamewatchbreath.o\
    $(BUILD_DIR)/asm/melee/it/items/itkirbygamewatchchefpan.o\
    $(BUILD_DIR)/asm/melee/it/items/itgamewatchjudge.o\
    $(BUILD_DIR)/asm/melee/it/items/itgamewatchpanic.o\
    $(BUILD_DIR)/asm/melee/it/items/itgamewatchrescue.o\
    $(BUILD_DIR)/asm/melee/it/items/itgamewatchchef.o\
    $(BUILD_DIR)/asm/melee/it/items/itclinkmilk.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/melee/it/items/ittosakinto.o\
    $(BUILD_DIR)/asm/melee/it/items/itchicorita.o\
    $(BUILD_DIR)/asm/melee/it/items/itchicoritaleaf.o\
    $(BUILD_DIR)/asm/melee/it/items/itkabigon.o\
    $(BUILD_DIR)/asm/melee/it/items/itkamex.o\
    $(BUILD_DIR)/asm/melee/it/items/itmatadogas.o\
    $(BUILD_DIR)/asm/melee/it/items/itlizardon.o\
    $(BUILD_DIR)/asm/melee/it/items/itfire.o\
    $(BUILD_DIR)/asm/melee/it/items/itthunder.o\
    $(BUILD_DIR)/asm/melee/it/items/itfreezer.o\
    $(BUILD_DIR)/asm/melee/it/items/itsonans.o\
    $(BUILD_DIR)/asm/melee/it/items/ithassam.o\
    $(BUILD_DIR)/asm/melee/it/items/itunknown.o\
    $(BUILD_DIR)/asm/melee/it/items/itentei.o\
    $(BUILD_DIR)/asm/melee/it/items/itraikou.o\
    $(BUILD_DIR)/asm/melee/it/items/itsuikun.o\
    $(BUILD_DIR)/asm/melee/it/items/itkireihana.o\
    $(BUILD_DIR)/asm/melee/it/items/itmarumine.o\
    $(BUILD_DIR)/asm/melee/it/items/itlugia.o\
    $(BUILD_DIR)/asm/melee/it/items/ithouou.o\
    $(BUILD_DIR)/asm/melee/it/items/itmetamon.o\
    $(BUILD_DIR)/asm/melee/it/items/itpippi.o\
    $(BUILD_DIR)/asm/melee/it/items/ittogepy.o\
    $(BUILD_DIR)/asm/melee/it/items/itmew.o\
    $(BUILD_DIR)/asm/melee/it/items/itcerebi.o\
    $(BUILD_DIR)/asm/melee/it/items/ithitodeman.o\
    $(BUILD_DIR)/asm/melee/it/items/itlucky.o\
    $(BUILD_DIR)/src/melee/it/items/itporygon2.o\
    $(BUILD_DIR)/asm/melee/it/items/ithinoarashi.o\
    $(BUILD_DIR)/asm/melee/it/items/itmaril.o\
    $(BUILD_DIR)/asm/melee/it/items/itfushigibana.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/melee/it/items/itoldkuri.o\
    $(BUILD_DIR)/asm/melee/it/items/itmato.o\
    $(BUILD_DIR)/asm/melee/it/items/itheiho.o\
    $(BUILD_DIR)/asm/melee/it/items/itlikelike.o\
    $(BUILD_DIR)/asm/melee/it/items/itnokonoko.o\
    $(BUILD_DIR)/asm/melee/it/items/itzgshell.o\
    $(BUILD_DIR)/asm/melee/it/items/itzrshell.o\
    $(BUILD_DIR)/asm/melee/it/items/itpatapata.o\
    $(BUILD_DIR)/asm/melee/it/items/itklap.o\
    $(BUILD_DIR)/asm/melee/it/items/itoldottosea.o\
    $(BUILD_DIR)/asm/melee/it/items/itwhitebea.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/melee/it/items/itoctarock.o\
    $(BUILD_DIR)/asm/melee/it/items/itunk4.o\
    $(BUILD_DIR)/asm/melee/it/it_802E6AEC.o\
    $(BUILD_DIR)/asm/melee/it/items/itarwinglaser.o\
    $(BUILD_DIR)/asm/melee/it/items/itoctarockstone.o\
    $(BUILD_DIR)/asm/melee/it/items/itleadead.o\
    $(BUILD_DIR)/asm/melee/it/items/itgreatfoxlaser.o\
    $(BUILD_DIR)/asm/melee/it/items/ittincle.o\
    $(BUILD_DIR)/asm/melee/it/items/itkyasarin.o\
    $(BUILD_DIR)/asm/melee/it/items/itwhispyapple.o\
    $(BUILD_DIR)/asm/melee/it/items/ittools.o\
    $(BUILD_DIR)/asm/melee/it/items/itkyasarinegg.o\
    $(BUILD_DIR)/asm/melee/it/items/itmasterhandlaser.o\
    $(BUILD_DIR)/asm/melee/it/items/itmasterhandbullet.o\
    $(BUILD_DIR)/asm/melee/it/items/itcrazyhandbomb.o\
    $(BUILD_DIR)/asm/melee/it/items/itcoin.o\
    $(BUILD_DIR)/asm/melee/it/itkirbyunk.o\
    $(BUILD_DIR)/asm/melee/it/items/itunk2.o\
    $(BUILD_DIR)/asm/melee/it/it_802F2BFC.o\
    $(BUILD_DIR)/asm/melee/it/itkirbyyoshispecialn.o\
    $(BUILD_DIR)/asm/melee/it/it_27CF.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/melee/if/ifall.o\
    $(BUILD_DIR)/asm/melee/if/iftime.o\
    $(BUILD_DIR)/asm/melee/if/ifstatus_data.o\
    $(BUILD_DIR)/src/melee/if/ifstatus.o\
    $(BUILD_DIR)/asm/melee/if/if_2F72.o\
    $(BUILD_DIR)/asm/melee/if/ifstock.o\
    $(BUILD_DIR)/asm/melee/if/ifmagnify.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/melee/un_2FC9.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/Runtime/__va_arg.o\
    $(BUILD_DIR)/src/Runtime/global_destructor_chain.o\
    $(BUILD_DIR)/src/Runtime/Gecko_ExceptionPPC.o\
    $(BUILD_DIR)/src/Runtime/Gecko_setjmp.o\
    $(BUILD_DIR)/asm/Runtime/runtime.o\
    $(BUILD_DIR)/src/Runtime/__init_cpp_exceptions.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/MSL/abort_exit.o\
    $(BUILD_DIR)/asm/MSL/abort_exit.o\
    $(BUILD_DIR)/asm/MSL/ansi_fp.o\
    $(BUILD_DIR)/src/MSL/buffer_io.o\
    $(BUILD_DIR)/src/MSL/PPC_EABI/critical_regions.gamecube.o\
    $(BUILD_DIR)/src/MSL/ctype.o\
    $(BUILD_DIR)/asm/MSL/direct_io.o\
    $(BUILD_DIR)/src/MSL/cstring.o\
    $(BUILD_DIR)/asm/MSL/mem_funcs.o\
    $(BUILD_DIR)/asm/MSL/printf.o\
    $(BUILD_DIR)/src/MSL/rand.o\
    $(BUILD_DIR)/src/MSL/string.o\
    $(BUILD_DIR)/asm/MSL/strtoul.o\
    $(BUILD_DIR)/src/MSL/console_io.o\
    $(BUILD_DIR)/src/MSL/wchar_io.o\
    $(BUILD_DIR)/src/MSL/math_1.o\
    $(BUILD_DIR)/src/MSL/trigf.o\
    $(BUILD_DIR)/asm/MSL/math.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/MetroTRK/mainloop.o\
    $(BUILD_DIR)/asm/MetroTRK/nubevent.o\
    $(BUILD_DIR)/asm/MetroTRK/nubinit.o\
    $(BUILD_DIR)/asm/MetroTRK/msg.o\
    $(BUILD_DIR)/asm/MetroTRK/msgbuf.o\
    $(BUILD_DIR)/asm/MetroTRK/serpoll.o\
    $(BUILD_DIR)/asm/MetroTRK/dispatch.o\
    $(BUILD_DIR)/asm/MetroTRK/msghndlr.o\
    $(BUILD_DIR)/asm/MetroTRK/flush_cache.o\
    $(BUILD_DIR)/asm/MetroTRK/mem_TRK.o\
    $(BUILD_DIR)/asm/MetroTRK/targimpl.o\
    $(BUILD_DIR)/asm/MetroTRK/dolphin_trk.o\
    $(BUILD_DIR)/asm/MetroTRK/mpc_7xx_603e.o\
    $(BUILD_DIR)/asm/MetroTRK/main_TRK.o\
    $(BUILD_DIR)/asm/MetroTRK/dolphin_trk_glue.o\
    $(BUILD_DIR)/asm/MetroTRK/targcont.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/dolphin/amcstubs/AmcExi2Stubs.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/dolphin/OdemuExi2/DebuggerDriver.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/dolphin/hio/hio.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/dolphin/mcc/mcc.o\
    $(BUILD_DIR)/asm/dolphin/mcc/fio.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/dolphin/thp/THPDec.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/dolphin/jpeg/jpegdec.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/dolphin/base/PPCArch.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/dolphin/db/db.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/dolphin/dsp/dsp.o\
    $(BUILD_DIR)/src/dolphin/dsp/dsp_debug.o\
    $(BUILD_DIR)/src/dolphin/dsp/dsp_task.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/dolphin/dvd/dvdlow.o\
    $(BUILD_DIR)/asm/dolphin/dvd/dvdfs.o\
    $(BUILD_DIR)/src/dolphin/dvd/dvd.o\
    $(BUILD_DIR)/asm/dolphin/dvd/dvd.o\
    $(BUILD_DIR)/src/dolphin/dvd/dvdqueue.o\
    $(BUILD_DIR)/asm/dolphin/dvd/dvderror.o\
    $(BUILD_DIR)/src/dolphin/dvd/fstload.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/dolphin/gx/GXInit.o\
    $(BUILD_DIR)/src/dolphin/gx/GXFifo.o\
    $(BUILD_DIR)/src/dolphin/gx/GXAttr.o\
    $(BUILD_DIR)/src/dolphin/gx/GXMisc.o\
    $(BUILD_DIR)/src/dolphin/gx/GXGeometry.o\
    $(BUILD_DIR)/src/dolphin/gx/GXFrameBuf.o\
    $(BUILD_DIR)/src/dolphin/gx/GXLight.o\
    $(BUILD_DIR)/src/dolphin/gx/GXTexture.o\
    $(BUILD_DIR)/src/dolphin/gx/GXBump.o\
    $(BUILD_DIR)/src/dolphin/gx/GXTev.o\
    $(BUILD_DIR)/src/dolphin/gx/GXPixel.o\
    $(BUILD_DIR)/src/dolphin/gx/GXStubs.o\
    $(BUILD_DIR)/src/dolphin/gx/GXDisplayList.o\
    $(BUILD_DIR)/src/dolphin/gx/GXTransform.o\
    $(BUILD_DIR)/src/dolphin/gx/GXPerf.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/dolphin/mtx/mtx.o\
    $(BUILD_DIR)/asm/dolphin/mtx/mtxvec.o\
    $(BUILD_DIR)/src/dolphin/mtx/mtx44.o\
    $(BUILD_DIR)/asm/dolphin/mtx/vec.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/dolphin/os/OSInit.o\
    $(BUILD_DIR)/src/dolphin/os/OSAlarm.o\
    $(BUILD_DIR)/src/dolphin/os/OSAlloc.o\
    $(BUILD_DIR)/src/dolphin/os/OSArena.o\
    $(BUILD_DIR)/src/dolphin/os/OSAudioSystem.o\
    $(BUILD_DIR)/src/dolphin/os/OSCache.o\
    $(BUILD_DIR)/src/dolphin/os/OSContext.o\
    $(BUILD_DIR)/src/dolphin/os/OSError.o\
    $(BUILD_DIR)/src/dolphin/os/OSExi.o\
    $(BUILD_DIR)/src/dolphin/os/OSFont.o\
    $(BUILD_DIR)/src/dolphin/os/OSInterrupt.o\
    $(BUILD_DIR)/src/dolphin/os/OSLink.o\
    $(BUILD_DIR)/src/dolphin/os/OSMemory.o\
    $(BUILD_DIR)/src/dolphin/os/OSMutex.o\
    $(BUILD_DIR)/src/dolphin/os/OSReboot.o\
    $(BUILD_DIR)/src/dolphin/os/OSReset.o\
    $(BUILD_DIR)/src/dolphin/os/OSResetSW.o\
    $(BUILD_DIR)/src/dolphin/os/OSRtc.o\
    $(BUILD_DIR)/src/dolphin/os/OSSerial.o\
    $(BUILD_DIR)/asm/dolphin/os/OSSerial_data.o\
    $(BUILD_DIR)/src/dolphin/os/OSSync.o\
    $(BUILD_DIR)/src/dolphin/os/OSThread.o\
    $(BUILD_DIR)/asm/dolphin/os/OSThread_data.o\
    $(BUILD_DIR)/src/dolphin/os/OSTime.o\
    $(BUILD_DIR)/src/dolphin/os/OSUartExi.o\
    $(BUILD_DIR)/asm/dolphin/os/init/__ppc_eabi_init_data.o\
    $(BUILD_DIR)/src/dolphin/os/init/__ppc_eabi_init.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/dolphin/pad/PadClamp.o\
    $(BUILD_DIR)/src/dolphin/pad/Pad.o\
    $(BUILD_DIR)/asm/dolphin/pad/Pad.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/dolphin/vi/vi.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/dolphin/ai/ai.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/dolphin/ar/ar.o\
    $(BUILD_DIR)/asm/dolphin/ar/ar.o\
    $(BUILD_DIR)/src/dolphin/ar/arq.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/dolphin/card/CARDBios.o\
    $(BUILD_DIR)/src/dolphin/card/CARDUnlock.o\
    $(BUILD_DIR)/src/dolphin/card/CARDRdwr.o\
    $(BUILD_DIR)/src/dolphin/card/CARDBlock.o\
    $(BUILD_DIR)/src/dolphin/card/CARDDir.o\
    $(BUILD_DIR)/src/dolphin/card/CARDCheck.o\
    $(BUILD_DIR)/src/dolphin/card/CARDMount.o\
    $(BUILD_DIR)/src/dolphin/card/CARDFormat.o\
    $(BUILD_DIR)/src/dolphin/card/CARDOpen.o\
    $(BUILD_DIR)/src/dolphin/card/CARDCreate.o\
    $(BUILD_DIR)/src/dolphin/card/CARDRead.o\
    $(BUILD_DIR)/src/dolphin/card/CARDWrite.o\
    $(BUILD_DIR)/src/dolphin/card/CARDDelete.o\
    $(BUILD_DIR)/src/dolphin/card/CARDStat.o\
    $(BUILD_DIR)/src/dolphin/card/CARDRename.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/dolphin/ax/AX.o\
    $(BUILD_DIR)/asm/dolphin/ax/AXAlloc.o\
    $(BUILD_DIR)/asm/dolphin/ax/AXAux.o\
    $(BUILD_DIR)/asm/dolphin/ax/AXCL.o\
    $(BUILD_DIR)/asm/dolphin/ax/AXOut.o\
    $(BUILD_DIR)/asm/dolphin/ax/AXSPB.o\
    $(BUILD_DIR)/asm/dolphin/ax/AXVPB.o\
    $(BUILD_DIR)/asm/dolphin/ax/AXProf.o\
    $(BUILD_DIR)/asm/dolphin/ax/DSPCode.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/dolphin/axfx/reverb_hi.o\
    $(BUILD_DIR)/asm/dolphin/axfx/reverb_std.o\
    $(BUILD_DIR)/asm/dolphin/axfx/chorus.o\
    $(BUILD_DIR)/asm/dolphin/axfx/delay.o\
    $(BUILD_DIR)/src/dolphin/axfx/axfx.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/dobj.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/tobj.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/tobj.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/state.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/tev.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/mobj.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/aobj.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/aobj.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/lobj.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/lobj.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/cobj.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/cobj.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/fobj.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/fobj.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/pobj.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/pobj.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/jobj.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/displayfunc.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/displayfunc.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/initialize.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/sysdolphin/baselib/video.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/controller.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/controller.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/rumble.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/sysdolphin/baselib/spline.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/mtx.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/util.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/objalloc.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/robj.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/robj.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/id.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/wobj.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/fog.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/perf.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/list.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/object.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/sysdolphin/baselib/quatlib.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/memory.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/shadow.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/shadow.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/archive.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/random.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/sysdolphin/baselib/bytecode.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/class.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/sysdolphin/baselib/hash.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/texp.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/texp.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/sysdolphin/baselib/texpdag.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/sysdolphin/baselib/leak.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/debug.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/sysdolphin/baselib/synth.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/sysdolphin/baselib/AXDriver.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/sysdolphin/baselib/devcom.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/sysdolphin/baselib/gobjproc.o\
    $(BUILD_DIR)/src/sysdolphin/baselib/gobjproc.o\
    $(BUILD_DIR)/src/sysdolphin/baselib/gobjplink.o\
    $(BUILD_DIR)/src/sysdolphin/baselib/gobjgxlink.o\
    $(BUILD_DIR)/src/sysdolphin/baselib/gobjobject.o\
    $(BUILD_DIR)/src/sysdolphin/baselib/gobjuserdata.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/gobj.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/gobj.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/sysdolphin/baselib/baselib_shared_data_003.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/sysdolphin/baselib/baselib_unknown_009.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/baselib_unknown_010.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/baselib_unknown_011.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/baselib_unknown_002.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/psdisp.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/psdisp.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/psdisptev.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/psdisptev.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/psappsrt.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/psappsrt.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/src/sysdolphin/baselib/sobjlib.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/sobjlib.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/sysdolphin/baselib/sislib.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/sysdolphin/baselib/baselib_shared_data_001.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/baselib_shared_data_002.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/sysdolphin/baselib/hsd_40FF.o\

TEXT_O_FILES +=\
    $(BUILD_DIR)/asm/sysdolphin/baselib/hsd_3A94.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/hsd_3AA7.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/hsd_3B27.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/hsd_3B2B.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/hsd_3B2E.o\
    $(BUILD_DIR)/src/sysdolphin/baselib/hsd_3B33.o\
    $(BUILD_DIR)/asm/sysdolphin/baselib/hsd_3B34.o\
