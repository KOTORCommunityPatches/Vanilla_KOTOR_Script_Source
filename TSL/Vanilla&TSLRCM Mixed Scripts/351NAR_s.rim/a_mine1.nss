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
	int int4 = 50;
	if ((nParam1 == 0)) {
		DelayCommand(0.2, SpawnMine(5, GetLocation(GetObjectByTag("WP_mine_01", 0)), 0, 0, OBJECT_INVALID));
		DelayCommand(0.5, SpawnMine(5, GetLocation(GetObjectByTag("WP_mine_02", 0)), 0, 0, OBJECT_INVALID));
		DelayCommand(0.8, SpawnMine(5, GetLocation(GetObjectByTag("WP_mine_03", 0)), 0, 0, OBJECT_INVALID));
		DelayCommand(1.1, SpawnMine(5, GetLocation(GetObjectByTag("WP_mine_04", 0)), 0, 0, OBJECT_INVALID));
		DelayCommand(1.4, SpawnMine(5, GetLocation(GetObjectByTag("WP_mine_05", 0)), 0, 0, OBJECT_INVALID));
	}
	else {
		if ((nParam1 == 1)) {
			DelayCommand(0.2, SpawnMine(5, GetLocation(GetObjectByTag("WP_mine_11", 0)), 0, 0, OBJECT_INVALID));
			DelayCommand(0.5, SpawnMine(5, GetLocation(GetObjectByTag("WP_mine_12", 0)), 0, 0, OBJECT_INVALID));
			DelayCommand(0.8, SpawnMine(5, GetLocation(GetObjectByTag("WP_mine_13", 0)), 0, 0, OBJECT_INVALID));
			DelayCommand(1.1, SpawnMine(5, GetLocation(GetObjectByTag("WP_mine_14", 0)), 0, 0, OBJECT_INVALID));
			DelayCommand(1.4, SpawnMine(5, GetLocation(GetObjectByTag("WP_mine_15", 0)), 0, 0, OBJECT_INVALID));
		}
	}
	SetGlobalNumber("800DRO_Console_56", 0);
	int3 = 0;
	while ((int3 <= int4)) {
		object oG_T_TRAP006 = GetObjectByTag("G_T_TRAP006", int3);
		if (GetIsObjectValid(oG_T_TRAP006)) {
			SetTrapDetectedBy(oG_T_TRAP006, GetPartyLeader());
		}
		return;
		(int3++);
	}
}

