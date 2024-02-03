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
void sub3();
void sub2(object objectParam1);
object sub1(string stringParam1, int intParam2);

void sub3() {
	object oN_mand_train003;
	object object2;
	oN_mand_train003 = GetObjectByTag("CircleMandalorian", 0);
	if ((oN_mand_train003 == OBJECT_INVALID)) {
		oN_mand_train003 = CreateObject(1, "n_mand_train003", GetLocation(GetObjectByTag("wp_circle_fighter1", 0)), 0);
		object2 = CreateObject(1, "n_mand_train003", GetLocation(GetObjectByTag("wp_circle_fighter2", 0)), 0);
		SetLockOrientationInDialog(oN_mand_train003, 1);
		SetLockOrientationInDialog(object2, 1);
		SetCreatureAILevel(oN_mand_train003, 3);
		SetCreatureAILevel(object2, 3);
		ChangeToStandardFaction(oN_mand_train003, 22);
		ChangeToStandardFaction(object2, 22);
		DelayCommand(1.0, AssignCommand(oN_mand_train003, ActionAttack(object2, 0)));
		DelayCommand(1.0, AssignCommand(object2, ActionAttack(oN_mand_train003, 0)));
	}
}

void sub2(object objectParam1) {
	ApplyEffectToObject(0, EffectHeal((GetMaxHitPoints(objectParam1) - GetCurrentHitPoints(objectParam1))), objectParam1, 0.0);
}

