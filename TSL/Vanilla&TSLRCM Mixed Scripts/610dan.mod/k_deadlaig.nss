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
	IncrementGlobalNumber("000_lairgrek_Dead", 1);
	int nGlobal = GetGlobalNumber("000_lairgrek_Dead");
	ExecuteScript("k_ai_master", OBJECT_SELF, intGLOB_7);
	if ((GetGlobalNumber("000_lairgrek_Dead") == 3)) {
		object oKaevee_Door1 = GetObjectByTag("Kaevee_Door1", 0);
		object oC_laigrek_deadly01 = GetObjectByTag("c_laigrek_deadly01", 0);
		object oC_laigrek_deadly02 = GetObjectByTag("c_laigrek_deadly02", 0);
		object oC_laigrek_deadly03 = GetObjectByTag("c_laigrek_deadly03", 0);
		DelayCommand(0.5, SetLocked(oKaevee_Door1, 0));
		DelayCommand(0.5, AssignCommand(oKaevee_Door1, ActionOpenDoor(oKaevee_Door1)));
		DelayCommand(0.8, AssignCommand(oC_laigrek_deadly01, ActionForceMoveToObject(GetObjectByTag("wp_laig_1", 0), 1, 1.0, 30.0)));
		DelayCommand(0.8, AssignCommand(oC_laigrek_deadly02, ActionForceMoveToObject(GetObjectByTag("wp_laig_1", 0), 1, 1.0, 30.0)));
		DelayCommand(0.8, AssignCommand(oC_laigrek_deadly03, ActionForceMoveToObject(GetObjectByTag("wp_laig_1", 0), 1, 1.0, 30.0)));
	}
	else {
		if ((GetGlobalNumber("000_lairgrek_Dead") == 6)) {
			object oKaevee = GetObjectByTag("Kaevee", 0);
			object oKaevee_Door2 = GetObjectByTag("Kaevee_Door2", 0);
			DelayCommand(0.5, SetLocked(oKaevee_Door2, 0));
			DelayCommand(0.5, AssignCommand(oKaevee_Door2, ActionOpenDoor(oKaevee_Door2)));
			if (GetIsObjectValid(oKaevee)) {
				AssignCommand(oKaevee, ClearAllActions());
				DelayCommand(0.5, AssignCommand(oKaevee, ActionStartConversation(GetFirstPC(), "kaevee", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			}
		}
	}
}

