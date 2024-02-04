void main() {
	if ((GetJournalEntry("khoonda_guns") == 11)) {
		AddJournalQuestEntry("khoonda_guns", 16, 0);
	}
	else {
		AddJournalQuestEntry("khoonda_guns", 10, 0);
	}
}