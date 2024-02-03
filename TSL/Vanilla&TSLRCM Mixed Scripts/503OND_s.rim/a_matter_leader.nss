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
	int nParam1 = GetScriptParameter(1);
	int int3;
	object object1;
	switch (nParam1) {
		case 0:
			int3 = GetJournalEntry("matter_leader");
			AddJournalQuestEntry("matter_leader", (int3 + 10), 0);
			SetGlobalNumber("503OND_Gelesi_Gone", 1);
			break;
		case 1:
			int3 = GetJournalEntry("matter_leader");
			AddJournalQuestEntry("matter_leader", (int3 + 10), 0);
			DelayCommand(3.0, DestroyObject(GetObjectByTag("gelesi", 0), 0.0, 0, 0.0, 0));
			SetGlobalNumber("503OND_Gelesi_Gone", 2);
			{
				object oNpc_panar = GetObjectByTag("npc_panar", 0);
				DelayCommand(3.0, AssignCommand(oNpc_panar, ClearAllActions()));
				DelayCommand(3.0, AssignCommand(oNpc_panar, ActionJumpToObject(GetObjectByTag("sw_exit", 0), 1)));
				DelayCommand(5.0, AssignCommand(oNpc_panar, ActionForceMoveToObject(GetObjectByTag("wp_panar", 0), 0, 1.0, 30.0)));
				DelayCommand(3.0, DestroyObject(GetObjectByTag("thugcs", 0), 0.0, 0, 0.0, 0));
			}
			break;
		case 2:
			{
				object object8 = GetObjectByTag("npc_panar", 0);
				object oThugcs = GetObjectByTag("thugcs", 0);
				object oGelesi = GetObjectByTag("gelesi", 0);
				DelayCommand(3.5, AssignCommand(object8, ActionMoveToObject(GetObjectByTag("sw_exit", 0), 0, 1.0)));
				DelayCommand(0.5, AssignCommand(oThugcs, ActionMoveToObject(GetObjectByTag("sw_exit", 0), 0, 1.0)));
				DelayCommand(2.0, AssignCommand(oGelesi, ActionMoveToObject(GetObjectByTag("sw_exit", 0), 0, 1.0)));
			}
			break;
		case 3:
			{
				object object17 = GetObjectByTag("npc_panar", 0);
				AssignCommand(object17, ActionJumpToObject(GetObjectByTag("wp_panar_escort", 0), 1));
				CreateObject(1, "npc_bthug002", GetLocation(GetObjectByTag("wp_thug_escort", 0)), 0);
			}
			break;
	}
}

