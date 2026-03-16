void main() {
	object o105PERDoor = GetObjectByTag("105PERDoor", 0);
	SetLocked(o105PERDoor, 0);
	DelayCommand(1.0, AssignCommand(o105PERDoor, ActionOpenDoor(o105PERDoor)));
}

