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
string sub1(int intParam1);

void sub2(int intParam1, int intParam2) {
	SetLocalBoolean(OBJECT_SELF, intParam1, intParam2);
}

string sub1(int intParam1) {
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

void main() {
	object oWP_MASTER_CUT_PC1;
	location location1;
	object oInvisoKreia = GetObjectByTag("InvisoKreia", 0);
	object oZezkaiel = OBJECT_INVALID;
	int nLocal = GetLocalNumber(oInvisoKreia, 12);
	object oFlophouse_Secret = OBJECT_INVALID;
	switch (nLocal) {
		case 1:
			AurPostString("Kavar is Master.", 1, 1, 3.0);
			oZezkaiel = GetObjectByTag("kavar", 0);
			SetGlobalNumber("000_Kavar_Dead", 1);
			AddJournalQuestEntry("LostJedi", 55, 1);
			break;
		case 2:
			AurPostString("Vrook is Master.", 1, 1, 3.0);
			oZezkaiel = GetObjectByTag("npc_vrook", 0);
			SetGlobalNumber("000_Vrook_Dead", 1);
			SetAreaUnescapable(0);
			AddJournalQuestEntry("LostJedi", 75, 1);
			oFlophouse_Secret = GetObjectByTag("ao_door", 0);
			if (GetIsObjectValid(oFlophouse_Secret)) {
				SetLocked(oFlophouse_Secret, 0);
			}
			oFlophouse_Secret = GetObjectByTag("master_door1", 0);
			if (GetIsObjectValid(oFlophouse_Secret)) {
				SetLocked(oFlophouse_Secret, 0);
			}
			oFlophouse_Secret = GetObjectByTag("master_door2", 0);
			if (GetIsObjectValid(oFlophouse_Secret)) {
				SetLocked(oFlophouse_Secret, 0);
			}
			break;
		case 3:
			AurPostString("Zez-Kai Ell is Master.", 1, 1, 3.0);
			oZezkaiel = GetObjectByTag("zezkaiel", 0);
			SetGlobalNumber("000_ZezKaiEll_Dead", 1);
			AddJournalQuestEntry("LostJedi", 43, 1);
			SetAreaUnescapable(0);
			oFlophouse_Secret = GetObjectByTag("Flophouse_Secret", 0);
			if (GetIsObjectValid(oFlophouse_Secret)) {
				SetLocked(oFlophouse_Secret, 0);
				AssignCommand(oFlophouse_Secret, ActionOpenDoor(oFlophouse_Secret));
			}
			break;
	}
	AddBonusForcePoints(GetFirstPC(), 25);
	int int7 = GetLocalNumber(oInvisoKreia, 13);
	int int9 = GetLocalNumber(oInvisoKreia, 14);
	object object14;
	object object15;
	if ((int7 != 99)) {
		AurPostString(IntToString(int7), 1, 2, 7.0);
		string string2 = sub1(int7);
		object14 = GetObjectByTag(string2, 0);
		if ((!GetIsObjectValid(object14))) {
			AurPostString("MAJOR ERROR!!! Unable to re-add party member after killing Jedi Master.", 10, 10, 7.0);
		}
		else {
			AddPartyMember(int7, object14);
			SetCommandable(1, object14);
			ChangeToStandardFaction(object14, 2);
			AssignCommand(object14, ClearAllActions());
			AssignCommand(object14, sub2(intGLOB_114, 0));
		}
	}
	else {
		AurPostString("No PC2 on Kill.", 1, 2, 7.0);
	}
	if ((int9 != 99)) {
		AurPostString(IntToString(int9), 1, 3, 7.0);
		string string5 = sub1(int9);
		object15 = GetObjectByTag(string5, 0);
		if ((!GetIsObjectValid(object15))) {
			AurPostString("MAJOR ERROR!!! Unable to re-add party member after killing Jedi Master.", 10, 10, 7.0);
		}
		else {
			AddPartyMember(int9, object15);
			SetCommandable(1, object15);
			ChangeToStandardFaction(object15, 2);
			AssignCommand(object15, ClearAllActions());
			AssignCommand(object15, sub2(intGLOB_114, 0));
		}
	}
	else {
		AurPostString("No PC3 on Kill.", 1, 3, 7.0);
	}
	if (GetIsObjectValid(oZezkaiel)) {
		AurPostString("Starting Kill cutscene.", 1, 4, 2.0);
		ActionPauseConversation();
		AssignCommand(oZezkaiel, ClearAllActions());
		AssignCommand(GetFirstPC(), ClearAllActions());
		oWP_MASTER_CUT_PC1 = GetWaypointByTag("WP_MASTER_CUT_MASTER");
		location1 = GetLocation(oWP_MASTER_CUT_PC1);
		AssignCommand(oZezkaiel, JumpToLocation(location1));
		object oPC = GetFirstPC();
		if ((!GetIsObjectValid(oPC))) {
			AurPostString("Could not find Player's Character to set up cutscene positioning.", 10, 10, 2.0);
			return;
		}
		oWP_MASTER_CUT_PC1 = GetWaypointByTag("WP_MASTER_CUT_PC1");
		location1 = GetLocation(oWP_MASTER_CUT_PC1);
		AssignCommand(oPC, JumpToLocation(location1));
		effect efDeath = EffectDeath(0, 1, 0);
		effect efBeam = EffectBeam(2026, oPC, 1, 0);
		effect efVisual = EffectVisualEffect(1006, 0);
		effect efHeal = EffectHeal((GetMaxHitPoints(oZezkaiel) - 1));
		SetMinOneHP(oZezkaiel, 0);
		ApplyEffectToObject(0, efHeal, oZezkaiel, 0.0);
		AssignCommand(oZezkaiel, PlayAnimation(13, 1.0, (-1.0)));
		DelayCommand(0.5, AssignCommand(oPC, PlayAnimation(124, 0.5, 0.0)));
		DelayCommand(1.0, ApplyEffectToObject(1, efBeam, oZezkaiel, 2.33));
		DelayCommand(1.0, AssignCommand(oZezkaiel, ClearAllActions()));
		DelayCommand(1.0, AssignCommand(oZezkaiel, PlayAnimation(45, 1.0, (-1.0))));
		DelayCommand(1.0, ApplyEffectToObject(0, efVisual, oZezkaiel, 0.0));
		DelayCommand(2.0, ApplyEffectToObject(0, efVisual, oZezkaiel, 0.0));
		DelayCommand(3.0, ApplyEffectToObject(0, efDeath, oZezkaiel, 0.0));
		DelayCommand(5.0, ActionResumeConversation());
	}
	else {
		AurPostString("Could not find Master to set up cutscene positioning.", 10, 10, 2.0);
	}
}

