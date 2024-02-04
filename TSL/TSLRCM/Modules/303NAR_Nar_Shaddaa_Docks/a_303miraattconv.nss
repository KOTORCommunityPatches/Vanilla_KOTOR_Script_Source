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

void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if ((GetGlobalNumber("303NAR_Hanharr_Side") != 1)) {
		return;
	}
	object oWP_303MIRAATT_MIRA_0 = GetObjectByTag("WP_303MIRAATT_MIRA_0", 0);
	if ((!GetLocalBoolean(OBJECT_SELF, 31))) {
		SetLocalBoolean(OBJECT_SELF, 31, 1);
		CreateObject(1, "p_mira", GetLocation(oWP_303MIRAATT_MIRA_0), 0);
	}
	object oMira = GetObjectByTag("Mira", 0);
	object o303MiraAtt = GetObjectByTag("303MiraAtt", 0);
	if ((GetIsObjectValid(o303MiraAtt) && (!GetLocalBoolean(OBJECT_SELF, 32)))) {
		SetLocalBoolean(OBJECT_SELF, 32, 1);
		AssignCommand(oMira, ClearAllActions());
		AssignCommand(o303MiraAtt, ActionStartConversation(GetFirstPC(), "MiraAtt", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}