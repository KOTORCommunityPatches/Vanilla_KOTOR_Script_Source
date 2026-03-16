// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;
	int intGLOB_28 = 1;
	int intGLOB_29 = 1;
	int intGLOB_30 = 2;
	int intGLOB_31 = 3;
	int intGLOB_32 = 4;
	int intGLOB_33 = 5;
	int intGLOB_34 = 6;
	int intGLOB_35 = 7;
	int intGLOB_36 = 8;
	int intGLOB_37 = 9;
	int intGLOB_38 = 10;
	int intGLOB_39 = 11;
	int intGLOB_40 = 12;
	int intGLOB_41 = 13;
	int intGLOB_42 = 14;
	int intGLOB_43 = 15;

// Prototypes
string sub10(int intParam1, int intParam2);
string sub9(int intParam1);
string sub8(int intParam1, int intParam2);
string sub7(int intParam1, int intParam2);
int sub6(int intParam1, int intParam2, int intParam3);
string sub5(int intParam1);
string sub4(int intParam1, int intParam2);
string sub3(int intParam1, int intParam2);
void sub2(object objectParam1, int intParam2, int intParam3);
void sub1(object objectParam1, int intParam2, int intParam3);

string sub10(int intParam1, int intParam2) {
	string string1 = sub4(intParam1, intParam2);
	return string1;
}

string sub9(int intParam1) {
	string string1 = IntToString(intParam1);
	string string3 = "0";
	int int1 = 4;
	while ((GetStringLength(string1) < int1)) {
		string1 = (string3 + string1);
	}
	return (("[" + string1) + "]");
}

