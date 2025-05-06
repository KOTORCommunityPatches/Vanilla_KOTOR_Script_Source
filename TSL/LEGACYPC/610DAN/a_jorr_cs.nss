void main() {
	int nParam1 = GetScriptParameter(1);
	object oPC = GetFirstPC();
	object oJorr_door = GetObjectByTag("jorr_door", 0);
	SetLocked(oJorr_door, 0);
	DelayCommand(0.5, AssignCommand(oJorr_door, ActionOpenDoor(oJorr_door)));
	AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("wp_jorr_pc", 0), 1));
	DelayCommand(1.0, AssignCommand(GetObjectByTag("npc_jorran", 0), ActionMoveToObject(GetObjectByTag("wp_jorr_1", 0), 1, 1.0)));
}

