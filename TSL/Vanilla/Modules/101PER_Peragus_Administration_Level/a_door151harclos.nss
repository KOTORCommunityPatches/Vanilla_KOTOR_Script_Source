void main() {
	object o151HARDoor = GetObjectByTag("151HARDoor", 0);
	SetLocked(o151HARDoor, 1);
	DelayCommand(1.0, AssignCommand(o151HARDoor, ActionCloseDoor(o151HARDoor)));
}
