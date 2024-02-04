void main() {
	if ((GetJournalEntry("smuggling_tsf") > 0)) {
		AddJournalQuestEntry("smuggling_tsf", 70, 0);
	}
}