string sub8(int intParam1, int intParam2) {
	int int1 = 1;
	string string1;
	string string2 = GetModuleName();
	if (((((((((string2 == "851NIH") || (string2 == "852NIH")) || (string2 == "901MAL")) || (string2 == "902MAL")) || (string2 == "903MAL")) || (string2 == "904MAL")) || (string2 == "905MAL")) || (string2 == "906MAL"))) {
		if ((Random(3) == 0)) {
			intParam2 = 941;
		}
		else {
			if ((Random(3) == 0)) {
				intParam2 = (971 + Random(9));
			}
			else {
				if ((Random(3) == 0)) {
					intParam2 = 931;
				}
				else {
					if ((Random(3) == 0)) {
						intParam2 = 921;
					}
					else {
						intParam2 = 922;
					}
				}
			}
		}
	}
	switch (intParam2) {
		case 911:
			int1 = ((Random((10 * intParam1)) + Random(50)) + 20);
			string1 = "g_i_credits015";
			break;
		case 921:
			int1 = ((Random(intParam1) + Random(intParam1)) + 1);
			string1 = "compont_00001";
			break;
		case 922:
			int1 = ((Random(intParam1) + Random(intParam1)) + 1);
			string1 = "chem_00001";
			break;
		case 931:
			intParam1 = ((intParam1 / 4) + 1);
			if ((intParam1 > 7)) {
				intParam1 = 7;
			}
			string1 = (("a_shield_" + "0") + IntToString(intParam1));
			break;
		case 941:
			if ((intParam1 < 9)) {
				string1 = "g_i_medeqpmnt01";
			}
			else {
				if ((intParam1 < 16)) {
					string1 = "g_i_medeqpmnt02";
				}
				else {
					string1 = "g_i_medeqpmnt03";
				}
			}
			break;
		case 942:
			if ((intParam1 < 9)) {
				string1 = "g_i_drdrepeqp001";
			}
			else {
				if ((intParam1 < 16)) {
					string1 = "g_i_drdrepeqp002";
				}
				else {
					string1 = "g_i_drdrepeqp003";
				}
			}
			break;
		case 951:
			int1 = 1;
			if ((intParam1 < 12)) {
				string1 = "g_i_adrnaline001";
			}
			else {
				string1 = "g_i_adrnaline004";
			}
			break;
		case 952:
			int1 = 1;
			if ((intParam1 < 12)) {
				string1 = "g_i_adrnaline002";
			}
			else {
				string1 = "g_i_adrnaline005";
			}
			break;
		case 953:
			int1 = 1;
			if ((intParam1 < 12)) {
				string1 = "g_i_adrnaline003";
			}
			else {
				string1 = "g_i_adrnaline006";
			}
			break;
		case 954:
			if ((intParam1 < 9)) {
				string1 = "g_i_medeqpmnt01";
			}
			else {
				if ((intParam1 < 16)) {
					string1 = "g_i_medeqpmnt02";
				}
				else {
					string1 = "g_i_medeqpmnt03";
				}
			}
			break;
		case 961:
			int1 = ((Random((2 * intParam1)) + Random(50)) + 10);
			string1 = "g_i_credits014";
			break;
		case 971:
			int1 = (Random(2) + 1);
			string1 = "g_w_adhsvgren001";
			break;
		case 972:
			if ((intParam1 < 4)) {
				string1 = "g_w_fraggren01";
			}
			else {
				string1 = "g_w_stungren01";
			}
			break;
		case 973:
			if ((intParam1 < 11)) {
				string1 = "g_w_fraggren01";
			}
			else {
				int1 = (Random(2) + 1);
				string1 = "g_w_cryobgren001";
			}
			break;
		case 974:
			if ((intParam1 < 15)) {
				string1 = "g_w_firegren001";
				int1 = (Random(2) + 1);
			}
			else {
				int1 = 1;
				string1 = "g_w_thermldet01";
			}
			break;
		case 975:
			if ((intParam1 < 9)) {
				string1 = "g_w_fraggren01";
			}
			else {
				int1 = (Random(2) + 1);
				string1 = "g_w_firegren001";
			}
			break;
		case 976:
			string1 = "g_w_iongren01";
			break;
		case 977:
			if ((intParam1 < 7)) {
				string1 = "g_w_fraggren01";
			}
			else {
				int1 = (Random(2) + 1);
				string1 = "g_w_poisngren01";
			}
			break;
		case 978:
			if ((intParam1 < 6)) {
				string1 = "g_w_sonicgren01";
			}
			else {
				int1 = (Random(2) + 1);
				string1 = "g_w_sonicgren01";
			}
			break;
		case 979:
			int1 = (Random(4) + 1);
			string1 = "g_w_fraggren01";
			break;
		case 981:
			string1 = "g_i_parts01";
			break;
		case 982:
			string1 = "g_i_progspike01";
			break;
		case 983:
			string1 = "g_i_secspike01";
			break;
		case 991:
			string1 = "w_rocket_01";
			break;
		case 992:
			string1 = "w_rocket_02";
			break;
		case 993:
			string1 = "w_rocket_03";
			break;
		case 994:
			string1 = "w_rocket_04";
			break;
		case 995:
			string1 = "w_rocket_05";
			break;
	}
	return (string1 + sub9(int1));
}

string sub7(int intParam1, int intParam2) {
	int int1 = 0;
	int int2;
	int nGlobal = GetGlobalNumber("G_PC_LEVEL");
	string string1 = "";
	if (((intParam2 == 990) && (!IsAvailableCreature(7)))) {
		intParam2 = 980;
	}
	if ((intParam2 == 0)) {
		int2 = (Random(0) + 9);
		string1 = sub7(intParam1, (int2 * 100));
	}
	else {
		if (((intParam2 % 100) == 0)) {
			switch ((intParam2 / 100)) {
				case 9:
					if (IsAvailableCreature(7)) {
						int1 = 9;
					}
					else {
						if ((nGlobal < 6)) {
							int1 = 6;
						}
						else {
							int1 = 8;
						}
					}
					break;
			}
			int2 = (Random(int1) + 1);
			string1 = sub7(intParam1, (intParam2 + (10 * int2)));
		}
		else {
			if (((intParam2 % 10) == 0)) {
				switch ((intParam2 / 10)) {
					case 92:
						int1 = 2;
						break;
					case 94:
						int1 = 2;
						break;
					case 95:
						int1 = 4;
						break;
					case 97:
						int1 = 9;
						break;
					case 98:
						int1 = 3;
						break;
					case 99:
						int1 = (intParam1 / 3);
						if ((int1 > 5)) {
							int1 = 5;
						}
						if (int1 = 0) {
							int1 = 1;
						}
						break;
				}
				int2 = (Random(int1) + 1);
				string1 = sub8(intParam1, (intParam2 + int2));
			}
			else {
				string1 = sub8(intParam1, intParam2);
			}
		}
	}
	return string1;
}

