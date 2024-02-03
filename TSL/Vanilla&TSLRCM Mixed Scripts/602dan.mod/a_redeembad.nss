void main() {
	if (((GetJournalEntry("redemption") > 0) && (GetJournalEntry("redemption") < 89))) {
		AddJournalQuestEntry("redemption", 91, 1);
	}
}

