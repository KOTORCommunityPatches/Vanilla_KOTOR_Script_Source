void main() {
	object oDoor = GetObjectByTag("k38b_dor_locked", 0);
	AssignCommand(oDoor, ActionDoCommand(SetLocked(oDoor, FALSE)));
	AssignCommand(oDoor, ActionOpenDoor(oDoor));
}
