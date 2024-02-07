void main() {
	object oCzerkam = GetObjectByTag("czerkam", 0);
	SetLocked(oCzerkam, 0);
	AssignCommand(oCzerkam, ActionOpenDoor(oCzerkam));
}

