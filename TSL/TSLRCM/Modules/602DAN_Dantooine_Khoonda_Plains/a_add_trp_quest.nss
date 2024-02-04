void main() {
	if ((GetJournalEntry("khoonda_traps") == 10)) {
		AddJournalQuestEntry("khoonda_traps", 16, 0);
	}
	else {
		AddJournalQuestEntry("khoonda_traps", 15, 0);
	}
}