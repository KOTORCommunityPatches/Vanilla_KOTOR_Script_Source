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
void sub3(int intParam1, int intParam2);
void sub2();
int sub1(string stringParam1);

void sub3(int intParam1, int intParam2) {
	SetLocalBoolean(OBJECT_SELF, intParam1, intParam2);
}

void sub2() {
	sub3(intGLOB_114, 1);
	ClearAllActions();
}

int sub1(string stringParam1) {
	if ((stringParam1 == "atton")) {
		return 0;
	}
	else {
		if ((stringParam1 == "baodur")) {
			return 1;
		}
		else {
			if ((stringParam1 == "mand")) {
				return 2;
			}
			else {
				if ((stringParam1 == "disciple")) {
					return 11;
				}
				else {
					if ((stringParam1 == "g0t0")) {
						return 3;
					}
					else {
						if ((stringParam1 == "handmaiden")) {
							return 4;
						}
						else {
							if ((stringParam1 == "hanharr")) {
								return 10;
							}
							else {
								if ((stringParam1 == "hk47")) {
									return 5;
								}
								else {
									if ((stringParam1 == "kreia")) {
										return 6;
									}
									else {
										if ((stringParam1 == "mira")) {
											return 7;
										}
										else {
											if ((stringParam1 == "t3m4")) {
												return 8;
											}
											else {
												if ((stringParam1 == "visasmarr")) {
													return 9;
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
	return (-1);
}

void main() {
	int nParam1 = GetScriptParameter(1);
	object oWP_MASTER_CUT_PC3;
	location location1;
	object oInvisoKreia = GetObjectByTag("InvisoKreia", 0);
	object oZezkaiel = OBJECT_INVALID;
	int nLocal = GetLocalNumber(oInvisoKreia, 16);
	if ((nLocal == 0)) {
		nLocal = GetLocalNumber(oInvisoKreia, 12);
	}
	object oFlophouse_Secret = OBJECT_INVALID;
	switch (nLocal) {
		case 1:
			oZezkaiel = GetObjectByTag("kavar", 0);
			break;
		case 2:
			oZezkaiel = GetObjectByTag("npc_vrook", 0);
			SetAreaUnescapable(1);
			if ((!nParam1)) {
				oFlophouse_Secret = GetObjectByTag("ao_door", 0);
				if (GetIsObjectValid(oFlophouse_Secret)) {
					AssignCommand(oFlophouse_Secret, ActionCloseDoor(oFlophouse_Secret));
					SetLocked(oFlophouse_Secret, 1);
				}
				oFlophouse_Secret = GetObjectByTag("master_door1", 0);
				if (GetIsObjectValid(oFlophouse_Secret)) {
					AssignCommand(oFlophouse_Secret, ActionCloseDoor(oFlophouse_Secret));
					SetLocked(oFlophouse_Secret, 1);
				}
				oFlophouse_Secret = GetObjectByTag("master_door2", 0);
				if (GetIsObjectValid(oFlophouse_Secret)) {
					AssignCommand(oFlophouse_Secret, ActionCloseDoor(oFlophouse_Secret));
					SetLocked(oFlophouse_Secret, 1);
				}
			}
			break;
		case 3:
			oZezkaiel = GetObjectByTag("zezkaiel", 0);
			SetAreaUnescapable(1);
			oFlophouse_Secret = GetObjectByTag("Flophouse_Secret", 0);
			if (GetIsObjectValid(oFlophouse_Secret)) {
				AssignCommand(oFlophouse_Secret, ActionCloseDoor(oFlophouse_Secret));
				SetLocked(oFlophouse_Secret, 1);
			}
			break;
	}
	if (GetIsObjectValid(oZezkaiel)) {
		ActionPauseConversation();
		SetGlobalFadeIn(0.0, 2.0, 0.0, 0.0, 0.0);
		SetPartyLeader(0xFFFFFFFF);
		oWP_MASTER_CUT_PC3 = GetWaypointByTag("WP_MASTER_CUT_MASTER");
		location1 = GetLocation(oWP_MASTER_CUT_PC3);
		AssignCommand(oZezkaiel, JumpToLocation(location1));
		object oPC = GetFirstPC();
		if ((!GetIsObjectValid(oPC))) {
			AurPostString("Could not find Player's Character to set up cutscene positioning.", 10, 10, 2.0);
			return;
		}
		oWP_MASTER_CUT_PC3 = GetWaypointByTag("WP_MASTER_CUT_PC1");
		location1 = GetLocation(oWP_MASTER_CUT_PC3);
		AssignCommand(oPC, JumpToLocation(location1));
		if ((!nParam1)) {
			object oNPC = GetPartyMemberByIndex(1);
			object object19 = GetPartyMemberByIndex(2);
			if (GetIsObjectValid(oNPC)) {
				AurPostString("Storing PC2.", 10, 10, 3.0);
				int int14 = sub1(GetTag(oNPC));
				SetLocalNumber(oInvisoKreia, 13, int14);
				RemovePartyMember(int14);
				AssignCommand(oNPC, sub2());
				ChangeToStandardFaction(oNPC, 5);
				AssignCommand(oNPC, ClearAllActions());
				oWP_MASTER_CUT_PC3 = GetWaypointByTag("WP_MASTER_CUT_PC2");
				location1 = GetLocation(oWP_MASTER_CUT_PC3);
				AssignCommand(oNPC, JumpToLocation(location1));
				AssignCommand(oNPC, ActionDoCommand(SetCommandable(0, oNPC)));
			}
			else {
				SetLocalNumber(oInvisoKreia, 13, 99);
				AurPostString(IntToString(GetLocalNumber(oInvisoKreia, 13)), 10, 10, 3.0);
			}
			if (GetIsObjectValid(object19)) {
				AurPostString("Storing PC3.", 10, 11, 3.0);
				int int19 = sub1(GetTag(object19));
				SetLocalNumber(oInvisoKreia, 14, int19);
				RemovePartyMember(int19);
				AssignCommand(object19, sub2());
				ChangeToStandardFaction(object19, 5);
				AssignCommand(object19, ClearAllActions());
				oWP_MASTER_CUT_PC3 = GetWaypointByTag("WP_MASTER_CUT_PC3");
				location1 = GetLocation(oWP_MASTER_CUT_PC3);
				AssignCommand(object19, JumpToLocation(location1));
				AssignCommand(object19, ActionDoCommand(SetCommandable(0, object19)));
			}
			else {
				SetLocalNumber(oInvisoKreia, 14, 99);
				AurPostString(IntToString(GetLocalNumber(oInvisoKreia, 14)), 10, 11, 3.0);
			}
		}
		else {
			SetLocalNumber(oInvisoKreia, 13, 99);
			SetLocalNumber(oInvisoKreia, 14, 99);
			object object23 = GetPartyMemberByIndex(1);
			object object25 = GetPartyMemberByIndex(2);
			if (GetIsObjectValid(object23)) {
				oWP_MASTER_CUT_PC3 = GetWaypointByTag("WP_MASTER_CUT_PC2");
				location1 = GetLocation(oWP_MASTER_CUT_PC3);
				AssignCommand(object23, JumpToLocation(location1));
			}
			if (GetIsObjectValid(object25)) {
				oWP_MASTER_CUT_PC3 = GetWaypointByTag("WP_MASTER_CUT_PC3");
				location1 = GetLocation(oWP_MASTER_CUT_PC3);
				AssignCommand(object25, JumpToLocation(location1));
			}
		}
		DelayCommand(2.0, ActionResumeConversation());
	}
}

