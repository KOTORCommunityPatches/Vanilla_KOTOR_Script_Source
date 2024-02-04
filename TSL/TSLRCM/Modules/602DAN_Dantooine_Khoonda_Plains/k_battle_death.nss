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
	int int1 = 0;
	object oArea = GetArea(GetFirstPC());
	object oAreaObject = GetFirstObjectInArea(oArea, 1);
	while (GetIsObjectValid(oAreaObject)) {
		if ((GetStandardFaction(oAreaObject) == 1)) {
			(int1++);
		}
		oAreaObject = GetNextObjectInArea(oArea, 1);
	}
	AurPostString(("mercs remaining: " + IntToString(int1)), 5, 5, 5.0);
	if ((int1 == 0)) {
		SetGlobalNumber("602DAN_End", 1);
		SetGlobalNumber("601DAN_Battle_Mili", 4);
		object oDoor_Terena = GetObjectByTag("Door_Terena", 0);
		object oAo_door = GetObjectByTag("ao_door", 0);
		object oDantooine_Door_5 = GetObjectByTag("Dantooine Door 5", 0);
		SetLocked(oDoor_Terena, 0);
		SetLocked(oAo_door, 0);
		SetLocked(oDantooine_Door_5, 0);
		DelayCommand(0.5, AssignCommand(oDoor_Terena, ActionOpenDoor(oDoor_Terena)));
		DelayCommand(0.5, AssignCommand(oAo_door, ActionOpenDoor(oAo_door)));
		DelayCommand(0.5, AssignCommand(oDantooine_Door_5, ActionOpenDoor(oDantooine_Door_5)));
		object oPC = GetFirstPC();
		SetGlobalFadeOut(0.0, 2.0, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		SetGlobalFadeIn(3.0, 1.0, 0.0, 0.0, 0.0);
		DelayCommand(2.0, AssignCommand(oPC, ClearAllActions()));
		DelayCommand(2.0, AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("wp_kh_pc1", 0), 1)));
		DelayCommand(2.0, AssignCommand(GetObjectByTag("npc_vrook", 0), ActionJumpToObject(GetObjectByTag("wp_vrook", 0), 1)));
		DelayCommand(2.1, AssignCommand(GetObjectByTag("npc_terena", 0), ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}