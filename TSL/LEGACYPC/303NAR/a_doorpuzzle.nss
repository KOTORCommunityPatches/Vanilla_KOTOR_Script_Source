void main() {
	object oSecret_Door = GetObjectByTag("Secret_Door", 0);
	AddJournalQuestEntry("DroidWarehousePuzzle", 19, 0);
	SetLocalBoolean(OBJECT_SELF, 31, 1);
	AssignCommand(oSecret_Door, ActionUnlockObject(oSecret_Door));
	DelayCommand(0.1, AssignCommand(oSecret_Door, ActionOpenDoor(oSecret_Door)));
}

