void main() {
	object oFirstDoor = GetObjectByTag("FirstDoor", 0);
	DelayCommand(0.1, AssignCommand(oFirstDoor, ActionCloseDoor(oFirstDoor)));
}

