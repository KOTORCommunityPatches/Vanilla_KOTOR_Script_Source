void main() {
	
	object oDoor = GetObjectByTag("tar02_aptdoor", 0);
	
	AssignCommand(oDoor, ActionCloseDoor(oDoor));
	
	RevealMap(GetPosition(GetFirstPC()), -1);
}
