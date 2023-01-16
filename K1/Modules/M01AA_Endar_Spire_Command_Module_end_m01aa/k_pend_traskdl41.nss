void main() {
	
	object oDoor = GetObjectByTag("end_door01", 0);
	
	AssignCommand(oDoor, ActionCloseDoor(oDoor));
	SetLocked(oDoor, TRUE);
}
