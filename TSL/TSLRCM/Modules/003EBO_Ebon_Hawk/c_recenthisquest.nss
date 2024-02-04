void main() {
	if ((GetJournalEntry("RecentHistory") > 59)) {
		AddJournalQuestEntry("RecentHistory", 99, 0);
	}
	if ((GetJournalEntry("RecentHistory") < 60)) {
		AddJournalQuestEntry("RecentHistory", 90, 0);
	}
}