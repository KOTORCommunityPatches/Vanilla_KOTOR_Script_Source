void main() {
	object oMorgueDoor = GetObjectByTag("MorgueDoor", 0);
	SetLocked(oMorgueDoor, 0);
	DelayCommand(1.0, AssignCommand(oMorgueDoor, ActionOpenDoor(oMorgueDoor)));
}

