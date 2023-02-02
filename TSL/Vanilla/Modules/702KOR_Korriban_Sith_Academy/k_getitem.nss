void main() {
	if ((GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "datapad_recruits")) && (!GetLocalBoolean(GetObjectByTag("datapad_recruits", 0), 40)))) {
		AddJournalQuestEntry("trapped", 20, 0);
		SetLocalBoolean(GetObjectByTag("datapad_recruits", 0), 40, 1);
	}
	if ((GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "datapad_vash")) && (!GetLocalBoolean(GetObjectByTag("datapad_vash", 0), 40)))) {
		AddJournalQuestEntry("trapped", 60, 0);
		SetLocalBoolean(GetObjectByTag("datapad_vash", 0), 40, 1);
	}
}
