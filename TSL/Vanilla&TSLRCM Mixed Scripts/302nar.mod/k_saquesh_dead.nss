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
	int int1 = GetJournalEntry("30001");
	int int3 = GetJournalEntry("30004");
	int int5 = GetJournalEntry("30003");
	IncrementGlobalNumber("300NAR_Exchange_Gap", 1);
	GivePlotXP("Nar_Shaddaa_Plot_Base_XP", 100);
	if (((((int1 == 5) || (int1 == 4)) || (int1 == 6)) || (int1 == 22))) {
		AddJournalQuestEntry("30001", 23, 0);
	}
	else {
		if (((int1 == 21) || (int1 == 31))) {
			AddJournalQuestEntry("30001", 30, 0);
		}
		else {
			if (((int1 != 0) && (int1 != 29))) {
				AddJournalQuestEntry("30001", 20, 1);
			}
		}
	}
	if ((int3 != 0)) {
		AddJournalQuestEntry("30004", 32, 1);
		if (((int5 == 22) || (int5 == 11))) {
			AddJournalQuestEntry("30004", 42, 1);
		}
		if ((int5 == 12)) {
			AddJournalQuestEntry("30004", 44, 1);
		}
	}
	SetGlobalNumber("302NAR_Saquesh", 2);
	object oExchangeDoor = GetObjectByTag("ExchangeDoor", 0);
	SetLocked(oExchangeDoor, 0);
	DelayCommand(1.0, AssignCommand(oExchangeDoor, ActionOpenDoor(oExchangeDoor)));
}

