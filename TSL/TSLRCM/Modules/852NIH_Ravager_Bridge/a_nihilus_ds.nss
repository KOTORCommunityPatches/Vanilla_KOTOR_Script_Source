// Globals
	int intGLOB_1 = 1;
	int intGLOB_2 = 2;
	int intGLOB_3 = 3;
	int intGLOB_4 = 4;
	int intGLOB_5 = 5;
	int intGLOB_6 = 6;
	int intGLOB_7 = 3;
	int intGLOB_8 = 4;
	int intGLOB_9 = 5;
	int intGLOB_10 = 6;
	int intGLOB_11 = 7;
	int intGLOB_12 = 8;
	int intGLOB_13 = 9;
	int intGLOB_14 = 10;
	int intGLOB_15 = 11;
	int intGLOB_16 = 1;
	int intGLOB_17 = 2;
	int intGLOB_18 = 3;
	int intGLOB_19 = 4;
	int intGLOB_20 = 5;
	int intGLOB_21 = 6;
	int intGLOB_22 = 7;
	int intGLOB_23 = 8;
	int intGLOB_24 = 9;
	int intGLOB_25 = 10;
	int intGLOB_26 = 11;
	int intGLOB_27 = 12;
	int intGLOB_28 = 13;
	int intGLOB_29 = 14;
	int intGLOB_30 = 15;
	int intGLOB_31 = 16;
	int intGLOB_32 = 17;
	int intGLOB_33 = 18;
	int intGLOB_34 = 19;
	int intGLOB_35 = 20;
	int intGLOB_36 = 21;
	int intGLOB_37 = 22;
	int intGLOB_38 = 23;
	int intGLOB_39 = 24;
	int intGLOB_40 = 25;
	int intGLOB_41 = 26;
	int intGLOB_42 = 27;
	int intGLOB_43 = 28;
	int intGLOB_44 = 29;
	int intGLOB_45 = 30;
	int intGLOB_46 = 31;
	int intGLOB_47 = 32;
	int intGLOB_48 = 84;
	int intGLOB_49 = 0;
	int intGLOB_50 = 1;
	int intGLOB_51 = 2;
	int intGLOB_52 = 29;
	int intGLOB_53 = 65;
	int intGLOB_54 = 98;
	int intGLOB_55 = 99;
	int intGLOB_56 = 100;
	int intGLOB_57 = 101;
	int intGLOB_58 = 103;
	int intGLOB_59 = 104;
	int intGLOB_60 = 105;
	int intGLOB_61 = 106;
	int intGLOB_62 = 102;
	int intGLOB_63 = 107;
	int intGLOB_64 = 108;
	int intGLOB_65 = 102;
	int intGLOB_66 = 107;
	int intGLOB_67 = 108;
	int intGLOB_68 = 109;
	int intGLOB_69 = 15;
	int intGLOB_70 = 10;
	int intGLOB_71 = 5;
	int intGLOB_72 = 2;
	int intGLOB_73;
	int intGLOB_74;
	int intGLOB_75;
	object objectGLOB_1;
	int intGLOB_76;
	int intGLOB_77;
	int intGLOB_78;
	int intGLOB_79;
	int intGLOB_80;
	int intGLOB_81;
	int intGLOB_82 = 1;
	int intGLOB_83 = 2;
	int intGLOB_84 = 3;
	int intGLOB_85 = 20;
	int intGLOB_86 = 21;
	int intGLOB_87 = 22;
	int intGLOB_88 = 23;
	int intGLOB_89 = 24;
	int intGLOB_90 = 25;
	int intGLOB_91 = 26;
	int intGLOB_92 = 27;
	int intGLOB_93 = 28;
	int intGLOB_94 = 66;
	int intGLOB_95 = 67;
	int intGLOB_96 = 68;
	int intGLOB_97 = 69;
	int intGLOB_98 = 70;
	int intGLOB_99 = 71;
	int intGLOB_100 = 72;
	int intGLOB_101 = 73;
	int intGLOB_102 = 74;
	int intGLOB_103 = 75;
	int intGLOB_104 = 76;
	int intGLOB_105 = 77;
	int intGLOB_106 = 78;
	int intGLOB_107 = 79;
	int intGLOB_108 = 80;
	int intGLOB_109 = 81;
	int intGLOB_110 = 82;
	int intGLOB_111 = 83;
	int intGLOB_112 = 85;
	int intGLOB_113 = 86;
	int intGLOB_114 = 87;
	int intGLOB_115 = 88;
	int intGLOB_116 = 89;
	int intGLOB_117 = 90;
	int intGLOB_118 = 91;
	int intGLOB_119 = 92;
	int intGLOB_120 = 94;
	int intGLOB_121 = 95;
	int intGLOB_122 = 96;
	int intGLOB_123 = 97;
	int intGLOB_124 = 1;
	int intGLOB_125 = 2;
	int intGLOB_126 = 3;
	int intGLOB_127 = 4;
	int intGLOB_128 = 5;

