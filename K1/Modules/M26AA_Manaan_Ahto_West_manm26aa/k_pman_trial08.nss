void main() {
	
	object oDoor = GetObjectByTag("man26aa_door02", 0);
	
	SetLocked(oDoor, TRUE);
	
	AssignCommand(oDoor, ActionCloseDoor(oDoor));
}