int sub6(int intParam1, int intParam2, int intParam3) {
	if (((intParam1 >= intParam2) && (intParam1 <= intParam3))) {
		return 1;
	}
	else {
		return 0;
	}
}

string sub5(int intParam1) {
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

string sub4(int intParam1, int intParam2) {
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
		string3 = sub4(intParam1, (int2 * 100));
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
			string3 = sub4(intParam1, (intParam2 + (10 * int2)));
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
				string3 = sub4(intParam1, (intParam2 + int2));
			}
			else {
				switch (intParam2) {
					case 141:
						intParam1 = ((intParam1 - 3) / 3);
						if ((intParam1 == 6)) {
							intParam1 = 5;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 142:
						intParam1 = ((intParam1 - 3) / 3);
						if ((intParam1 == 6)) {
							intParam1 = 5;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 143:
						intParam1 = ((intParam1 - 3) / 3);
						if ((intParam1 == 6)) {
							intParam1 = 5;
						}
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
				string3 = (sub5(intParam2) + string1);
			}
		}
	}
	return string3;
}

string sub3(int intParam1, int intParam2) {
	string string1 = sub4((intParam1 + 5), intParam2);
	return string1;
}

void sub2(object objectParam1, int intParam2, int intParam3) {
	if ((!GetLocalBoolean(objectParam1, 57))) {
		SetLocalBoolean(objectParam1, 57, 1);
		int int2;
		int int3;
		int nGlobal = GetGlobalNumber("G_PC_LEVEL");
		if ((nGlobal == 1)) {
			nGlobal = 2;
		}
		int2 = 1;
		while ((int2 <= intParam2)) {
			{
				int int6 = ((nGlobal + Random(8)) - 5);
				if ((int6 < 1)) {
				int6 = 1;
				}
				if ((int6 > 30)) {
				int6 = (30 - Random(7));
				}
				int3 = (Random(95) + GetGlobalNumber("000_RareItemChance"));
				if ((((intParam3 > 0) && (intParam3 < 900)) && (int3 < 91))) {
				int3 = 95;
				}
				string string1;
				string string2;
				int int11 = 1;
				int int12;
				AurPostString(("nRoll: " + IntToString(int3)), 9, 9, 2.0);
				if ((int3 > 100)) {
				string1 = sub3(int6, intParam3);
					SetGlobalNumber("000_RareItemChance", 0);
				}
				else {
					IncrementGlobalNumber("000_RareItemChance", 3);
				if (sub6(int3, 0, 85)) {
					string1 = sub7(int6, intParam3);
				}
				else {
					if (sub6(int3, 86, 100)) {
						string1 = sub10(int6, intParam3);
					}
				}
				}
				if ((int12 = FindSubString(string1, "[") >= 0)) {
				int11 = StringToInt(GetSubString(string1, (int12 + 1), 4));
				string2 = GetSubString(string1, 0, int12);
				}
				else {
				string2 = string1;
				}
				AurPostString(("Item: " + string2), 10, (10 + int2), 2.0);
				CreateItemOnObject(string2, objectParam1, int11, 0);
			}
			(int2++);
		}
	}
}

void sub1(object objectParam1, int intParam2, int intParam3) {
	sub2(objectParam1, intParam2, 500);
}

void main() {
	object object1 = OBJECT_SELF;
	if ((!GetLocalBoolean(object1, 57))) {
		int int2 = (Random(2) + 1);
		sub1(object1, int2, 0);
		RemoveHeartbeat(OBJECT_SELF);
	}
}

