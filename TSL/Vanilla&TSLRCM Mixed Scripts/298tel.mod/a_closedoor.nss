void main() {
	object oTO_232TEL = GetObjectByTag("TO_232TEL", 0);
	DelayCommand(1.0, AssignCommand(oTO_232TEL, ActionCloseDoor(oTO_232TEL)));
	DelayCommand(1.5, SetLocked(oTO_232TEL, 1));
}

