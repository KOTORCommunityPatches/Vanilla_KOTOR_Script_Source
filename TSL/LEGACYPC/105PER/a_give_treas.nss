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
string sub8(int intParam1);
int sub7(string stringParam1, invalid invalidParam2);
int sub6(int intParam1, int intParam2, int intParam3);
string sub5(int intParam1, string stringParam2);
void sub4(string stringParam1, int intParam2, int intParam3, int intParam4, float floatParam5);
void sub3(object objectParam1, int intParam2, int intParam3, int intParam4);
void sub2(object objectParam1, int intParam2);
int sub1(object objectParam1);

string sub8(int intParam1) {
	string string1 = IntToString(intParam1);
	string string3 = "0";
	int int1 = 4;
	while ((GetStringLength(string1) < int1)) {
		string1 = (string3 + string1);
	}
	return (("[" + string1) + "]");
}

int sub7(string stringParam1, invalid invalidParam2) {
	if ((invalidParam2 == "")) {
		return 1;
	}
	if ((FindSubString(invalidParam2, stringParam1) >= 0)) {
		return 0;
	}
	else {
		return 1;
	}
}

int sub6(int intParam1, int intParam2, int intParam3) {
	if (((intParam1 >= intParam2) && (intParam1 <= intParam3))) {
		return 1;
	}
	else {
		return 0;
	}
}

