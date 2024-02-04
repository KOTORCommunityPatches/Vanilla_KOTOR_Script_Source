void main() {
	object oHighSecurityDoorInterior = GetObjectByTag("HighSecurityDoorInterior", 0);
	DelayCommand(0.5, SetLocked(oHighSecurityDoorInterior, 0));
	DelayCommand(1.0, AssignCommand(oHighSecurityDoorInterior, ActionOpenDoor(oHighSecurityDoorInterior)));
	DelayCommand(1.5, AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("WP_PC_VENT_1", 0), 0, 1.0)));
}