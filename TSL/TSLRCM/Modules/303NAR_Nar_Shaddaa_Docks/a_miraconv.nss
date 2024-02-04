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
int sub3();
int sub2();
int sub1();

int sub3() {
	int nAlign = GetGoodEvilValue(GetPCSpeaker());
	if (((nAlign >= 0) && (nAlign < 20))) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub2() {
	int nAlign = GetGoodEvilValue(GetPCSpeaker());
	if (((nAlign >= 20) && (nAlign < 40))) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub1() {
	if ((sub2() || sub3())) {
		return 1;
	}
	else {
		return 0;
	}
}

void main() {
	if ((GetGlobalNumber("351NAR_G0T0_Ship") > 0)) {
		return;
	}
	if ((GetGlobalNumber("303NAR_Hanharr_Side") > 0)) {
		return;
	}
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (sub1()) {
		return;
	}
	if ((GetGlobalNumber("300NAR_Bounty_Attack") < 1)) {
		return;
	}
	if ((GetGlobalNumber("300NAR_Bounty_Attack") > 2)) {
		return;
	}
	object oWP_MIRA = GetObjectByTag("WP_MIRA", 0);
	if ((!GetLocalBoolean(OBJECT_SELF, 31))) {
		CreateObject(1, "p_mira", GetLocation(oWP_MIRA), 0);
	}
	object oMira = GetObjectByTag("Mira", 0);
	object oTr_miraconv = GetObjectByTag("tr_miraconv", 0);
	if ((GetIsObjectValid(oMira) && (!GetLocalBoolean(OBJECT_SELF, 31)))) {
		SetLocalBoolean(OBJECT_SELF, 31, 1);
		object oRod_Jekk = GetObjectByTag("Rod_Jekk", 0);
		object oTran_Jekk = GetObjectByTag("Tran_Jekk", 0);
		object oTr_jekkdoor = GetObjectByTag("tr_jekkdoor", 0);
		DestroyObject(oRod_Jekk, 0.0, 0, 0.0, 0);
		DestroyObject(oTran_Jekk, 0.0, 0, 0.0, 0);
		DestroyObject(oTr_jekkdoor, 0.0, 0, 0.0, 0);
		AssignCommand(oMira, ClearAllActions());
		AssignCommand(oTr_miraconv, ActionStartConversation(GetFirstPC(), "MiraBoun", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}