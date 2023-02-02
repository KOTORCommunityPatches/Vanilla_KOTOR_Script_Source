void main() {
	object oMk2Ambush = GetObjectByTag("Mk2Ambush", 0);
	DelayCommand(1.0, AssignCommand(oMk2Ambush, ActionOpenDoor(oMk2Ambush)));
}
