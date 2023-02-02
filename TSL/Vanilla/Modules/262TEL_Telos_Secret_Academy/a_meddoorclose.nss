void main() {
	object oMedChamber = GetObjectByTag("MedChamber", 0);
	DelayCommand(1.0, AssignCommand(oMedChamber, ActionCloseDoor(oMedChamber)));
	DelayCommand(1.5, SetLocked(oMedChamber, 1));
}
