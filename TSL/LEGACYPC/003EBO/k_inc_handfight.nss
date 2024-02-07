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
void sub4();
string sub3(int intParam1);
object sub2(int intParam1);
void sub1();

void sub4() {
	AurPostString("Circle_Lose: Handmaiden loses fight against PC", 15, 15, 5.0);
	object oHandmaiden = GetObjectByTag("Handmaiden", 0);
	SetLocalBoolean(oHandmaiden, 28, 0);
	SetLocalBoolean(oHandmaiden, 26, 1);
	oHandmaiden = sub2(0);
}

string sub3(int intParam1) {
	switch (intParam1) {
		case 0:
			return "atton";
			break;
		case 1:
			return "baodur";
			break;
		case 2:
			return "mand";
			break;
		case 11:
			return "disciple";
			break;
		case 3:
			return "g0t0";
			break;
		case 4:
			return "handmaiden";
			break;
		case 10:
			return "hanharr";
			break;
		case 5:
			return "hk47";
			break;
		case 6:
			return "kreia";
			break;
		case 7:
			return "mira";
			break;
		case 8:
			return "t3m4";
			break;
		case 9:
			return "visasmarr";
			break;
	}
	return "ERROR";
}

object sub2(int intParam1) {
	object oHandmaiden;
	object oPC = GetFirstPC();
	oHandmaiden = GetObjectByTag("Handmaiden", 0);
	SetMinOneHP(oPC, 0);
	SetMinOneHP(oHandmaiden, 0);
	effect efHeal = EffectHeal((GetMaxHitPoints(oPC) - GetCurrentHitPoints(oPC)));
	ApplyEffectToObject(0, efHeal, oPC, 0.0);
	effect effect3 = EffectHeal((GetMaxHitPoints(oHandmaiden) - GetCurrentHitPoints(oHandmaiden)));
	ApplyEffectToObject(0, effect3, oHandmaiden, 0.0);
	AssignCommand(oHandmaiden, ClearAllActions());
	AssignCommand(oHandmaiden, ClearAllEffects());
	AssignCommand(GetFirstPC(), ClearAllActions());
	AssignCommand(GetFirstPC(), ClearAllEffects());
	DelayCommand(1.1, AssignCommand(oHandmaiden, ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	object oWp_gspawn_handmaiden = GetObjectByTag("wp_gspawn_handmaiden", 0);
	DelayCommand(1.5, AssignCommand(oHandmaiden, ActionMoveToLocation(GetLocation(oWp_gspawn_handmaiden), 0)));
	DelayCommand(1.5, AssignCommand(oHandmaiden, ActionDoCommand(SetFacing(GetFacing(oWp_gspawn_handmaiden)))));
	SetForfeitConditions(0);
	object oCargoDoor = GetObjectByTag("CargoDoor", 0);
	AssignCommand(oCargoDoor, ActionOpenDoor(oCargoDoor));
	int int5 = 0;
	int5 = 0;
	while ((int5 < 12)) {
		ChangeToStandardFaction(GetObjectByTag(sub3(int5), 0), 2);
		(int5++);
	}
	AurPostString(("Hand Fights = " + IntToString(GetGlobalNumber("003EBO_Hand_Fight"))), 10, 10, 6.0);
	return oHandmaiden;
}

void sub1() {
	AurPostString("Circle_Win: Handmaiden wins fight against PC", 15, 15, 5.0);
	object oHandmaiden = GetObjectByTag("Handmaiden", 0);
	SetLocalBoolean(oHandmaiden, 28, 0);
	SetLocalBoolean(oHandmaiden, 29, 1);
	IncrementGlobalNumber("003EBO_Hand_Fight", 1);
	oHandmaiden = sub2(1);
}

void main() {
	int int1 = GetRunScriptVar();
	if ((int1 == 0)) {
		sub1();
	}
	else {
		sub4();
	}
}

