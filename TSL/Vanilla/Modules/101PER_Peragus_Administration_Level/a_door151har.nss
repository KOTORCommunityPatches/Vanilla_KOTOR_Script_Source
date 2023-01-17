void main() {
	object o151HARDoor = GetObjectByTag("151HARDoor", 0);
	SetLocked(o151HARDoor, 0);
	DelayCommand(1.0, AssignCommand(o151HARDoor, ActionOpenDoor(o151HARDoor)));
}

