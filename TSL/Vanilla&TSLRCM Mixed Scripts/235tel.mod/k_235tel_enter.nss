void main() {
	HoldWorldFadeInForDialog();
	object oPC = GetFirstPC();
	object object3 = SpawnAvailableNPC(0, GetLocation(GetWaypointByTag("AttonSpawn")));
	AssignCommand(oPC, ActionJumpToLocation(GetLocation(GetWaypointByTag("PCSpawn"))));
	object object7 = SpawnAvailableNPC(6, GetLocation(GetWaypointByTag("KreiaSpawn")));
	AssignCommand(object7, ClearAllActions());
	if ((GetGlobalNumber("232TEL_Reactor") == 1)) {
		object object10 = SpawnAvailableNPC(1, GetLocation(GetWaypointByTag("BaoDurSpawn")));
		AssignCommand(object10, ClearAllActions());
		DelayCommand(0.1, SetLockOrientationInDialog(object10, 1));
	}
	DelayCommand(0.2, SetLockOrientationInDialog(object3, 1));
	DelayCommand(0.3, AssignCommand(object3, ClearAllActions()));
	DelayCommand(0.5, AssignCommand(object3, ActionStartConversation(oPC, "Attoncrash", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

