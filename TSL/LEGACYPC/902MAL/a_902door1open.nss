void main() {
	object oPortcullis1 = GetObjectByTag("Portcullis1", 0);
	AssignCommand(oPortcullis1, ClearAllActions());
	DelayCommand(0.5, SetLocked(oPortcullis1, 0));
	DelayCommand(1.0, AssignCommand(oPortcullis1, ActionOpenDoor(oPortcullis1)));
}

