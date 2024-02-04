void main() {
	object oDoor_meeting = GetObjectByTag("door_meeting", 0);
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		AssignCommand(oDoor_meeting, ActionUnlockObject(oDoor_meeting));
		DelayCommand(0.1, AssignCommand(oDoor_meeting, ActionOpenDoor(oDoor_meeting)));
		SetLocalBoolean(oDoor_meeting, 38, 1);
	}
	if ((nParam1 == 2)) {
		AssignCommand(oDoor_meeting, ActionCloseDoor(oDoor_meeting));
		DelayCommand(0.5, AssignCommand(oDoor_meeting, ActionLockObject(oDoor_meeting)));
	}
	if ((nParam1 == 3)) {
		CreateObject(1, "n_rodian_bh", GetLocation(GetObjectByTag("wp_bhrod_1", 0)), 0);
		CreateObject(1, "n_trandoshan_bh", GetLocation(GetObjectByTag("wp_bhtra_1", 0)), 0);
		SpawnAvailableNPC(6, Location(Vector(44.273853, (-38.714764), 0.06339002), 0.0));
		DelayCommand(23.0, AssignCommand(GetObjectByTag("bh_trandoshan", 0), ActionStartConversation(GetFirstPC(), "", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}