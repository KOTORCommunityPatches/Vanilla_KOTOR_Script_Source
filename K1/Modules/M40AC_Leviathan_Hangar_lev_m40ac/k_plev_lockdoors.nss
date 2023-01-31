void main() {
	
	object oDoor = GetObjectByTag("lev40_blastdoorb", 0);
	
	AssignCommand(oDoor, ActionCloseDoor(oDoor));
	SetLocked(oDoor, TRUE);
	
	oDoor = GetObjectByTag("lev40_hngcntrlb", 0);
	
	AssignCommand(oDoor, ActionCloseDoor(oDoor));
	SetLocked(oDoor, TRUE);
}