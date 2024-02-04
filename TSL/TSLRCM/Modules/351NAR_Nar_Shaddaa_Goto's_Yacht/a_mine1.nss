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
	object oForceField1 = GetObjectByTag("ForceField1", 0);
	object oForceField2 = GetObjectByTag("ForceField2", 0);
	object oForceField3 = GetObjectByTag("ForceField3", 0);
	object oForceField4 = GetObjectByTag("ForceField4", 0);
	object oForceField5 = GetObjectByTag("ForceField5", 0);
	object oForceField6 = GetObjectByTag("ForceField6", 0);
	object oForceField7 = GetObjectByTag("ForceField7", 0);
	int nParam1 = GetScriptParameter(1);
	int int3;
	int int4 = 50;
	switch (nParam1) {
		case 0:
			SetGlobalNumber("800DRO_Console_56", 0);
			SetGlobalNumber("351NAR_Cell01", 1);
			SetLocked(oForceField1, 0);
			SetLocked(oForceField2, 0);
			SetLocked(oForceField3, 0);
			SetLocked(oForceField4, 0);
			SetLocked(oForceField5, 0);
			SetLocked(oForceField6, 0);
			SetLocked(oForceField7, 0);
			DelayCommand(1.0, AssignCommand(oForceField1, ActionOpenDoor(oForceField1)));
			DelayCommand(1.0, AssignCommand(oForceField2, ActionOpenDoor(oForceField2)));
			DelayCommand(1.0, AssignCommand(oForceField3, ActionOpenDoor(oForceField3)));
			DelayCommand(1.0, AssignCommand(oForceField4, ActionOpenDoor(oForceField4)));
			DelayCommand(1.0, AssignCommand(oForceField5, ActionOpenDoor(oForceField5)));
			DelayCommand(1.0, AssignCommand(oForceField6, ActionOpenDoor(oForceField6)));
			DelayCommand(1.0, AssignCommand(oForceField7, ActionOpenDoor(oForceField7)));
			break;
		case 1:
			ActionPauseConversation();
			SetLocked(oForceField1, 1);
			SetLocked(oForceField2, 1);
			SetLocked(oForceField3, 1);
			SetLocked(oForceField4, 1);
			SetLocked(oForceField5, 1);
			SetLocked(oForceField6, 1);
			SetLocked(oForceField7, 1);
			DelayCommand(1.0, AssignCommand(oForceField1, ActionCloseDoor(oForceField1)));
			DelayCommand(1.0, AssignCommand(oForceField2, ActionCloseDoor(oForceField2)));
			DelayCommand(1.0, AssignCommand(oForceField3, ActionCloseDoor(oForceField3)));
			DelayCommand(1.0, AssignCommand(oForceField4, ActionCloseDoor(oForceField4)));
			DelayCommand(1.0, AssignCommand(oForceField5, ActionCloseDoor(oForceField5)));
			DelayCommand(1.0, AssignCommand(oForceField6, ActionCloseDoor(oForceField6)));
			DelayCommand(1.0, AssignCommand(oForceField7, ActionCloseDoor(oForceField7)));
			DelayCommand(4.0, ActionResumeConversation());
			break;
		case 2:
			DelayCommand(0.2, SpawnMine(5, GetLocation(GetObjectByTag("WP_mine_01", 0)), 0, 0, OBJECT_INVALID));
			DelayCommand(0.5, SpawnMine(5, GetLocation(GetObjectByTag("WP_mine_02", 0)), 0, 0, OBJECT_INVALID));
			DelayCommand(0.8, SpawnMine(5, GetLocation(GetObjectByTag("WP_mine_03", 0)), 0, 0, OBJECT_INVALID));
			DelayCommand(1.1, SpawnMine(5, GetLocation(GetObjectByTag("WP_mine_04", 0)), 0, 0, OBJECT_INVALID));
			DelayCommand(1.4, SpawnMine(5, GetLocation(GetObjectByTag("WP_mine_05", 0)), 0, 0, OBJECT_INVALID));
			break;
		case 3:
			DelayCommand(0.2, SpawnMine(5, GetLocation(GetObjectByTag("WP_mine_11", 0)), 0, 0, OBJECT_INVALID));
			DelayCommand(0.5, SpawnMine(5, GetLocation(GetObjectByTag("WP_mine_12", 0)), 0, 0, OBJECT_INVALID));
			DelayCommand(0.8, SpawnMine(5, GetLocation(GetObjectByTag("WP_mine_13", 0)), 0, 0, OBJECT_INVALID));
			DelayCommand(1.1, SpawnMine(5, GetLocation(GetObjectByTag("WP_mine_14", 0)), 0, 0, OBJECT_INVALID));
			DelayCommand(1.4, SpawnMine(5, GetLocation(GetObjectByTag("WP_mine_15", 0)), 0, 0, OBJECT_INVALID));
			break;
	}
}