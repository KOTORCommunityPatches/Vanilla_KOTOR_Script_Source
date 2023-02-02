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
	SetGlobalNumber("650DAN_006EBO_Trans", 1);
	object oWP_HAND_0 = GetObjectByTag("WP_HAND_0", 0);
	object oWP_SISTER1_0 = GetObjectByTag("WP_SISTER1_0", 0);
	object oWP_SISTER2_0 = GetObjectByTag("WP_SISTER2_0", 0);
	CreateObject(1, "p_handmaiden", GetLocation(oWP_HAND_0), 0);
	if ((GetGlobalBoolean("000_PLAYER_GENDER") == 0)) {
		CreateObject(1, "p_sister", GetLocation(oWP_SISTER1_0), 0);
		CreateObject(1, "p_sister2", GetLocation(oWP_SISTER2_0), 0);
	}
	if (IsAvailableCreature(4)) {
		SetNPCSelectability(4, 0);
	}
}
