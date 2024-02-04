void main() {
	object oSealedDoor = GetObjectByTag("SealedDoor", 0);
	DelayCommand(0.5, AssignCommand(oSealedDoor, ActionCloseDoor(oSealedDoor)));
	DelayCommand(1.0, SetLocked(oSealedDoor, 0));
}