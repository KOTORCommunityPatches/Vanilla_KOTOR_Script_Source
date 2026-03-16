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
void sub6();
void sub5();
void sub4(int intParam1, int intParam2);
void sub3();
void sub2(object objectParam1, object objectParam2);
object sub1(int intParam1);

void sub6() {
	object object1 = sub1(1);
	object oPC = GetFirstPC();
	int nGlobal = GetGlobalNumber("262TEL_Echani_Fights");
	SetLocalBoolean(object1, 31, 1);
	SetGlobalNumber("262TEL_Echani_Fights", (nGlobal + 1));
	AurPostString(("Victory! " + IntToString((nGlobal + 1))), 5, 5, 5.0);
}

void sub5() {
	AurPostString("k_inc_262: Circle_Lose", 5, 5, 3.0);
	object object1 = sub1(0);
	object oPC = GetFirstPC();
	SetLocalBoolean(object1, 40, 1);
	SetLocalBoolean(object1, 50, 0);
	SetLocalBoolean(object1, 51, 1);
	SetLocalBoolean(object1, 52, 0);
	if ((GetGlobalNumber("262TEL_Echani_Fights") == 5)) {
		SetLocalBoolean(object1, 35, 1);
	}
}

void sub4(int intParam1, int intParam2) {
	SetLocalBoolean(OBJECT_SELF, intParam1, intParam2);
}

void sub3() {
	int int1;
	string string1;
	int nGlobal;
	object object1;
	int1 = 0;
	while ((int1 < GetGlobalNumber("403DXN_Battle_CNPCs"))) {
		nGlobal = GetGlobalNumber(("403DXN_Battle_CNPC" + IntToString(int1)));
		switch (nGlobal) {
			case 4:
				string1 = "handmaiden";
				break;
			case 3:
				string1 = "g0t0";
				break;
			case 2:
				string1 = "mand";
				break;
			case 1:
				string1 = "BaoDur";
				break;
			case 5:
				string1 = "hk47";
				break;
			case 0:
				string1 = "atton";
				break;
			case 6:
				string1 = "kreia";
				break;
			case 8:
				string1 = "t3m4";
				break;
			case 9:
				string1 = "visas";
				break;
			case 7:
				string1 = "mira";
				break;
			case 10:
				string1 = "hanharr";
				break;
			case 11:
				string1 = "disciple";
				break;
		}
		object1 = GetObjectByTag(string1, 0);
		AddPartyMember(nGlobal, object1);
		SetCommandable(1, object1);
		ChangeToStandardFaction(object1, 2);
		AssignCommand(object1, ClearAllActions());
		AssignCommand(object1, sub4(intGLOB_114, 0));
		AurPostString(("Restoring Party Member " + GetTag(object1)), 5, (3 + int1), 5.0);
		(int1++);
	}
}

void sub2(object objectParam1, object objectParam2) {
	DelayCommand(2.0, ApplyEffectToObject(0, EffectHeal((GetMaxHitPoints(objectParam1) - GetCurrentHitPoints(objectParam1))), objectParam1, 0.0));
	ChangeToStandardFaction(objectParam1, 5);
	AssignCommand(objectParam1, ClearAllActions());
	DelayCommand(1.0, AssignCommand(objectParam1, ClearAllActions()));
	DelayCommand(1.2, AssignCommand(objectParam1, ActionForceMoveToObject(objectParam2, 0, 1.0, 30.0)));
	DelayCommand(1.2, AssignCommand(objectParam1, ActionDoCommand(SetFacing(GetFacing(objectParam2)))));
}

