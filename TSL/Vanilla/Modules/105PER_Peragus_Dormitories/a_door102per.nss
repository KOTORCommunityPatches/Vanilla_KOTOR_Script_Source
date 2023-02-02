void main() {
	object o102PERDoor = GetObjectByTag("102PERDoor", 0);
	SetLocked(o102PERDoor, 0);
	DelayCommand(1.0, AssignCommand(o102PERDoor, ActionOpenDoor(o102PERDoor)));
}
