void main() {
	object o152HAREngDoor = GetObjectByTag("152HAREngDoor", 0);
	SetLocked(o152HAREngDoor, 0);
	DelayCommand(1.0, AssignCommand(o152HAREngDoor, ActionOpenDoor(o152HAREngDoor)));
}

