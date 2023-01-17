void main() {
	AssignCommand(GetObjectByTag("Vrook", 0), SetFacingPoint(GetPosition(GetFirstPC())));
	DelayCommand(0.5, AssignCommand(GetObjectByTag("Kavar", 0), SetFacingPoint(GetPosition(GetFirstPC()))));
	DelayCommand(1.0, AssignCommand(GetObjectByTag("ZezKaiEll", 0), SetFacingPoint(GetPosition(GetFirstPC()))));
	object oLocked1 = GetObjectByTag("Locked1", 0);
	object oLocked2 = GetObjectByTag("Locked2", 0);
	DelayCommand(0.5, AssignCommand(oLocked1, ActionCloseDoor(oLocked1)));
	DelayCommand(0.5, AssignCommand(oLocked2, ActionCloseDoor(oLocked2)));
	DelayCommand(1.5, SetLocked(oLocked1, 1));
	DelayCommand(1.5, SetLocked(oLocked2, 1));
}

