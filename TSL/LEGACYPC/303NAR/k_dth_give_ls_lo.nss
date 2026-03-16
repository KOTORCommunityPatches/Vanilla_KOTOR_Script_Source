// Globals
	int intGLOB_1 = 1001;
	int intGLOB_2 = 1002;
	int intGLOB_3 = 1003;
	int intGLOB_4 = 1004;
	int intGLOB_5 = 1005;
	int intGLOB_6 = 1006;
	int intGLOB_7 = 1007;
	int intGLOB_8 = 1008;
	int intGLOB_9 = 1009;
	int intGLOB_10 = 1010;
	int intGLOB_11 = 1011;
	int intGLOB_12 = 1012;
	int intGLOB_13 = 2001;
	int intGLOB_14 = 2002;
	int intGLOB_15 = 2003;
	int intGLOB_16 = 2004;
	int intGLOB_17 = 2005;
	int intGLOB_18 = 2006;
	int intGLOB_19 = 2007;
	int intGLOB_20 = 2008;
	int intGLOB_21 = 2009;
	int intGLOB_22 = 2010;
	int intGLOB_23 = 2011;
	int intGLOB_24 = 2012;
	int intGLOB_25 = 2013;
	int intGLOB_26 = 2014;
	int intGLOB_27 = 3001;
	int intGLOB_28 = 3002;
	int intGLOB_29 = 3003;
	int intGLOB_30 = 4001;
	int intGLOB_31 = 0;
	int intGLOB_32 = 1;
	int intGLOB_33 = 2;
	int intGLOB_34 = 3;
	int intGLOB_35 = 4;
	int intGLOB_36 = 5;
	int intGLOB_37 = 6;
	int intGLOB_38 = 7;
	int intGLOB_39 = 8;
	int intGLOB_40 = 9;
	int intGLOB_41 = 10;
	int intGLOB_42 = 11;
	int intGLOB_43 = 12;
	int intGLOB_44 = 13;
	int intGLOB_45 = 14;
	int intGLOB_46 = 15;
	int intGLOB_47 = 16;
	int intGLOB_48 = 17;
	int intGLOB_49 = 18;
	int intGLOB_50 = 19;
	int intGLOB_51 = 1100;
	int intGLOB_52 = (-6);
	int intGLOB_53 = (-5);
	int intGLOB_54 = (-4);
	int intGLOB_55 = (-2);
	int intGLOB_56 = (-1);
	int intGLOB_57 = 0;
	int intGLOB_58 = 1;
	int intGLOB_59 = 1;
	int intGLOB_60 = 2;
	int intGLOB_61 = 3;
	int intGLOB_62 = 4;
	int intGLOB_63 = 5;
	int intGLOB_64 = 6;
	int intGLOB_65 = 7;
	int intGLOB_66 = 8;
	int intGLOB_67 = 9;
	int intGLOB_68 = 10;
	int intGLOB_69 = 11;
	int intGLOB_70 = 12;
	int intGLOB_71 = 13;
	int intGLOB_72 = 14;
	int intGLOB_73 = 15;

// Prototypes
string sub2(int intParam1);
string sub1(int intParam1, int intParam2);

string sub2(int intParam1) {
	switch (intParam1) {
		case 111:
			return "w_blaste_";
		case 121:
			return "w_brifle_";
		case 131:
			return "w_melee_";
		case 141:
			return "g_w_lghtsbr";
		case 142:
			return "g_w_shortsbr";
		case 143:
			return "g_w_dblsbr0";
		case 211:
			return "u_r_targ_";
		case 212:
			return "u_r_firi_";
		case 213:
			return "u_r_powe_";
		case 221:
			return "u_m_grip_";
		case 222:
			return "u_m_edge_";
		case 223:
			return "u_m_cell_";
		case 231:
			return "u_a_over_";
		case 232:
			return "u_a_unde_";
		case 241:
			return "u_l_emit_";
		case 242:
			return "u_l_lens_";
		case 243:
			return "u_l_cell_";
		case 244:
			return "u_l_crys_";
		case 245:
			return "u_l_colo_";
		case 311:
			return "a_belt_";
		case 321:
			return "a_gloves_";
		case 331:
			return "a_helmet_";
		case 341:
			return "e_imp1_";
		case 342:
			return "e_imp2_";
		case 343:
			return "e_imp3_";
		case 344:
			return "e_imp4_";
		case 411:
			return "a_heavy_";
		case 421:
			return "a_medium_";
		case 431:
			return "a_light_";
		case 441:
			return "a_robe_";
		case 511:
			return "d_utility_";
		case 521:
			return "d_interface_";
		case 531:
			return "d_armor_";
		case 541:
			return "d_shield_";
		case 551:
			return "d_device_";
	}
	return "";
}

