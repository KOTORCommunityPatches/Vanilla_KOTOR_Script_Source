void main() {
	object oPortcullis1 = GetObjectByTag("Portcullis1", 0);
	DelayCommand(0.5, AssignCommand(oPortcullis1, ActionCloseDoor(oPortcullis1)));
	DelayCommand(1.5, SetLocked(oPortcullis1, 1));
}

