void main() {
	SetGlobalNumber("103PER_Talk_HK50", 1);
	SetLocalBoolean(GetObjectByTag("HK50", 0), 56, 1);
	SetLocalBoolean(GetObjectByTag("HK50", 0), 57, 1);
	object oHK50Door2 = GetObjectByTag("HK50Door2", 0);
	DelayCommand(0.5, AssignCommand(oHK50Door2, ActionUnlockObject(oHK50Door2)));
	DelayCommand(0.5, AssignCommand(oHK50Door2, ActionOpenDoor(oHK50Door2)));
}