void main() {
	int int1 = GetJournalEntry("blackmarket");
	if (((int1 > 0) && (int1 != 30))) {
		AddJournalQuestEntry("blackmarket", 40, 0);
	}
}