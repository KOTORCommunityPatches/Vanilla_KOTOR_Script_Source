void main() {
	object oAudienceDoor = GetObjectByTag("AudienceDoor", 0);
	SetLocked(oAudienceDoor, 0);
	DelayCommand(0.1, AssignCommand(oAudienceDoor, ActionOpenDoor(oAudienceDoor)));
}