void main() {
	object oDoor = GetObjectByTag("k38b_dor_locked", 0);
	AssignCommand(oDoor, ActionCloseDoor(oDoor));
	AssignCommand(oDoor, ActionDoCommand(SetLocked(oDoor, TRUE)));
}
