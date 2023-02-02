void main() {
	object oMedChamber = GetObjectByTag("MedChamber", 0);
	SetLocked(oMedChamber, 0);
	DelayCommand(1.0, AssignCommand(oMedChamber, ActionOpenDoor(oMedChamber)));
}
