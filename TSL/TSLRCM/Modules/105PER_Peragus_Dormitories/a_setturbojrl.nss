void main() {
	if ((GetJournalEntry("TurboliftLockdown") == 15)) {
		AddJournalQuestEntry("TurboliftLockdown", 25, 0);
	}
	else {
		AddJournalQuestEntry("TurboliftLockdown", 20, 0);
	}
}