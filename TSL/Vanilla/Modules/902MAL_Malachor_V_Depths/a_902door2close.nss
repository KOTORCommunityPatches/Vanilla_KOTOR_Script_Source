void main() {
	object oPortcullis2 = GetObjectByTag("Portcullis2", 0);
	DelayCommand(0.5, AssignCommand(oPortcullis2, ActionCloseDoor(oPortcullis2)));
	DelayCommand(1.5, SetLocked(oPortcullis2, 1));
}
