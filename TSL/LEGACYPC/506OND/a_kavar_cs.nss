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
void sub4(object objectParam1, int intParam2);
void sub3(object objectParam1, talent talentParam2, int intParam3);
void sub2(object objectParam1, object objectParam2, talent talentParam3, int intParam4);
void sub1(object objectParam1, int intParam2);

void sub4(object objectParam1, int intParam2) {
	if ((!GetIsObjectValid(objectParam1))) {
		return;
	}
	SetCommandable(1, objectParam1);
	SetLocalBoolean(objectParam1, intGLOB_114, 0);
	ChangeToStandardFaction(objectParam1, intParam2);
	SetMinOneHP(objectParam1, 0);
}

void sub3(object objectParam1, talent talentParam2, int intParam3) {
	if (intParam3) {
		SetMinOneHP(objectParam1, 0);
		ApplyEffectToObject(0, EffectDamage((GetCurrentHitPoints(objectParam1) - 1), 8, 0), objectParam1, 0.0);
	}
	ApplyEffectToObject(1, EffectAssuredHit(), OBJECT_SELF, 3.0);
	ActionUseTalentOnObject(talentParam2, objectParam1);
}

void sub2(object objectParam1, object objectParam2, talent talentParam3, int intParam4) {
	if (((!GetIsObjectValid(objectParam1)) || (!GetIsObjectValid(objectParam2)))) {
		return;
	}
	AssignCommand(objectParam1, ActionDoCommand(sub3(objectParam2, talentParam3, intParam4)));
}

void sub1(object objectParam1, int intParam2) {
	if ((!GetIsObjectValid(objectParam1))) {
		return;
	}
	SetCommandable(1, objectParam1);
	AssignCommand(objectParam1, ClearAllActions());
	SetLocalBoolean(objectParam1, intGLOB_114, 1);
	AurPostString(("TURNING AI OFF - " + GetTag(objectParam1)), 5, 5, 5.0);
	ChangeToStandardFaction(objectParam1, intParam2);
	SetMinOneHP(objectParam1, 1);
}

void main() {
	int nParam1 = GetScriptParameter(1);
	object oNpc_kavar = GetObjectByTag("Kavar", 0);
	object oVa_sold_hvyThrone2 = GetObjectByTag("va_sold_hvyThrone2", 0);
	object object5 = GetObjectByTag("va_sold_hvyThrone2", 1);
	switch (nParam1) {
		case 0:
			{
				object oWp_meditation_pc = GetObjectByTag("wp_meditation_pc", 0);
				if ((!GetIsObjectValid(oNpc_kavar))) {
				oNpc_kavar = CreateObject(1, "npc_kavar", GetLocation(oWp_meditation_pc), 0);
				}
				SetLocalBoolean(oNpc_kavar, 40, 0);
				sub1(oNpc_kavar, 2);
				sub1(oVa_sold_hvyThrone2, 4);
				sub1(object5, 4);
				AssignCommand(oNpc_kavar, ClearAllActions());
				AssignCommand(oNpc_kavar, ActionJumpToLocation(GetLocation(oWp_meditation_pc)));
				AssignCommand(oNpc_kavar, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_kavar_fight1", 0)), 1));
				AssignCommand(oVa_sold_hvyThrone2, ClearAllActions());
				AssignCommand(oVa_sold_hvyThrone2, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_throne_kavar1", 0)), 1));
				DelayCommand(7.0, AssignCommand(oVa_sold_hvyThrone2, ActionDoCommand(CreatureFlourishWeapon(oVa_sold_hvyThrone2))));
				AssignCommand(object5, ClearAllActions());
				AssignCommand(object5, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_throne_kavar2", 0)), 1));
				DelayCommand(7.0, AssignCommand(object5, ActionDoCommand(CreatureFlourishWeapon(object5))));
				DelayCommand(5.0, SetLightsaberPowered(oNpc_kavar, 1, 1, 1));
				SetCreatureAILevel(oNpc_kavar, 3);
				SetCreatureAILevel(oVa_sold_hvyThrone2, 3);
				SetCreatureAILevel(object5, 3);
			}
			break;
		case 1:
			AssignCommand(oNpc_kavar, ActionDoCommand(sub2(oNpc_kavar, oVa_sold_hvyThrone2, TalentFeat(91), 1)));
			AssignCommand(oNpc_kavar, ActionDoCommand(sub2(oNpc_kavar, object5, TalentFeat(83), 1)));
			break;
		case 2:
			sub4(oNpc_kavar, 2);
			AssignCommand(oNpc_kavar, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_end_kavar", 0)), 0));
			SetMinOneHP(oNpc_kavar, 1);
			break;
	}
}

