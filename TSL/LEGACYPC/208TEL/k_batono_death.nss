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
	if ((GetGlobalNumber("202TEL_Batono") == 9)) {
		AddJournalQuestEntry("batono", 66, 0);
		SetGlobalNumber("202TEL_Batono", 10);
	}
	if ((GetGlobalNumber("202TEL_Batono") == 8)) {
		SetGlobalNumber("202TEL_Batono", 11);
		if (GetIsObjectValid(GetObjectByTag("merc1_batono", 0))) {
			SetLocalBoolean(GetObjectByTag("merc1_batono", 0), 37, 1);
			AssignCommand(GetObjectByTag("merc1_batono", 0), ClearAllActions());
			AssignCommand(GetObjectByTag("merc1_batono", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
		else {
			if (GetIsObjectValid(GetObjectByTag("merc2_batono", 0))) {
				SetLocalBoolean(GetObjectByTag("merc2_batono", 0), 37, 1);
				AssignCommand(GetObjectByTag("merc2_batono", 0), ClearAllActions());
				AssignCommand(GetObjectByTag("merc2_batono", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			else {
				AddJournalQuestEntry("batono", 63, 0);
			}
		}
	}
}

