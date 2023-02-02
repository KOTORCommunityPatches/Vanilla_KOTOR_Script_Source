void main() {
	object oMedClosetDoor = GetObjectByTag("MedClosetDoor", 0);
	SetLocked(oMedClosetDoor, 0);
	DelayCommand(1.0, AssignCommand(oMedClosetDoor, ActionOpenDoor(oMedClosetDoor)));
}
