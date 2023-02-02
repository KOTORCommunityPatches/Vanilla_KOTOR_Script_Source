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
	object oPC = GetFirstPC();
	if (((GetEnteringObject() != oPC) || GetGlobalBoolean("300NAR_Visquis_Call"))) {
		return;
	}
	object oWP_303MIRA_MIRA_0 = GetObjectByTag("WP_303MIRA_MIRA_0", 0);
	object oWP_303MIRA_HANHARR_0 = GetObjectByTag("WP_303MIRA_HANHARR_0", 0);
	if ((!GetLocalBoolean(OBJECT_SELF, 31))) {
		CreateObject(1, "p_mira", GetLocation(oWP_303MIRA_MIRA_0), 0);
		CreateObject(1, "p_hanharr", GetLocation(oWP_303MIRA_HANHARR_0), 0);
	}
	object oHanharr = GetObjectByTag("Hanharr", 0);
	object oMira = GetObjectByTag("Mira", 0);
	object o303Mira = GetObjectByTag("303Mira", 0);
	if (GetIsObjectValid(o303Mira)) {
		SetLocalBoolean(OBJECT_SELF, 31, 1);
		AssignCommand(oHanharr, ClearAllActions());
		AssignCommand(oMira, ClearAllActions());
		SetLockOrientationInDialog(oPC, 1);
		AssignCommand(o303Mira, ActionStartConversation(oPC, "303Mira", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		AssignCommand(oMira, ActionUnequipItem(GetItemInSlot(4, OBJECT_SELF), 0));
		AssignCommand(oHanharr, ActionUnequipItem(GetItemInSlot(4, OBJECT_SELF), 0));
		AssignCommand(oHanharr, ActionUnequipItem(GetItemInSlot(5, OBJECT_SELF), 0));
	}
}
