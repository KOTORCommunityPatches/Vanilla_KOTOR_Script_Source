void main() {
	AddJournalQuestEntry("telosfactory", 100, 0);
	if ((GetGlobalNumber("299TEL_HK51_Core") == 1)) {
		AddJournalQuestEntry("generation51", 130, 0);
	}
	else {
		AddJournalQuestEntry("generation51", 120, 0);
	}
}

