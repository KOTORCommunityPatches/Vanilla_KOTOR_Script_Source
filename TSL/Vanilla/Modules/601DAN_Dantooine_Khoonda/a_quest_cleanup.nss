void main() {
	if (((GetJournalEntry("chguard") > 0) && (GetJournalEntry("chguard") < 89))) {
		AddJournalQuestEntry("chguard", 92, 0);
	}
}
