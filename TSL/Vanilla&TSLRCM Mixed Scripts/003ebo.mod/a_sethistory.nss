void main() {
	if ((GetJournalEntry("GalacticHistory") < 90)) {
		AddJournalQuestEntry("GalacticHistory", 90, 0);
	}
}

