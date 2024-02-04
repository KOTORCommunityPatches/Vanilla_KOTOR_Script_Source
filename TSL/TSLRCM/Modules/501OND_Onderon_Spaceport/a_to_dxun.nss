void main() {
	int int1 = GetJournalEntry("matter_leader");
	if ((int1 < 90)) {
		RemoveJournalQuestEntry("matter_leader");
	}
	PlayMovie("OndMov06", 0);
	StartNewModule("403DXN", "From_501OND", "", "", "", "", "", "");
}