string sub1(int intParam1, int intParam2) {
	int int1 = 0;
	int int2;
	int nGlobal = GetGlobalNumber("G_PC_LEVEL");
	string string1 = IntToString(intParam1);
	string string3 = "";
	if ((intParam1 < 10)) {
		string1 = ("0" + string1);
	}
	if ((intParam2 == 0)) {
		if ((nGlobal < 4)) {
			int2 = (Random(3) + 1);
		}
		else {
			int2 = (Random(4) + 1);
		}
		if (((int2 == 2) && (Random(100) < 50))) {
			int2 = 3;
		}
		string3 = sub1(intParam1, (int2 * 100));
	}
	else {
		if (((intParam2 % 100) == 0)) {
			switch ((intParam2 / 100)) {
				case 1:
					int1 = 3;
					break;
				case 2:
					if (((intParam1 < 6) || (nGlobal < 10))) {
						int1 = 3;
					}
					else {
						int1 = 4;
					}
					break;
				case 3:
					int1 = 4;
					break;
				case 4:
					int1 = 4;
					break;
				case 5:
					int1 = 5;
					break;
			}
			int2 = (Random(int1) + 1);
			string3 = sub1(intParam1, (intParam2 + (10 * int2)));
		}
		else {
			if (((intParam2 % 10) == 0)) {
				switch ((intParam2 / 10)) {
					case 14:
						int1 = 3;
						break;
					case 21:
						int1 = 3;
						break;
					case 22:
						int1 = 3;
						break;
					case 23:
						int1 = 2;
						break;
					case 24:
						int1 = 5;
						break;
					case 34:
						int1 = (GetAbilityModifier(2, GetFirstPC()) + Random(2));
						if ((int1 > 4)) {
							int1 = 4;
						}
						break;
				}
				int2 = (Random(int1) + 1);
				string3 = sub1(intParam1, (intParam2 + int2));
			}
			else {
				switch (intParam2) {
					case 141:
						intParam1 = ((intParam1 - 3) / 3);
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 142:
						intParam1 = ((intParam1 - 3) / 3);
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 143:
						intParam1 = ((intParam1 - 3) / 3);
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 211:
						intParam1 = (intParam1 / 2);
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 212:
						intParam1 = (intParam1 / 2);
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 213:
						intParam1 = (intParam1 / 2);
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 221:
						intParam1 = (intParam1 / 2);
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 222:
						intParam1 = (intParam1 / 2);
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 223:
						intParam1 = (intParam1 / 2);
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 241:
						intParam1 = ((intParam1 - 6) / 2);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 242:
						intParam1 = ((intParam1 - 6) / 2);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 243:
						intParam1 = ((intParam1 - 6) / 2);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 244:
						intParam1 = (intParam1 - 5);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 245:
						intParam1 = (((intParam1 - 5) / 3) + 2);
						if ((intParam1 < 4)) {
							intParam1 = 4;
						}
						if ((intParam1 == 6)) {
							intParam1 = 5;
						}
						if ((intParam1 > 9)) {
							intParam1 = 9;
						}
						intParam1 = (Random(intParam1) + 1);
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 341:
						intParam1 = (intParam1 / 3);
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 342:
						intParam1 = (intParam1 / 3);
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 343:
						intParam1 = (intParam1 / 3);
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 344:
						intParam1 = (intParam1 / 3);
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 411:
						intParam1 = (intParam1 / 2);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 421:
						intParam1 = (intParam1 / 2);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 431:
						intParam1 = (intParam1 / 2);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 441:
						intParam1 = (intParam1 / 2);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 511:
						intParam1 = (intParam1 / 2);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 521:
						intParam1 = (intParam1 / 2);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 531:
						intParam1 = (intParam1 / 2);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 541:
						intParam1 = (intParam1 / 3);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						if ((intParam1 > 6)) {
							intParam1 = (intParam1 - 4);
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 551:
						intParam1 = (intParam1 / 2);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
				}
				string3 = (sub2(intParam2) + string1);
			}
		}
	}
	return string3;
}

void main() {
	ExecuteScript("k_ai_master", OBJECT_SELF, intGLOB_7);
	if ((GetJournalEntry("InterGRU") > 0)) {
		if ((GetJournalEntry("InterGRU") == 40)) {
			AddJournalQuestEntry("InterGRU", 55, 1);
		}
		else {
			AddJournalQuestEntry("InterGRU", 45, 1);
		}
		GivePlotXP("Nar_Shaddaa_Plot_Base_XP", 50);
	}
	int int3 = 1;
	string string1 = "lspart0";
	string string2;
	string sParam = GetScriptStringParameter();
	object object1 = OBJECT_SELF;
	object oLeader;
	if ((sParam != "")) {
		oLeader = GetObjectByTag(sParam, 0);
	}
	else {
		oLeader = GetPartyLeader();
	}
	if ((GetJournalEntry("LightsaberQuest") < 40)) {
		int3;
		while (GetIsObjectValid(object1)) {
			string2 = (string1 + IntToString(int3));
			object1 = GetItemPossessedBy(GetPartyLeader(), string2);
			(int3++);
		}
		AddJournalQuestEntry("LightsaberQuest", (10 * int3), 0);
	}
	else {
		string2 = sub1(((GetGlobalNumber("G_PC_LEVEL") - 2) + Random(5)), 240);
	}
	CreateItemOnObject(string2, oLeader, 1, 0);
	ExecuteScript("a_gbl_react", OBJECT_SELF, 0);
}