string sub5(int intParam1, string stringParam2) {
	int nRandom;
	string string1;
	int int2 = 0;
	string string2 = "";
	string string3;
	do {
		nRandom = Random(100);
		switch (intParam1) {
			case 1:
				string1 = "G_I_CREDITS001";
				if ((sub6(nRandom, 0, 84) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(20) + 1)));
					int2 = 1;
				}
				string1 = "g_i_medeqpmnt01";
				if ((sub6(nRandom, 85, 99) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				break;
			case 2:
				string1 = "G_I_CREDITS001";
				if ((sub6(nRandom, 0, 9) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(20) + 1)));
					int2 = 1;
				}
				string1 = "g_w_fraggren01";
				if ((sub6(nRandom, 10, 29) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_w_StunGren01";
				if ((sub6(nRandom, 30, 39) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_w_SonicGren01";
				if ((sub6(nRandom, 40, 59) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "g_w_iongren01";
				if ((sub6(nRandom, 60, 69) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "g_i_medeqpmnt01";
				if ((sub6(nRandom, 70, 84) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_MEDEQPMNT04";
				if ((sub6(nRandom, 85, 89) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_DRDREPEQP001";
				if ((sub6(nRandom, 90, 99) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				break;
			case 3:
				string1 = "G_I_CREDITS001";
				if ((sub6(nRandom, 0, 3) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(30) + 10)));
					int2 = 1;
				}
				string1 = "g_w_fraggren01";
				if ((sub6(nRandom, 4, 17) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(3) + 2)));
					int2 = 1;
				}
				string1 = "G_w_StunGren01";
				if ((sub6(nRandom, 18, 21) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(3) + 2)));
					int2 = 1;
				}
				string1 = "G_w_SonicGren01";
				if ((sub6(nRandom, 22, 27) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(3) + 2)));
					int2 = 1;
				}
				string1 = "g_w_iongren01";
				if ((sub6(nRandom, 28, 33) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(3) + 2)));
					int2 = 1;
				}
				string1 = "G_I_MEDEQPMNT02";
				if ((sub6(nRandom, 34, 48) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_MEDEQPMNT04";
				if ((sub6(nRandom, 49, 53) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(3) + 2)));
					int2 = 1;
				}
				string1 = "G_I_DRDREPEQP002";
				if ((sub6(nRandom, 54, 63) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE001";
				if ((sub6(nRandom, 64, 75) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE002";
				if ((sub6(nRandom, 76, 87) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE003";
				if ((sub6(nRandom, 88, 99) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				break;
			case 4:
				string1 = "G_I_CREDITS001";
				if ((sub6(nRandom, 0, 3) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(60) + 40)));
					int2 = 1;
				}
				string1 = "g_w_fraggren01";
				if ((sub6(nRandom, 4, 17) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(4) + 3)));
					int2 = 1;
				}
				string1 = "G_w_StunGren01";
				if ((sub6(nRandom, 18, 21) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(4) + 3)));
					int2 = 1;
				}
				string1 = "G_w_SonicGren01";
				if ((sub6(nRandom, 22, 27) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(4) + 3)));
					int2 = 1;
				}
				string1 = "g_w_iongren01";
				if ((sub6(nRandom, 28, 33) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(4) + 3)));
					int2 = 1;
				}
				string1 = "G_I_MEDEQPMNT03";
				if ((sub6(nRandom, 34, 48) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_MEDEQPMNT04";
				if ((sub6(nRandom, 49, 53) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(4) + 3)));
					int2 = 1;
				}
				string1 = "G_I_DRDREPEQP003";
				if ((sub6(nRandom, 54, 63) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE004";
				if ((sub6(nRandom, 64, 75) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE005";
				if ((sub6(nRandom, 76, 87) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE006";
				if ((sub6(nRandom, 88, 99) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				break;
			case 5:
				string1 = "G_I_CREDITS001";
				if ((sub6(nRandom, 0, 79) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(20) + 1)));
					int2 = 1;
				}
				string1 = "g_i_medeqpmnt01";
				if ((sub6(nRandom, 80, 99) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				break;
			case 6:
				string1 = "G_I_CREDITS001";
				if ((sub6(nRandom, 0, 49) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(30) + 10)));
					int2 = 1;
				}
				string1 = "G_I_MEDEQPMNT02";
				if ((sub6(nRandom, 50, 69) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE001";
				if ((sub6(nRandom, 70, 79) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE002";
				if ((sub6(nRandom, 80, 89) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE003";
				if ((sub6(nRandom, 90, 99) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				break;
			case 7:
				string1 = "G_I_CREDITS001";
				if ((sub6(nRandom, 0, 49) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(60) + 40)));
					int2 = 1;
				}
				string1 = "G_I_MEDEQPMNT03";
				if ((sub6(nRandom, 50, 69) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE004";
				if ((sub6(nRandom, 70, 79) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE005";
				if ((sub6(nRandom, 80, 89) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE006";
				if ((sub6(nRandom, 90, 99) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				break;
			case 8:
				string1 = "G_I_CREDITS001";
				if ((sub6(nRandom, 0, 69) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(20) + 1)));
					int2 = 1;
				}
				string1 = "g_i_medeqpmnt01";
				if ((sub6(nRandom, 70, 99) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				break;
			case 9:
				string1 = "G_I_CREDITS001";
				if ((sub6(nRandom, 0, 59) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(30) + 10)));
					int2 = 1;
				}
				string1 = "g_i_medeqpmnt02";
				if ((sub6(nRandom, 60, 69) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE001";
				if ((sub6(nRandom, 70, 79) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE002";
				if ((sub6(nRandom, 80, 89) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE003";
				if ((sub6(nRandom, 90, 99) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				break;
			case 10:
				string1 = "G_I_CREDITS001";
				if ((sub6(nRandom, 0, 59) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(60) + 40)));
					int2 = 1;
				}
				string1 = "g_i_medeqpmnt03";
				if ((sub6(nRandom, 60, 69) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE004";
				if ((sub6(nRandom, 70, 79) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE005";
				if ((sub6(nRandom, 80, 89) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE006";
				if ((sub6(nRandom, 90, 99) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				break;
			case 11:
				string1 = "G_I_DRDLTPLAT001";
				if ((sub6(nRandom, 0, 79) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_DRDMTNSEN001";
				if ((sub6(nRandom, 80, 99) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				break;
			case 12:
				string1 = "G_I_DRDLTPLAT002";
				if ((sub6(nRandom, 0, 79) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_DRDMTNSEN002";
				if ((sub6(nRandom, 80, 99) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				break;
			case 13:
				string1 = "G_I_DRDLTPLAT003";
				if ((sub6(nRandom, 0, 79) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_DRDMTNSEN003";
				if ((sub6(nRandom, 80, 99) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				break;
			case 14:
				string1 = "G_I_DRDREPEQP003";
				if ((sub6(nRandom, 0, 24) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE004";
				if ((sub6(nRandom, 25, 49) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE005";
				if ((sub6(nRandom, 50, 74) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE006";
				if ((sub6(nRandom, 75, 99) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				break;
			case 15:
				string1 = "g_w_fraggren01";
				if ((sub6(nRandom, 0, 23) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(3) + 2)));
					int2 = 1;
				}
				string1 = "G_w_StunGren01";
				if ((sub6(nRandom, 24, 35) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(3) + 2)));
					int2 = 1;
				}
				string1 = "G_w_SonicGren01";
				if ((sub6(nRandom, 36, 47) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(3) + 2)));
					int2 = 1;
				}
				string1 = "g_w_iongren01";
				if ((sub6(nRandom, 48, 59) && sub7(string1, stringParam2))) {
					string2 = (string1 + sub8((Random(3) + 2)));
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE001";
				if ((sub6(nRandom, 60, 71) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE002";
				if ((sub6(nRandom, 72, 83) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				string1 = "G_I_ADRNALINE003";
				if ((sub6(nRandom, 84, 99) && sub7(string1, stringParam2))) {
					string2 = string1;
					int2 = 1;
				}
				break;
		}
		if ((!int2)) {
		}
		else {
			return string2;
		}
	} while (null);
}

void sub4(string stringParam1, int intParam2, int intParam3, int intParam4, float floatParam5) {
	if (intGLOB_28) {
		if (intParam2) {
			AurPostString(("SWTR_DEBUG - " + stringParam1), intParam3, intParam4, floatParam5);
		}
		PrintString(("SWTR_DEBUG - " + stringParam1));
	}
}

void sub3(object objectParam1, int intParam2, int intParam3, int intParam4) {
	string string1 = "";
	string string2;
	string string3;
	int int1;
	int int2;
	if ((!GetIsObjectValid(objectParam1))) {
		sub4("invalid container", 1, 5, 5, 5.0);
		return;
	}
	while ((intParam3 > 0)) {
		string2 = sub5(intParam2, string1);
		if ((string2 == "")) {
			sub4("bad table", 1, 5, 5, 5.0);
		}
		if ((int2 = FindSubString(string2, "[") >= 0)) {
			int1 = StringToInt(GetSubString(string2, (int2 + 1), 4));
			string3 = GetSubString(string2, 0, int2);
		}
		else {
			int1 = 1;
			string3 = string2;
		}
		if ((!GetIsObjectValid(CreateItemOnObject(string3, objectParam1, int1, 0)))) {
			sub4((("item create failed (" + string3) + ")"), 1, 5, 5, 5.0);
		}
		else {
			sub4(((("container:" + GetTag(objectParam1)) + " item:") + string3), 0, 5, 5, 5.0);
		}
		if (intParam4) {
			string1 = (string1 + string3);
		}
		(intParam3--);
	}
}

void sub2(object objectParam1, int intParam2) {
	if (GetIsObjectValid(objectParam1)) {
		if (((intParam2 == 1) || (intParam2 == 0))) {
			SetLocalBoolean(objectParam1, intGLOB_11, intParam2);
		}
	}
}

int sub1(object objectParam1) {
	int nLocalBool;
	if (GetIsObjectValid(objectParam1)) {
		nLocalBool = GetLocalBoolean(objectParam1, intGLOB_11);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

void main() {
	if ((!sub1(OBJECT_SELF))) {
		sub2(OBJECT_SELF, 1);
		sub3(OBJECT_SELF, intGLOB_39, 2, 1);
	}
}

