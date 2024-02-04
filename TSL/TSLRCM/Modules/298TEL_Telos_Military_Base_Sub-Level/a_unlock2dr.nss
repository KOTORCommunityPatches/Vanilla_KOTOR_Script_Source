void main() {
	object oBlastDoor1 = GetObjectByTag("BlastDoor1", 0);
	object oBlastDoor2 = GetObjectByTag("BlastDoor2", 0);
	SetLocked(oBlastDoor1, 0);
	SetLocked(oBlastDoor2, 0);
	AssignCommand(oBlastDoor1, ActionOpenDoor(oBlastDoor1));
	AssignCommand(oBlastDoor2, ActionOpenDoor(oBlastDoor2));
}