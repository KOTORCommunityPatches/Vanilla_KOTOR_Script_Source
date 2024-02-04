void main() {
	if (((GetJournalEntry("danthief") > 0) && (GetJournalEntry("danthief") <= 10))) {
		AddJournalQuestEntry("danthief", 20, 0);
		SetGlobalNumber("602DAN_Thief_ID", 2);
	}
}