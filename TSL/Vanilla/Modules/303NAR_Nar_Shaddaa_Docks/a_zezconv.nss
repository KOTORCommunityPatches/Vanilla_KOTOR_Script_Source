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
	if ((GetGlobalNumber("305NAR_Visquis_Attack") > 0)) {
		return;
	}
	if ((GetGlobalNumber("304NAR_Visquis_Meet") != 1)) {
		return;
	}
	object oWP_ZEZ_0 = GetObjectByTag("WP_ZEZ_0", 0);
	if ((!GetLocalBoolean(OBJECT_SELF, 31))) {
		CreateObject(1, "Npc_vrook002", GetLocation(oWP_ZEZ_0), 0);
	}
	object oZezKaiEl = GetObjectByTag("ZezKaiEl", 0);
	if (GetIsObjectValid(oZezKaiEl)) {
		SetLocalBoolean(OBJECT_SELF, 31, 1);
		AssignCommand(oZezKaiEl, ClearAllActions());
		AssignCommand(oZezKaiEl, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
