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
	if (IsAvailableCreature(10)) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((!IsObjectPartyMember(oEntering))) {
		return;
	}
	if ((!GetLocalBoolean(OBJECT_SELF, 31))) {
		object oWP_HANHARR_VOGGA_0 = GetObjectByTag("WP_HANHARR_VOGGA_0", 0);
		CreateObject(1, "p_hanharr001", GetLocation(oWP_HANHARR_VOGGA_0), 0);
		object oHanharr = GetObjectByTag("Hanharr", 0);
		object o303Han = GetObjectByTag("303Han", 0);
		if (GetIsObjectValid(oHanharr)) {
			SetLocalBoolean(OBJECT_SELF, 31, 1);
			AssignCommand(oHanharr, ClearAllActions());
			AssignCommand(oHanharr, ActionStartConversation(GetFirstPC(), "303Han", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}
