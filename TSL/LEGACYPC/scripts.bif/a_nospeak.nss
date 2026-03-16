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
int sub1(object objectParam1);

int sub1(object objectParam1) {
	string string1 = GetTag(objectParam1);
	if ((!GetIsObjectValid(objectParam1))) {
		return (-1);
	}
	if ((string1 == "atton")) {
		return 0;
	}
	if ((string1 == "bao")) {
		return 1;
	}
	if ((string1 == "cand")) {
		return 2;
	}
	if ((string1 == "g0t0")) {
		return 3;
	}
	if ((string1 == "handmaiden")) {
		return 4;
	}
	if ((string1 == "hk47")) {
		return 5;
	}
	if ((string1 == "kreia")) {
		return 6;
	}
	if ((string1 == "t3m4")) {
		return 8;
	}
	if ((string1 == "visas")) {
		return 9;
	}
	if ((string1 == "mira")) {
		return 7;
	}
	return (-1);
}

void main() {
	int int1 = sub1(OBJECT_SELF);
	int nGlobal = GetGlobalNumber("K_CURRENT_PLANET");
	string string1 = ("NPC_INIT_PLANET_" + IntToString(int1));
	SetGlobalNumber(string1, nGlobal);
}

