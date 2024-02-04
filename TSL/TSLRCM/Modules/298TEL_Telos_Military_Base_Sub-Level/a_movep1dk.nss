void main() {
	object oP1DK = GetObjectByTag("P1DK", 0);
	object oPC = GetFirstPC();
	object oP1DKdoor = GetObjectByTag("P1DKdoor", 0);
	SetLocked(oP1DKdoor, 0);
	DelayCommand(0.3, AssignCommand(oP1DKdoor, ActionOpenDoor(oP1DKdoor)));
	DelayCommand(1.0, AssignCommand(oP1DK, ActionForceMoveToObject(GetObjectByTag("WP_P1DK_1", 0), 0, 1.0, 30.0)));
	DelayCommand(3.5, AssignCommand(oPC, ActionMoveToLocation(Location(Vector(30.655483, 163.43448, 2.94099), 180.0), 0)));
	DelayCommand(3.8, AssignCommand(oPC, ActionDoCommand(SetFacingPoint(GetPosition(oP1DK)))));
	DelayCommand(3.8, AssignCommand(oPC, SetLockOrientationInDialog(oPC, 1)));
}