object sub1(string stringParam1, int intParam2) {
	string string1;
	if ((intParam2 == 0)) {
		string1 = ("sp_" + stringParam1);
	}
	else {
		string1 = (("sp_" + stringParam1) + IntToString(intParam2));
	}
	return CreateObject(1, stringParam1, GetLocation(GetObjectByTag(string1, 0)), 0);
}

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	if ((GetGlobalNumber("403DXN_TS_Telecomp") == 1)) {
		PlayRoomAnimation("403dxnd", 2);
	}
	else {
		PlayRoomAnimation("403dxnd", 1);
	}
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oTo_402 = GetObjectByTag("To_402", 0);
	if ((GetGlobalNumber("403DXN_Camp_Visited") == 0)) {
		SetGlobalNumber("403DXN_Camp_Visited", 1);
		AssignCommand(GetObjectByTag("MEETMANDALOREPH", 0), ActionStartConversation(oEntering, "meetm_cs", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	if (((GetGlobalNumber("403DXN_Missing_Mand") == 3) && (!GetLocalBoolean(GetObjectByTag("xarga", 0), 30)))) {
		CreateObject(1, "npc_kumus", GetLocation(GetWaypointByTag("wp_kumus")), 0);
		SetLocalBoolean(GetObjectByTag("xarga", 0), 30, 1);
	}
	int nGlobal = GetGlobalNumber("402DXN_Davrel_Fate");
	object oKreia = GetObjectByTag("npc_davrel", 0);
	if (((nGlobal > 0) && (!GetLocalBoolean(GetObjectByTag("To_402", 0), 50)))) {
		if (GetIsObjectValid(oKreia)) {
			AssignCommand(oKreia, ActionJumpToObject(GetObjectByTag("wp_davrel_away", 0), 1));
		}
		SetLocalBoolean(GetObjectByTag("To_402", 0), 50, 1);
	}
	if (((nGlobal == 4) && (!GetLocalBoolean(GetObjectByTag("To_402", 0), 51)))) {
		AssignCommand(oKreia, ActionJumpToObject(GetObjectByTag("wp_davrel_back", 0), 1));
		SetLocalBoolean(GetObjectByTag("To_402", 0), 51, 1);
		SetLocalBoolean(oKreia, 49, 1);
	}
	if (((nGlobal > 4) && (!GetLocalBoolean(GetObjectByTag("To_402", 0), 52)))) {
		DestroyObject(oKreia, 0.0, 1, 0.0, 0);
		SetLocalBoolean(GetObjectByTag("To_402", 0), 52, 1);
	}
	oKreia = GetObjectByTag("npc_kelborn", 0);
	if (((((!GetLocalBoolean(oTo_402, 40)) && GetIsObjectValid(GetFirstPC())) && (!GetIsObjectValid(oKreia))) && (GetJournalEntry("scouthunt") == 99))) {
		sub1("npc_kelborn", 0);
		SetLocalBoolean(oTo_402, 40, 1);
	}
	int int16;
	object oWp_basilisk_zuka;
	if ((GetGlobalNumber("502OND_End_First") > 0)) {
		if ((!GetLocalBoolean(GetObjectByTag("From_402DXN", 0), 53))) {
			SetLocalBoolean(GetObjectByTag("From_402DXN", 0), 53, 1);
			DestroyObject(GetObjectByTag("npc_mandy_sarge", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("npc_tagren", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("tr_sith_att_1", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("tr_sith_att_2", 0), 0.0, 0, 0.0, 0);
			int16 = 0;
			while ((int16 <= 6)) {
				DestroyObject(GetObjectByTag("CircleMandalorian", int16), 0.0, 0, 0.0, 0);
				DestroyObject(GetObjectByTag("TrainingMandalorian", int16), 0.0, 0, 0.0, 0);
				(int16++);
			}
			int16 = 0;
			while ((int16 < 20)) {
				DestroyObject(GetObjectByTag("sith_ass_403", int16), 0.0, 0, 0.0, 0);
				DestroyObject(GetObjectByTag("sith_ass_405", int16), 0.0, 0, 0.0, 0);
				DestroyObject(GetObjectByTag("sith_ass_406", int16), 0.0, 0, 0.0, 0);
				(int16++);
			}
			oKreia = GetObjectByTag("npc_kelborn", 0);
			oWp_basilisk_zuka = GetObjectByTag("wp_end_kelborn", 0);
			if (GetIsObjectValid(oKreia)) {
				AssignCommand(oKreia, ActionJumpToObject(oWp_basilisk_zuka, 1));
			}
			else {
				CreateObject(1, "npc_kelborn", GetLocation(oWp_basilisk_zuka), 0);
			}
			sub2(oKreia);
			oKreia = GetObjectByTag("npc_davrel", 0);
			oWp_basilisk_zuka = GetObjectByTag("wp_davrel_back", 0);
			AssignCommand(oKreia, ActionJumpToObject(oWp_basilisk_zuka, 1));
			sub2(oKreia);
			oKreia = GetObjectByTag("npc_bralor", 0);
			oWp_basilisk_zuka = GetObjectByTag("wp_circle_cnpc2", 0);
			AssignCommand(oKreia, ActionJumpToObject(oWp_basilisk_zuka, 1));
			sub2(oKreia);
			oKreia = GetObjectByTag("kumus", 0);
			oWp_basilisk_zuka = GetObjectByTag("wp_kumus", 0);
			AssignCommand(oKreia, ActionJumpToObject(oWp_basilisk_zuka, 1));
			sub2(oKreia);
			oKreia = GetObjectByTag("xarga", 0);
			oWp_basilisk_zuka = GetObjectByTag("sp_sith_ass_4038", 0);
			AssignCommand(oKreia, ActionJumpToObject(oWp_basilisk_zuka, 1));
			sub2(oKreia);
			oKreia = GetObjectByTag("npc_kex", 0);
			oWp_basilisk_zuka = GetObjectByTag("wp_kex", 0);
			AssignCommand(oKreia, ActionJumpToObject(oWp_basilisk_zuka, 1));
			sub2(oKreia);
			oKreia = GetObjectByTag("man_guide", 0);
			oWp_basilisk_zuka = GetObjectByTag("wp_guide", 0);
			AssignCommand(oKreia, ActionJumpToObject(oWp_basilisk_zuka, 1));
			sub2(oKreia);
			oKreia = GetObjectByTag("zuka", 0);
			oWp_basilisk_zuka = GetObjectByTag("wp_zuka_move2", 0);
			AssignCommand(oKreia, ActionJumpToObject(oWp_basilisk_zuka, 1));
			sub2(oKreia);
			SetLocalBoolean(oTo_402, 56, 1);
		}
	}
	else {
		sub3();
	}
	if ((GetLocalBoolean(oTo_402, 56) && GetIsObjectValid(GetFirstPC()))) {
		SetLocalBoolean(oTo_402, 56, 0);
		DestroyObject(GetObjectByTag("g_mandalore", 0), 0.0, 1, 0.0, 1);
		oKreia = GetObjectByTag("mand", 0);
		SetNPCSelectability(2, 1);
		AssignCommand(oKreia, ClearAllActions());
		DelayCommand(0.1, AssignCommand(oKreia, ActionStartConversation(GetFirstPC(), "mand_cs2", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
	if ((GetGlobalNumber("403DXN_Second_Visit") == 1)) {
		if ((!GetLocalBoolean(GetObjectByTag("From_402DXN", 0), 54))) {
			SetLocalBoolean(GetObjectByTag("From_402DXN", 0), 54, 1);
			int int24 = 0;
			int24 = 0;
			while ((int24 < 12)) {
				if ((GetNPCSelectability(int24) == 1)) {
					RemoveNPCFromPartyToBase(int24);
				}
				(int24++);
			}
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetGlobalFadeIn(0.5, 1.5, 0.0, 0.0, 0.0);
			oKreia = GetObjectByTag("atton", 0);
			oWp_basilisk_zuka = GetObjectByTag("wp_end_atton", 0);
			if (GetIsObjectValid(oKreia)) {
				AssignCommand(oKreia, ActionJumpToObject(oWp_basilisk_zuka, 1));
			}
			else {
				SpawnAvailableNPC(0, GetLocation(oWp_basilisk_zuka));
			}
			if ((GetNPCSelectability(7) == 1)) {
				AurPostString("Mira is in party", 5, 5, 5.0);
				oKreia = GetObjectByTag("mira", 0);
				oWp_basilisk_zuka = GetObjectByTag("wp_end_mira", 0);
				if (GetIsObjectValid(oKreia)) {
					AssignCommand(oKreia, ActionJumpToObject(oWp_basilisk_zuka, 1));
				}
				else {
					SpawnAvailableNPC(7, GetLocation(oWp_basilisk_zuka));
				}
			}
			if ((GetNPCSelectability(4) == 1)) {
				oKreia = GetObjectByTag("handmaiden", 0);
				oWp_basilisk_zuka = GetObjectByTag("wp_end_hand", 0);
				if (GetIsObjectValid(oKreia)) {
					AssignCommand(oKreia, ActionJumpToObject(oWp_basilisk_zuka, 1));
				}
				else {
					SpawnAvailableNPC(4, GetLocation(oWp_basilisk_zuka));
				}
			}
			if ((GetNPCSelectability(11) == 1)) {
				oKreia = GetObjectByTag("disciple", 0);
				oWp_basilisk_zuka = GetObjectByTag("wp_end_hand", 0);
				if (GetIsObjectValid(oKreia)) {
					AssignCommand(oKreia, ActionJumpToObject(oWp_basilisk_zuka, 1));
				}
				else {
					SpawnAvailableNPC(11, GetLocation(oWp_basilisk_zuka));
				}
			}
			if ((GetNPCSelectability(1) == 1)) {
				oKreia = GetObjectByTag("baodur", 0);
				oWp_basilisk_zuka = GetObjectByTag("wp_end_bao", 0);
				if (GetIsObjectValid(oKreia)) {
					AssignCommand(oKreia, ActionJumpToObject(oWp_basilisk_zuka, 1));
				}
				else {
					SpawnAvailableNPC(1, GetLocation(oWp_basilisk_zuka));
				}
			}
			if ((GetNPCSelectability(9) == 1)) {
				oKreia = GetObjectByTag("VisasMarr", 0);
				oWp_basilisk_zuka = GetObjectByTag("wp_end_visas", 0);
				if (GetIsObjectValid(oKreia)) {
					AssignCommand(oKreia, ActionJumpToObject(oWp_basilisk_zuka, 1));
				}
				else {
					SpawnAvailableNPC(9, GetLocation(oWp_basilisk_zuka));
				}
			}
			if ((GetNPCSelectability(5) == 1)) {
				oKreia = GetObjectByTag("HK47", 0);
				oWp_basilisk_zuka = GetObjectByTag("wp_end_hk", 0);
				if (GetIsObjectValid(oKreia)) {
					AssignCommand(oKreia, ActionJumpToObject(oWp_basilisk_zuka, 1));
				}
				else {
					SpawnAvailableNPC(5, GetLocation(oWp_basilisk_zuka));
				}
			}
			if ((GetNPCSelectability(8) == 1)) {
				oKreia = GetObjectByTag("T3M4", 0);
				oWp_basilisk_zuka = GetObjectByTag("wp_end_t3", 0);
				if (GetIsObjectValid(oKreia)) {
					AssignCommand(oKreia, ActionJumpToObject(oWp_basilisk_zuka, 1));
				}
				else {
					SpawnAvailableNPC(8, GetLocation(oWp_basilisk_zuka));
				}
			}
			if ((GetNPCSelectability(10) == 1)) {
				oKreia = GetObjectByTag("Hanharr", 0);
				oWp_basilisk_zuka = GetObjectByTag("wp_end_mira", 0);
				if (GetIsObjectValid(oKreia)) {
					AssignCommand(oKreia, ActionJumpToObject(oWp_basilisk_zuka, 1));
				}
				else {
					SpawnAvailableNPC(10, GetLocation(oWp_basilisk_zuka));
				}
			}
			if ((GetNPCSelectability(3) == 1)) {
				oKreia = GetObjectByTag("G0T0", 0);
				oWp_basilisk_zuka = GetObjectByTag("wp_end_goto", 0);
				if (GetIsObjectValid(oKreia)) {
					AssignCommand(oKreia, ActionJumpToObject(oWp_basilisk_zuka, 1));
				}
				else {
					SpawnAvailableNPC(3, GetLocation(oWp_basilisk_zuka));
				}
			}
			oKreia = GetObjectByTag("mand", 0);
			oWp_basilisk_zuka = GetObjectByTag("wp_end_mand", 0);
			if (GetIsObjectValid(oKreia)) {
				AssignCommand(oKreia, ActionJumpToObject(oWp_basilisk_zuka, 1));
			}
			else {
				SpawnAvailableNPC(2, GetLocation(oWp_basilisk_zuka));
			}
			oKreia = GetObjectByTag("kreia", 0);
			oWp_basilisk_zuka = GetObjectByTag("wp_end_kreia", 0);
			if (GetIsObjectValid(oKreia)) {
				AssignCommand(oKreia, ActionJumpToObject(oWp_basilisk_zuka, 1));
			}
			else {
				SpawnAvailableNPC(6, GetLocation(oWp_basilisk_zuka));
			}
			oWp_basilisk_zuka = GetObjectByTag("wp_end_pc", 0);
			AssignCommand(GetFirstPC(), ClearAllActions());
			AssignCommand(GetFirstPC(), ActionJumpToObject(oWp_basilisk_zuka, 1));
			oKreia = GetObjectByTag("npc_kelborn", 0);
			oWp_basilisk_zuka = GetObjectByTag("wp_end_kelborn", 0);
			if (GetIsObjectValid(oKreia)) {
				AssignCommand(oKreia, ActionJumpToObject(oWp_basilisk_zuka, 1));
			}
			else {
				CreateObject(1, "npc_kelborn", GetLocation(oWp_basilisk_zuka), 0);
			}
			oKreia = GetObjectByTag("npc_kelborn", 0);
			DelayCommand(0.1, AssignCommand(oKreia, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
		}
	}
	oKreia = GetObjectByTag("zuka", 0);
	if ((GetGlobalNumber("411DXN_Complete") == 1)) {
		if ((((!GetLocalBoolean(GetObjectByTag("From_402DXN", 0), 55)) && GetIsObjectValid(oKreia)) && GetIsObjectValid(GetFirstPC()))) {
			SetGlobalFadeIn(0.0, 2.0, 0.0, 0.0, 0.0);
			AssignCommand(GetFirstPC(), ClearAllEffects());
			AurPostString("Zuka return from 411DXN starting", 5, 5, 5.0);
			SetLocalBoolean(GetObjectByTag("From_402DXN", 0), 55, 1);
			oWp_basilisk_zuka = GetObjectByTag("wp_basilisk_zuka", 0);
			AssignCommand(oKreia, ClearAllActions());
			DelayCommand(0.1, AssignCommand(oKreia, ActionJumpToObject(oWp_basilisk_zuka, 1)));
			SetLocalBoolean(oKreia, 45, 1);
			SetLocalBoolean(oKreia, 55, 1);
			DelayCommand(1.0, AssignCommand(oKreia, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			DelayCommand(1.1, AssignCommand(oKreia, ActionMoveToObject(GetObjectByTag("wp_bask_zuka", 0), 0, 1.0)));
			DelayCommand(1.1, AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("wp_bask_pc", 0), 0, 1.0)));
			int int53 = 0;
			int53 = 0;
			while ((int53 < 12)) {
				if ((((int53 != GetGlobalNumber("403DXN_PARTY2_NPC1")) && (int53 != GetGlobalNumber("403DXN_PARTY2_NPC2"))) && (int53 != GetGlobalNumber("403DXN_PARTY2_NPC3")))) {
					SetNPCSelectability(int53, 1);
				}
				else {
					SetNPCSelectability(int53, 0);
				}
				(int53++);
			}
		}
	}
}

