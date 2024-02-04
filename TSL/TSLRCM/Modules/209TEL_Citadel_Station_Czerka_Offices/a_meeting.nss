void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		object oDoor_meeting = GetObjectByTag("door_meeting", 0);
		AssignCommand(oDoor_meeting, ActionUnlockObject(oDoor_meeting));
		DelayCommand(0.1, AssignCommand(oDoor_meeting, ActionOpenDoor(oDoor_meeting)));
		DelayCommand(2.2, AssignCommand(GetObjectByTag("bh_rodian", 0), ActionMoveToObject(GetObjectByTag("wp_bhrod_2", 0), 0, 1.0)));
		DelayCommand(2.0, AssignCommand(GetObjectByTag("bh_trandoshan", 0), ActionMoveToObject(GetObjectByTag("wp_bhtra_2", 0), 0, 1.0)));
	}
	if ((nParam1 == 2)) {
		ChangeToStandardFaction(GetObjectByTag("bh_rodian", 0), 1);
		ChangeToStandardFaction(GetObjectByTag("bh_trandoshan", 0), 1);
	}
	if ((nParam1 == 3)) {
		AssignCommand(GetObjectByTag("bh_rodian", 0), ActionMoveToObject(GetFirstPC(), 0, 1.0));
		GiveGoldToCreature(GetFirstPC(), 500);
	}
}