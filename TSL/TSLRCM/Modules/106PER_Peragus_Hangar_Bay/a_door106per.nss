void main() {
	object o106DeconDoor = GetObjectByTag("106DeconDoor", 0);
	SetLocked(o106DeconDoor, 0);
	DelayCommand(1.0, AssignCommand(o106DeconDoor, ActionOpenDoor(o106DeconDoor)));
}