// Byte code does not match

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
string sub3(int intParam1, int intParam2);
string sub2(int intParam1, int intParam2);
void sub1(object objectParam1, int intParam2, int intParam3);

string sub5(int intParam1) {
	string string1 = IntToString(intParam1);
	string string3 = "0";
	int int1 = 4;
	while ((GetStringLength(string1) < int1)) {
		string1 = (string3 + string1);
	}
	return (("[" + string1) + "]");
}

string sub4(string stringParam1) {
	int nRandom = Random(11);
	if ((nRandom <= 1)) {
		stringParam1 = "g_i_secspike02";
	}
	else {
		stringParam1 = "g_i_secspike01";
	}
	return stringParam1;
}

string sub3(int intParam1, int intParam2) {
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
			if ((intParam1 < 1)) {
				intParam1 = 1;
			}
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
			if ((intParam1 < 11)) {
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
		case 955:
			if ((intParam1 < 11)) {
				string1 = "g_i_cmbtshot001";
			}
			else {
				if ((intParam1 < 21)) {
					string1 = "g_i_cmbtshot002";
				}
				else {
					string1 = "g_i_cmbtshot003";
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
			string1 = sub4(string1);
			break;
		case 991:
			if ((intParam1 < 22)) {
				string1 = "w_rocket_01";
			}
			else {
				string1 = "w_rocket_10";
			}
			break;
		case 992:
			if ((intParam1 < 22)) {
				string1 = "w_rocket_02";
			}
			else {
				string1 = "w_rocket_11";
			}
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
		case 996:
			string1 = "w_rocket_06";
			break;
		case 997:
			string1 = "w_rocket_07";
			break;
		case 998:
			string1 = "w_rocket_08";
			break;
		case 999:
			string1 = "w_rocket_09";
			break;
	}
	return (string1 + sub5(int1));
}

string sub2(int intParam1, int intParam2) {
	int int1 = 0;
	int int2;
	int nGlobal = GetGlobalNumber("G_PC_LEVEL");
	string string1 = "";
	if (((intParam2 == 990) && (!IsAvailableCreature(7)))) {
		intParam2 = 980;
	}
	if ((intParam2 == 0)) {
		int2 = (Random(0) + 9);
		string1 = sub2(intParam1, (int2 * 100));
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
			string1 = sub2(intParam1, (intParam2 + (10 * int2)));
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
						int1 = 5;
						break;
					case 97:
						int1 = 9;
						break;
					case 98:
						int1 = 3;
						break;
					case 99:
						int1 = 9;
						break;
				}
				int2 = (Random(int1) + 1);
				string1 = sub3(intParam1, (intParam2 + int2));
			}
			else {
				string1 = sub3(intParam1, intParam2);
			}
		}
	}
	return string1;
}

void sub1(object objectParam1, int intParam2, int intParam3) {
	if ((!GetLocalBoolean(objectParam1, 57))) {
		SetLocalBoolean(objectParam1, 57, 1);
		int int2;
		int nGlobal = GetGlobalNumber("G_PC_LEVEL");
		if ((intParam3 < 900)) {
			intParam3 = 0;
		}
		int int5 = ((nGlobal + Random(6)) - 4);
		if ((int5 < 1)) {
			int5 = 1;
		}
		if ((int5 > 30)) {
			int5 = 30;
		}
		int2 = 1;
		while ((int2 <= intParam2)) {
			{
				string string1;
				string string2;
				int int7 = 1;
				int int8;
				string1 = sub2(int5, intParam3);
				if ((int8 = FindSubString(string1, "[") >= 0)) {
				int7 = StringToInt(GetSubString(string1, (int8 + 1), 4));
				string2 = GetSubString(string1, 0, int8);
				}
				else {
				string2 = string1;
				}
				CreateItemOnObject(string2, objectParam1, int7, 0);
			}
			(int2++);
		}
	}
}

void main() {
	object object1 = OBJECT_SELF;
	if ((!GetLocalBoolean(object1, 57))) {
		int int2 = (Random(3) + 1);
		sub1(object1, int2, 950);
	}
}