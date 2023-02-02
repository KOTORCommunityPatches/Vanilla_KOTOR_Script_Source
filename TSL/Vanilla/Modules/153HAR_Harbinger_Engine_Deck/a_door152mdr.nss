void main() {
	object o152HARMaintDoor = GetObjectByTag("152HARMaintDoor", 0);
	SetLocked(o152HARMaintDoor, 0);
	DelayCommand(1.0, AssignCommand(o152HARMaintDoor, ActionOpenDoor(o152HARMaintDoor)));
}
