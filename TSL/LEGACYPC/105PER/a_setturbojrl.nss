void main() {
	if ((GetJournalEntry("TurboliftLockdown") == 15)) {
		AddJournalQuestEntry("TurboliftLockdown", 25, 0);
	}
}