// Prototypes
void sub2(int intParam1, int intParam2);
void sub1();

void sub2(int intParam1, int intParam2) {
	SetLocalBoolean(OBJECT_SELF, intParam1, intParam2);
}

void sub1() {
	object oPC = GetFirstPC();
	SetFakeCombatState(oPC, 1);
	AssignCommand(oPC, ActionPlayAnimation(19, 1.0, (-1.0)));
}

void main() {
	int nParam1 = GetScriptParameter(1);
	object oDarthNihilus = GetObjectByTag("DarthNihilus", 0);
	object oPC = GetFirstPC();
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	object oMand = GetObjectByTag("Mand", 0);
	switch (nParam1) {
		case 0:
			AssignCommand(oDarthNihilus, ActionDoCommand(SetFacing(0.0)));
			DelayCommand(2.0, AssignCommand(oDarthNihilus, ActionPlayAnimation(121, 1.0, 2.0)));
			DelayCommand(2.0, AssignCommand(oDarthNihilus, ActionWait(4.0)));
			DelayCommand(6.0, AssignCommand(oDarthNihilus, ActionMoveToLocation(GetLocation(GetObjectByTag("sp_nihilus", 0)), 0)));
			{
				effect effect1 = EffectCutSceneStunned();
				DelayCommand(2.0, AssignCommand(oPC, ActionPlayAnimation(10460, 1.0, (-1.0))));
				DelayCommand(2.0, AssignCommand(oVisasMarr, ActionPlayAnimation(10460, 1.0, (-1.0))));
				DelayCommand(2.0, AssignCommand(oMand, ActionPlayAnimation(10460, 1.0, (-1.0))));
				DelayCommand(2.8, ApplyEffectToObject(2, effect1, oPC, 0.0));
				DelayCommand(2.8, ApplyEffectToObject(2, effect1, oVisasMarr, 0.0));
				DelayCommand(2.8, ApplyEffectToObject(2, effect1, oMand, 0.0));
				SetLockOrientationInDialog(oPC, 1);
				SetLockOrientationInDialog(oDarthNihilus, 1);
			}
			break;
		case 1:
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(oPC, ClearAllEffects());
			AssignCommand(oVisasMarr, ClearAllActions());
			AssignCommand(oVisasMarr, ClearAllEffects());
			AssignCommand(oMand, ClearAllActions());
			AssignCommand(oMand, ClearAllEffects());
			DelayCommand(1.0, SetLightsaberPowered(oDarthNihilus, 1, 1, 1));
			DelayCommand(1.5, sub1());
			DelayCommand(1.6, CreatureFlourishWeapon(oPC));
			DelayCommand(1.6, CreatureFlourishWeapon(oVisasMarr));
			AssignCommand(oVisasMarr, sub2(intGLOB_114, 0));
			AssignCommand(oMand, sub2(intGLOB_114, 0));
			AssignCommand(oDarthNihilus, sub2(intGLOB_114, 0));
			SetLockOrientationInDialog(oPC, 0);
			break;
		case 2:
			AssignCommand(oPC, ClearAllEffects());
			AssignCommand(oVisasMarr, ClearAllEffects());
			AssignCommand(oMand, ClearAllEffects());
			{
				effect efBeam = EffectBeam(2029, oDarthNihilus, 0, 0);
				effect efVisual = EffectVisualEffect(1009, 0);
				DelayCommand(2.0, ApplyEffectToObject(1, efVisual, oPC, 2.0));
				DelayCommand(2.0, ApplyEffectToObject(1, efBeam, oPC, 2.0));
				DelayCommand(2.0, AssignCommand(oDarthNihilus, ActionPlayAnimation(121, 1.0, 2.0)));
				DelayCommand(4.0, AssignCommand(oDarthNihilus, ClearAllActions()));
			}
			break;
		case 3:
			break;
		case 4:
			SetGlobalFadeIn(0.3, 1.5, 0.0, 0.0, 0.0);
			break;
		case 5:
			DelayCommand(0.6, SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0));
			break;
		case 6:
			AssignCommand(oPC, ClearAllEffects());
			AssignCommand(oMand, ClearAllEffects());
			DelayCommand(1.0, AssignCommand(oDarthNihilus, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_nihilus", 0)), 0)));
			DelayCommand(1.0, AssignCommand(oDarthNihilus, ActionDoCommand(SetFacing(GetFacing(GetObjectByTag("wp_nihilus", 0))))));
			break;
		case 7:
			AssignCommand(oDarthNihilus, ActionDoCommand(SetFacing(GetFacing(GetObjectByTag("sp_nihilus", 0)))));
			break;
		case 8:
			AssignCommand(oDarthNihilus, ActionDoCommand(SetFacing(GetFacing(GetObjectByTag("wp_nihilus", 0)))));
			AssignCommand(oVisasMarr, ClearAllEffects());
			DelayCommand(2.0, AssignCommand(oDarthNihilus, ActionPlayAnimation(121, 1.0, 2.0)));
			{
				effect efPush = EffectForcePushTargeted(GetLocation(oDarthNihilus), 0);
				DelayCommand(2.0, ApplyEffectToObject(0, efPush, oVisasMarr, 0.0));
				DelayCommand(4.0, AssignCommand(oDarthNihilus, ActionDoCommand(SetFacing(GetFacing(GetObjectByTag("wp_nihilus", 0))))));
			}
			break;
		case 9:
			AssignCommand(oPC, ClearAllEffects());
			AssignCommand(oVisasMarr, ClearAllEffects());
			AssignCommand(oMand, ClearAllEffects());
			break;
		case 10:
			DelayCommand(1.0, AssignCommand(oVisasMarr, ActionDoCommand(SetFacing(270.0))));
			DelayCommand(1.0, AssignCommand(oPC, ActionDoCommand(SetFacing(90.0))));
			DelayCommand(2.0, CreatureFlourishWeapon(oPC));
			DelayCommand(2.0, CreatureFlourishWeapon(oVisasMarr));
			DelayCommand(2.0, SetLightsaberPowered(oPC, 1, 1, 1));
			DelayCommand(1.4, SetLightsaberPowered(oVisasMarr, 1, 1, 1));
			AssignCommand(oVisasMarr, sub2(intGLOB_114, 0));
			AssignCommand(oMand, sub2(intGLOB_114, 0));
			AssignCommand(oDarthNihilus, sub2(intGLOB_114, 0));
			SetLockOrientationInDialog(oPC, 0);
			break;
		case 11:
			SetGlobalFadeIn(0.5, 2.0, 0.0, 0.0, 0.0);
			break;
		case 12:
			{
				int nMaxHP = GetMaxHitPoints(OBJECT_SELF);
				float float5 = (IntToFloat(nMaxHP) * 0.2);
				int int5 = FloatToInt(float5);
				effect efDamage = EffectDamage((GetCurrentHitPoints(OBJECT_SELF) - int5), 8, 0);
				if (((int5 < GetCurrentHitPoints(OBJECT_SELF)) && (GetCurrentHitPoints(OBJECT_SELF) > 20))) {
					ApplyEffectToObject(0, efDamage, oDarthNihilus, 0.0);
				}
			}
			break;
		case 13:
			{
				effect efStun = EffectStunned();
				ApplyEffectToObject(1, efStun, oDarthNihilus, 8.0);
			}
			break;
		case 14:
			AssignCommand(oVisasMarr, ClearAllActions());
			ChangeToStandardFaction(oVisasMarr, 5);
			RemovePartyMember(9);
			SetLightsaberPowered(oVisasMarr, 1, 0, 1);
			SetNPCSelectability(9, 0);
			SetOrientOnClick(oVisasMarr, 0);
			SetMinOneHP(oVisasMarr, 1);
			{
				effect effect13 = EffectDamage(GetMaxHitPoints(oVisasMarr), 8, 0);
				ApplyEffectToObject(2, effect13, oVisasMarr, 0.0);
			}
			break;
		case 15:
			DelayCommand(1.0, SetDialogPlaceableCamera(10));
			DelayCommand(2.6, SetLightsaberPowered(oVisasMarr, 1, 0, 1));
			break;
		case 16:
			AssignCommand(oPC, ClearAllEffects());
			AssignCommand(oMand, ClearAllEffects());
			DelayCommand(1.0, SetLightsaberPowered(oDarthNihilus, 1, 1, 1));
			DelayCommand(1.5, sub1());
			DelayCommand(1.6, CreatureFlourishWeapon(oPC));
			AssignCommand(oMand, sub2(intGLOB_114, 0));
			AssignCommand(oDarthNihilus, sub2(intGLOB_114, 0));
			ChangeToStandardFaction(oDarthNihilus, 5);
			SetLockOrientationInDialog(oPC, 0);
			break;
		case 17:
			DelayCommand(1.0, SetLightsaberPowered(oPC, 1, 0, 1));
			DelayCommand(1.0, SetLightsaberPowered(oDarthNihilus, 1, 0, 1));
			break;
		case 18:
			AssignCommand(oVisasMarr, sub2(intGLOB_114, 1));
			AssignCommand(oMand, sub2(intGLOB_114, 1));
			AssignCommand(oDarthNihilus, sub2(intGLOB_114, 1));
			SetGlobalFadeIn(3.0, 2.0, 0.0, 0.0, 0.0);
			AssignCommand(oMand, ClearAllEffects());
			AssignCommand(oMand, ClearAllActions());
			DelayCommand(1.0, AssignCommand(oMand, ActionJumpToObject(GetObjectByTag("sp_mand", 0), 1)));
			AssignCommand(oVisasMarr, ClearAllEffects());
			AssignCommand(oVisasMarr, ClearAllActions());
			DelayCommand(1.0, AssignCommand(oVisasMarr, ActionJumpToObject(GetObjectByTag("sp_visas", 0), 1)));
			AssignCommand(GetFirstPC(), ClearAllEffects());
			AssignCommand(GetFirstPC(), ClearAllActions());
			DelayCommand(1.0, AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("wp_pc", 0), 1)));
			DelayCommand(1.0, AssignCommand(oDarthNihilus, ActionJumpToLocation(GetLocation(GetObjectByTag("sp_nihilus", 0)))));
			DelayCommand(1.0, AssignCommand(oDarthNihilus, SetFacing(270.0)));
			SetLockOrientationInDialog(oDarthNihilus, 1);
			SetLocalBoolean(OBJECT_SELF, 51, 1);
			break;
		case 19:
			AssignCommand(oVisasMarr, sub2(intGLOB_114, 1));
			AssignCommand(oMand, sub2(intGLOB_114, 1));
			AssignCommand(oDarthNihilus, sub2(intGLOB_114, 1));
			DelayCommand(0.4, AssignCommand(GetFirstPC(), ActionMoveToLocation(GetLocation(GetObjectByTag("wp_pc", 0)), 0)));
			DelayCommand(0.4, AssignCommand(oVisasMarr, ClearAllActions()));
			DelayCommand(0.4, AssignCommand(oVisasMarr, ActionForceMoveToLocation(GetLocation(GetObjectByTag("wp_visas", 0)), 0, 30.0)));
			DelayCommand(0.4, AssignCommand(oMand, ActionMoveToObject(GetObjectByTag("wp_mand", 0), 0, 1.0)));
			ExecuteScript("a_sealbridge", OBJECT_SELF, 0xFFFFFFFF);
			break;
		case 20:
			SetLightsaberPowered(oVisasMarr, 1, 1, 1);
			break;
		case 21:
			break;
		case 22:
			AssignCommand(oPC, ClearAllEffects());
			AssignCommand(oPC, ActionPlayAnimation(4, 1.0, (-1.0)));
			AssignCommand(oVisasMarr, ClearAllEffects());
			AssignCommand(oMand, ClearAllEffects());
			{
				effect effect15 = EffectBeam(2029, oDarthNihilus, 0, 0);
				effect effect17 = EffectVisualEffect(1009, 0);
				DelayCommand(2.0, ApplyEffectToObject(1, effect17, oPC, 2.0));
				DelayCommand(2.0, ApplyEffectToObject(1, effect15, oPC, 2.0));
				DelayCommand(2.0, AssignCommand(oDarthNihilus, ActionPlayAnimation(121, 1.0, 2.0)));
				DelayCommand(4.0, AssignCommand(oDarthNihilus, ClearAllActions()));
			}
			break;
		case 23:
			DelayCommand(1.0, AssignCommand(oVisasMarr, ActionDoCommand(SetFacing(270.0))));
			DelayCommand(1.0, AssignCommand(oPC, ActionDoCommand(SetFacing(90.0))));
			DelayCommand(1.4, AssignCommand(oVisasMarr, SetLightsaberPowered(oVisasMarr, 1, 1, 1)));
			DelayCommand(2.0, CreatureFlourishWeapon(oVisasMarr));
			DelayCommand(2.0, AssignCommand(oPC, SetLightsaberPowered(oPC, 1, 1, 1)));
			DelayCommand(2.0, CreatureFlourishWeapon(oPC));
			AssignCommand(oVisasMarr, sub2(intGLOB_114, 0));
			AssignCommand(oMand, sub2(intGLOB_114, 0));
			AssignCommand(oDarthNihilus, sub2(intGLOB_114, 0));
			SetLockOrientationInDialog(oPC, 0);
			break;
		case 24:
			DestroyObject(oDarthNihilus, 0.0, 0, 0.0, 0);
			CreateObject(1, "zbyls_nih", GetLocation(GetObjectByTag("sp_nihilus", 0)), 0);
			AssignCommand(oMand, sub2(intGLOB_114, 1));
			AssignCommand(oVisasMarr, ClearAllActions());
			AssignCommand(oVisasMarr, ClearAllEffects());
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(oPC, ClearAllEffects());
			RemovePartyMember(2);
			ChangeToStandardFaction(oMand, 5);
			DelayCommand(0.1, ApplyEffectToObject(2, EffectStunned(), oMand, 0.0));
			RemovePartyMember(9);
			SetNPCSelectability(9, 0);
			SetOrientOnClick(oVisasMarr, 0);
			ChangeToStandardFaction(oVisasMarr, 1);
			SetMinOneHP(oVisasMarr, 0);
			AssignCommand(oVisasMarr, sub2(intGLOB_114, 0));
			SetGlobalNumber("000_Visas_Dead", 1);
			SetGlobalFadeIn(0.8, 1.5, 0.0, 0.0, 0.0);
			break;
		case 25:
			AssignCommand(oPC, ClearAllEffects());
			AssignCommand(oMand, ClearAllEffects());
			AddAvailableNPCByObject(2, GetObjectByTag("Mand", 0));
			AddPartyMember(2, GetObjectByTag("Mand", 0));
			AssignCommand(oMand, sub2(intGLOB_114, 0));
			SetLockOrientationInDialog(oPC, 0);
			break;
	}
}