object sub1(int intParam1) {
	object oSisterDojo;
	object oWp_dojo_sister1 = GetObjectByTag("wp_dojo_sister1", 0);
	object oPC = GetFirstPC();
	int int1;
	SetMinOneHP(oPC, 0);
	oSisterDojo = GetObjectByTag("SisterDojo", 0);
	sub2(oSisterDojo, oWp_dojo_sister1);
	DelayCommand(1.1, AssignCommand(oSisterDojo, ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	if ((GetGlobalNumber("262TEL_Echani_Fights") == 4)) {
		int int3 = 0;
		int3 = 0;
		while ((int3 < 1)) {
			{
				object oDojo = GetObjectByTag("Dojo", int3);
				oWp_dojo_sister1 = GetObjectByTag(("wp_dojo_sister" + IntToString(GetLocalNumber(OBJECT_SELF, 15))), 0);
				sub2(oDojo, oWp_dojo_sister1);
			}
			(int3++);
		}
	}
	else {
		if ((GetGlobalNumber("262TEL_Echani_Fights") == 5)) {
			int int6 = 0;
			int6 = 0;
			while ((int6 < 4)) {
				{
					object object10 = GetObjectByTag("Dojo", int6);
					oWp_dojo_sister1 = GetObjectByTag(("wp_dojo_sister" + IntToString(GetLocalNumber(OBJECT_SELF, 15))), 0);
					sub2(object10, oWp_dojo_sister1);
				}
				(int6++);
			}
		}
	}
	SetForfeitConditions(0);
	sub3();
	return oSisterDojo;
}

void main() {
	object oExiting = GetExitingObject();
	object object3;
	object oSisterDojo = GetObjectByTag("SisterDojo", 0);
	if (GetLocalBoolean(oSisterDojo, 30)) {
		AurPostString("Yo...", 5, 7, 5.0);
		if (GetIsPC(oExiting)) {
			SetLocalBoolean(oSisterDojo, 31, 0);
			sub1(0);
			SetLocalBoolean(oSisterDojo, 45, 0);
			AssignCommand(oSisterDojo, SurrenderToEnemies());
			CancelCombat(GetFirstPC());
			ChangeToStandardFaction(oSisterDojo, 5);
			AssignCommand(oSisterDojo, NoClicksFor(1.2));
			object oWp_dojo_handmaiden1 = GetObjectByTag("wp_dojo_handmaiden1", 0);
			DelayCommand(1.0, AssignCommand(oSisterDojo, ActionStartConversation(oExiting, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			DelayCommand(1.2, AssignCommand(oSisterDojo, ActionMoveToObject(oWp_dojo_handmaiden1, 0, 1.0)));
			DelayCommand(1.2, AssignCommand(oSisterDojo, ActionDoCommand(SetFacing(GetFacing(oWp_dojo_handmaiden1)))));
			sub5();
		}
		else {
			if (((GetTag(oExiting) != "SisterDojo") && (GetTag(oExiting) != "Dojo"))) {
				return;
			}
			object3 = oExiting;
			if ((!GetLocalBoolean(object3, 46))) {
				return;
			}
			SetLocalBoolean(object3, 46, 0);
			GiveXPToCreature(GetFirstPC(), ((GetLevelByPosition(1, object3) - 1) * 50));
			AssignCommand(object3, SurrenderToEnemies());
			AssignCommand(object3, NoClicksFor(1.2));
			ChangeToStandardFaction(object3, 5);
			if ((GetGlobalNumber("262TEL_Echani_Fights") >= 4)) {
				object oWp_dojo_sister1_defeat;
				if ((GetTag(object3) == "SisterDojo")) {
					oWp_dojo_sister1_defeat = GetObjectByTag("wp_dojo_sister1_defeat", 0);
				}
				else {
					oWp_dojo_sister1_defeat = GetObjectByTag(("wp_dojo_sister" + IntToString(GetLocalNumber(object3, 15))), 0);
				}
				IncrementGlobalNumber("262TEL_Echani_Killed", 1);
				DelayCommand(5.0, AssignCommand(object3, ClearAllActions()));
				DelayCommand(5.0, AssignCommand(object3, ActionForceMoveToObject(oWp_dojo_sister1_defeat, 0, 1.0, 30.0)));
				DelayCommand(5.0, AssignCommand(object3, ActionDoCommand(SetFacing(GetFacing(oWp_dojo_sister1_defeat)))));
				int nGlobal = GetGlobalNumber("262TEL_Echani_Killed");
				if (((GetGlobalNumber("262TEL_Echani_Fights") == 4) && (nGlobal == 2))) {
					sub6();
				}
				else {
					if (((GetGlobalNumber("262TEL_Echani_Fights") == 5) && (nGlobal == 5))) {
						sub6();
					}
				}
			}
			else {
				sub6();
			}
		}
	}
}

