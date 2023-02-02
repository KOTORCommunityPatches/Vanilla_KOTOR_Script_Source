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
	object oJournalist = GetObjectByTag("Journalist", 0);
	object oVaklu_troop_cs = GetObjectByTag("vaklu_troop_cs", 0);
	object oVaklu_troop_cs2 = GetObjectByTag("vaklu_troop_cs2", 0);
	object object7 = GetObjectByTag("vaklu_troop_cs2", 1);
	object oSw_exit1 = GetObjectByTag("sw_exit1", 0);
	object oSw_exit = GetObjectByTag("sw_exit", 0);
	switch (nParam1) {
		case 0:
			SetLocalBoolean(oJournalist, 40, 1);
			DelayCommand(4.5, ActionDoCommand(SetCommandable(1, oVaklu_troop_cs)));
			DelayCommand(4.5, AssignCommand(oVaklu_troop_cs, ActionForceMoveToObject(oSw_exit1, 0, 1.0, 30.0)));
			DelayCommand(5.5, SetCommandable(0, oVaklu_troop_cs));
			DelayCommand(0.1, ActionDoCommand(SetCommandable(1, oVaklu_troop_cs2)));
			DelayCommand(0.1, AssignCommand(oVaklu_troop_cs2, ActionForceMoveToObject(oSw_exit1, 0, 1.0, 30.0)));
			DelayCommand(1.1, SetCommandable(0, oVaklu_troop_cs2));
			DelayCommand(0.2, ActionDoCommand(SetCommandable(1, object7)));
			DelayCommand(0.2, AssignCommand(object7, ActionForceMoveToObject(oSw_exit1, 0, 1.0, 30.0)));
			DelayCommand(1.2, SetCommandable(0, object7));
			DelayCommand(1.0, ActionDoCommand(SetCommandable(1, oJournalist)));
			DelayCommand(1.0, AssignCommand(oJournalist, ActionForceMoveToObject(oSw_exit1, 0, 1.0, 30.0)));
			DelayCommand(2.0, SetCommandable(0, oJournalist));
			break;
		case 1:
			DelayCommand(1.0, ActionDoCommand(SetCommandable(1, oJournalist)));
			DelayCommand(1.0, AssignCommand(oJournalist, ActionForceMoveToObject(oSw_exit, 0, 1.0, 30.0)));
			DelayCommand(2.0, SetCommandable(0, oJournalist));
			break;
		case 2:
			DelayCommand(4.0, ActionDoCommand(SetCommandable(1, oVaklu_troop_cs)));
			DelayCommand(4.0, AssignCommand(oVaklu_troop_cs, ActionForceMoveToObject(oSw_exit1, 0, 1.0, 30.0)));
			DelayCommand(5.0, SetCommandable(0, oVaklu_troop_cs));
			DelayCommand(0.1, ActionDoCommand(SetCommandable(1, oVaklu_troop_cs2)));
			DelayCommand(0.1, AssignCommand(oVaklu_troop_cs2, ActionForceMoveToObject(oSw_exit1, 0, 1.0, 30.0)));
			DelayCommand(1.1, SetCommandable(0, oVaklu_troop_cs2));
			DelayCommand(0.2, ActionDoCommand(SetCommandable(1, object7)));
			DelayCommand(0.2, AssignCommand(object7, ActionForceMoveToObject(oSw_exit1, 0, 1.0, 30.0)));
			DelayCommand(1.2, SetCommandable(0, object7));
			break;
	}
}
