void main() {
	object oAirlock3 = GetObjectByTag("Airlock3", 0);
	AssignCommand(oAirlock3, ActionUnlockObject(oAirlock3));
	DelayCommand(0.1, AssignCommand(oAirlock3, ActionOpenDoor(oAirlock3)));
}