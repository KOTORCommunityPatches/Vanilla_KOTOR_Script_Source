void main() {
	object oTrafficEastDoor = GetObjectByTag("TrafficEastDoor", 0);
	SetLocked(oTrafficEastDoor, 0);
	DelayCommand(0.6, AssignCommand(oTrafficEastDoor, ActionOpenDoor(oTrafficEastDoor)));
}
