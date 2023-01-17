void main() {
	object oPortcullis2 = GetObjectByTag("Portcullis2", 0);
	AssignCommand(oPortcullis2, ClearAllActions());
	DelayCommand(0.5, SetLocked(oPortcullis2, 0));
	DelayCommand(1.0, AssignCommand(oPortcullis2, ActionOpenDoor(oPortcullis2)));
}

