void main() {
	object oDoor_training = GetObjectByTag("door_training", 0);
	AssignCommand(oDoor_training, ActionUnlockObject(oDoor_training));
	AssignCommand(oDoor_training, ActionOpenDoor(oDoor_training));
}

