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

// Prototypes
int sub12();
int sub11();
int sub10();
int sub9();
int sub8();
int sub7();
int sub6();
int sub5();
int sub4();
string sub3();
int sub2();
int sub1();

int sub12() {
	int nAlign = GetGoodEvilValue(GetPCSpeaker());
	if ((nAlign == 100)) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub11() {
	int nAlign = GetGoodEvilValue(GetPCSpeaker());
	if ((nAlign == 0)) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub10() {
	int nAlign = GetGoodEvilValue(GetPCSpeaker());
	if ((nAlign >= 81)) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub9() {
	int nAlign = GetGoodEvilValue(GetPCSpeaker());
	if (((nAlign >= 61) && (nAlign < 81))) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub8() {
	if ((sub9() || sub10())) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub7() {
	if (((!sub4()) && (!sub8()))) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub6() {
	int nAlign = GetGoodEvilValue(GetPCSpeaker());
	if (((nAlign >= 0) && (nAlign < 20))) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub5() {
	int nAlign = GetGoodEvilValue(GetPCSpeaker());
	if (((nAlign >= 20) && (nAlign < 40))) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub4() {
	if ((sub5() || sub6())) {
		return 1;
	}
	else {
		return 0;
	}
}

string sub3() {
	string string1;
	if (sub4()) {
		string1 = "1";
	}
	if (sub7()) {
		string1 = "2";
	}
	if (sub8()) {
		string1 = "3";
	}
	if (sub11()) {
		string1 = "0";
	}
	if (sub12()) {
		string1 = "4";
	}
	return string1;
}

int sub2() {
	int nGlobal = GetGlobalNumber("G_PC_LEVEL");
	return nGlobal;
}

int sub1() {
	int int1 = (1 + ((sub2() - 9) / 3));
	if ((int1 < 1)) {
		int1 = 1;
	}
	if ((int1 > 9)) {
		int1 = 9;
	}
	return int1;
}

int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int int3 = sub1();
	string string1 = IntToString(int3);
	string string3 = sub3();
	string string5 = (string1 + string3);
	int nGlobal = GetGlobalNumber("000_Quest_Crystal");
	if ((nGlobal == 0)) {
		return 1;
	}
	else {
		if ((nParam1 == 0)) {
			return (nGlobal != StringToInt(string5));
		}
		else {
			string string6 = IntToString(nGlobal);
			string string8 = (((("qcrystal" + "_") + GetStringLeft(string6, 1)) + "_") + GetStringRight(string6, 1));
			AurPostString(string8, 10, 12, 2.0);
			return ((nGlobal != StringToInt(string5)) && GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), string8)));
		}
	}
}

