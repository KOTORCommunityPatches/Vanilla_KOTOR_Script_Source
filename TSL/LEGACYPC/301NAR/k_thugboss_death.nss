void main() {
	object oDoor_thug_1 = GetObjectByTag("door_thug_1", 0);
	object oDoor_thug_2 = GetObjectByTag("door_thug_2", 0);
	AssignCommand(oDoor_thug_1, ActionUnlockObject(oDoor_thug_1));
	AssignCommand(oDoor_thug_1, ActionOpenDoor(oDoor_thug_1));
	AssignCommand(oDoor_thug_2, ActionUnlockObject(oDoor_thug_2));
	AssignCommand(oDoor_thug_2, ActionOpenDoor(oDoor_thug_2));
}

