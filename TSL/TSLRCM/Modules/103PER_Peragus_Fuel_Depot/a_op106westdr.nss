void main() {
	object oTrafficWestDoor = GetObjectByTag("TrafficWestDoor", 0);
	SetLocked(oTrafficWestDoor, 0);
	DelayCommand(0.6, AssignCommand(oTrafficWestDoor, ActionOpenDoor(oTrafficWestDoor)));
}