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
	if (GetEncounterActive(GetObjectByTag("man28a_sel2", 0))) {
		SetEncounterActive(0, GetObjectByTag("man28a_sel1", 0));
		SetEncounterActive(0, GetObjectByTag("man28a_sel2", 0));
		CreateObject(1, "man28_inssel03", GetLocation(GetWaypointByTag("man_sel1")), 0);
		CreateObject(1, "man28_inssel02", GetLocation(GetWaypointByTag("man_sel1")), 0);
		CreateObject(1, "man28_inssel03", GetLocation(GetWaypointByTag("man_sel1")), 0);
		CreateObject(1, "man28_inssel03", GetLocation(GetWaypointByTag("man_sel2")), 0);
		CreateObject(1, "man28_inssel03", GetLocation(GetWaypointByTag("man_sel2")), 0);
		CreateObject(1, "man28_inssel04", GetLocation(GetWaypointByTag("man_sel2")), 0);
		CreateObject(1, "man28_inssel02", GetLocation(GetWaypointByTag("man_sel3")), 0);
		CreateObject(1, "man28_inssel02", GetLocation(GetWaypointByTag("man_sel3")), 0);
		CreateObject(1, "man28_inssel04", GetLocation(GetWaypointByTag("man_sel3")), 0);
		ActionPauseConversation();
		ActionWait(0.5);
		ActionResumeConversation();
	}
}
