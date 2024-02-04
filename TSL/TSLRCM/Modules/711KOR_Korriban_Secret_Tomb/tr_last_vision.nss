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
int sub1();

int sub1() {
	int nAlign = GetGoodEvilValue(GetPCSpeaker());
	if (((nAlign >= 0) && (nAlign < 20))) {
		return 1;
	}
	else {
		return 0;
	}
}

void main() {
	if ((GetGlobalNumber("711KOR_Vision_Track") <= 5)) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 34)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 34, 1);
	object oG_darkpc_male;
	object oWp_pcfoil = GetObjectByTag("wp_pcfoil", 0);
	int int4 = ((GetLevelByPosition(1, GetFirstPC()) + GetLevelByPosition(2, GetFirstPC())) - 10);
	effect effect1;
	if ((!sub1())) {
		SetMinOneHP(oEntering, 1);
	}
	SetGlobalNumber("711KOR_Vision_Track", 9);
	if ((GetGender(oEntering) == 1)) {
		oG_darkpc_male = CreateObject(1, "g_darkpc", GetLocation(oWp_pcfoil), 0);
	}
	else {
		oG_darkpc_male = CreateObject(1, "g_darkpc_male", GetLocation(oWp_pcfoil), 0);
	}
	DuplicateHeadAppearance(oG_darkpc_male, GetFirstPC());
}