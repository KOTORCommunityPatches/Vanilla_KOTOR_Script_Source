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
string sub5(int intParam1);
string sub4(string stringParam1);
string sub3(string stringParam1);
string sub2(int intParam1, int intParam2);
string sub1(int intParam1, int intParam2);

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
			return "d_tool_";
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

string sub4(string stringParam1) {
	int int1 = (Random(100) + 1);
	if ((int1 <= 50)) {
		stringParam1 = ("0" + IntToString((Random(4) + 1)));
	}
	else {
		if (((int1 > 50) && (int1 <= 80))) {
			switch (Random(3)) {
				case 0:
					stringParam1 = "08";
					break;
				case 1:
					stringParam1 = "06";
					break;
				case 2:
					stringParam1 = "05";
					break;
			}
		}
		else {
			switch (Random(3)) {
				case 0:
					stringParam1 = "10";
					break;
				case 1:
					stringParam1 = "09";
					break;
				case 2:
					stringParam1 = "07";
					break;
			}
			return stringParam1;
		}
	}
}

string sub3(string stringParam1) {
	int int1 = (Random(100) + 1);
	if ((int1 <= 50)) {
		stringParam1 = ("0" + IntToString((Random(4) + 1)));
	}
	else {
		if (((int1 > 50) && (int1 <= 80))) {
			switch (Random(3)) {
				case 0:
					stringParam1 = "08";
					break;
				case 1:
					stringParam1 = "10";
					break;
				case 2:
					stringParam1 = "05";
					break;
			}
		}
		else {
			switch (Random(3)) {
				case 0:
					stringParam1 = "11";
					break;
				case 1:
					stringParam1 = "09";
					break;
				case 2:
					stringParam1 = "07";
					break;
			}
			return stringParam1;
		}
	}
}

string sub2(int intParam1, int intParam2) {
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
		string3 = sub2(intParam1, (int2 * 100));
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
			string3 = sub2(intParam1, (intParam2 + (10 * int2)));
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
				string3 = sub2(intParam1, (intParam2 + int2));
			}
			else {
				switch (intParam2) {
					case 141:
						string1 = sub3(string1);
						break;
					case 142:
						string1 = sub3(string1);
						break;
					case 143:
						string1 = sub3(string1);
						break;
					case 211:
						intParam1 = (intParam1 / 2);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 212:
						intParam1 = (intParam1 / 2);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 213:
						intParam1 = (intParam1 / 2);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 221:
						intParam1 = (intParam1 / 2);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 222:
						intParam1 = (intParam1 / 2);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 223:
						intParam1 = (intParam1 / 2);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 241:
						intParam1 = ((intParam1 - 5) / 2);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 242:
						intParam1 = ((intParam1 - 5) / 2);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 243:
						intParam1 = ((intParam1 - 5) / 2);
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
						string1 = sub4(string1);
						break;
					case 321:
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						if ((intParam1 == 3)) {
							intParam1 = 2;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 341:
						intParam1 = (intParam1 / 3);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 342:
						intParam1 = (intParam1 / 3);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 343:
						intParam1 = (intParam1 / 3);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
						string1 = IntToString(intParam1);
						if ((intParam1 < 10)) {
							string1 = ("0" + string1);
						}
						break;
					case 344:
						intParam1 = (intParam1 / 3);
						if ((intParam1 < 1)) {
							intParam1 = 1;
						}
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
						intParam1 = intParam1;
						if ((intParam1 < 2)) {
							intParam1 = 2;
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

string sub1(int intParam1, int intParam2) {
	string string1 = sub2(intParam1, intParam2);
	return string1;
}

void main() {
	if ((GetLocalBoolean(OBJECT_SELF, 58) == 0)) {
		SetLocalBoolean(OBJECT_SELF, 58, 1);
		int int2;
		int int3;
		int int4 = 1;
		string string1;
		int2;
		while ((int2 < 19)) {
			{
				string string2 = sub1(int2, 200);
				int4 = 1;
				if (int3 = (FindSubString(string2, "[") >= 0)) {
				int4 = StringToInt(GetSubString(string2, (int3 + 1), 4));
				string1 = GetSubString(string2, 0, int3);
				}
				else {
				string1 = string2;
				}
				CreateItemOnObject(string1, GetObjectByTag("TiennStore", 0), int4, 0);
			}
			int2 = (int2 + 2);
		}
	}
}

