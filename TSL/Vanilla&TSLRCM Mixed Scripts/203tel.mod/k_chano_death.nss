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
	if ((GetGlobalNumber("203TEL_DroidInt_1") == 5)) {
		SetGlobalNumber("200TEL_CzerkaM_Exch", 15);
		SetGlobalNumber("000_Chano_Dead", 1);
		AddJournalQuestEntry("opo_chano", 22, 0);
		ExecuteScript("a_gbl_react", OBJECT_SELF, 0);
	}
	if (IsNPCPartyMember(6)) {
		if ((GetGlobalNumber("203TEL_DroidInt_1") == 4)) {
			AssignCommand(GetObjectByTag("kreia", 0), ClearAllActions());
			AssignCommand(GetObjectByTag("kreia", 0), ActionStartConversation(GetFirstPC(), "203kreia", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
	else {
		ExecuteScript("a_gbl_react", OBJECT_SELF, 0);
	}
}

