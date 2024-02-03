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
	if ((GetEnteringObject() != GetFirstPC())) {
		return;
	}
	if ((GetGlobalNumber("305NAR_Visquis_Attack") == 0)) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 34)) {
		return;
	}
	AurPostString("a_post305", 20, 20, 5.0);
	object object3;
	string string1;
	if ((GetGlobalNumber("303NAR_Hanharr_Side") == 1)) {
		object oWp_kreia_whend = GetWaypointByTag("wp_kreia_whend");
		AurPostString("a_post305: hanharr", 20, 21, 5.0);
		SpawnAvailableNPC(10, GetLocation(GetObjectByTag("WP_MIRA_MIRA_APT_0", 0)));
		string1 = "hanapt";
		SpawnAvailableNPC(6, GetLocation(oWp_kreia_whend));
	}
	else {
		AurPostString("a_post305: mira", 20, 22, 5.0);
		SpawnAvailableNPC(7, GetLocation(GetObjectByTag("WP_MIRA_MIRA_APT_0", 0)));
		string1 = "miraapt";
	}
	object oInvisoKreia = GetObjectByTag("InvisoKreia", 0);
	if (GetIsObjectValid(oInvisoKreia)) {
		SetLocalBoolean(OBJECT_SELF, 34, 1);
		AurPostString(("Conversation " + string1), 20, 23, 5.0);
		AssignCommand(oInvisoKreia, ClearAllActions());
		DelayCommand(0.1, AssignCommand(oInvisoKreia, ActionStartConversation(GetPartyLeader(), string1, 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}

