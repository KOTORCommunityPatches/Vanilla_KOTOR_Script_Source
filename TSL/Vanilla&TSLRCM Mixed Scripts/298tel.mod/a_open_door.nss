void main() {
	object oTO_232TEL = GetObjectByTag("TO_232TEL", 0);
	DelayCommand(1.0, SetLocked(oTO_232TEL, 0));
	DelayCommand(1.5, AssignCommand(oTO_232TEL, ActionOpenDoor(oTO_232TEL)));
}

