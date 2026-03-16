// Globals
	int intGLOB_1 = 1001;
	int intGLOB_2 = 1002;
	int intGLOB_3 = 1003;
	int intGLOB_4 = 1004;
	int intGLOB_5 = 1005;
	int intGLOB_6 = 1006;
	int intGLOB_7 = 1007;
	int intGLOB_8 = 1008;
	int intGLOB_9 = 1009;
	int intGLOB_10 = 1010;
	int intGLOB_11 = 1011;
	int intGLOB_12 = 1012;
	int intGLOB_13 = 2001;
	int intGLOB_14 = 2002;
	int intGLOB_15 = 2003;
	int intGLOB_16 = 2004;
	int intGLOB_17 = 2005;
	int intGLOB_18 = 2006;
	int intGLOB_19 = 2007;
	int intGLOB_20 = 2008;
	int intGLOB_21 = 2009;
	int intGLOB_22 = 2010;
	int intGLOB_23 = 2011;
	int intGLOB_24 = 2012;
	int intGLOB_25 = 2013;
	int intGLOB_26 = 2014;
	int intGLOB_27 = 3001;
	int intGLOB_28 = 3002;
	int intGLOB_29 = 3003;
	int intGLOB_30 = 4001;

void main() {
	ExecuteScript("k_ai_master", OBJECT_SELF, intGLOB_7);
	IncrementGlobalNumber("222TEL_Sith_Dead", 1);
	if ((GetGlobalNumber("222TEL_Sith_Dead") == 6)) {
		AssignCommand(GetObjectByTag("ond_sold", 0), ActionMoveToObject(GetObjectByTag("wp_ondsold1_01", 0), 1, 1.0));
		AssignCommand(GetObjectByTag("ond_sold", 1), ActionMoveToObject(GetObjectByTag("wp_ondsold2_01", 0), 1, 1.0));
		AssignCommand(GetObjectByTag("ond_door", 0), ActionMoveToObject(GetObjectByTag("wp_onddoor_01", 0), 1, 1.0));
		SetLocalBoolean(GetObjectByTag("ond_wound", 0), 36, 0);
		SetLocalBoolean(GetObjectByTag("ond_wound", 0), 38, 1);
		AssignCommand(GetObjectByTag("ond_wound", 0), ActionMoveToObject(GetObjectByTag("wp_ondwound_01", 0), 0, 1.0));
		AddJournalQuestEntry("fuel_sith", 20, 0);
	}
}

