void main() {
	int int1 = GetJournalEntry("30004");
	int int3 = GetJournalEntry("30003");
	int int5 = GetJournalEntry("30005");
	if ((int1 != 0)) {
		AddJournalQuestEntry("30004", 31, 1);
		if (((int3 == 11) || (int3 == 22))) {
			AddJournalQuestEntry("30004", 41, 1);
		}
		if ((int3 == 12)) {
			AddJournalQuestEntry("30004", 40, 1);
		}
	}
	switch (int5) {
		case 21:
			AddJournalQuestEntry("30005", 31, 0);
			break;
		case 22:
			AddJournalQuestEntry("30005", 32, 0);
			break;
		case 23:
			AddJournalQuestEntry("30005", 33, 0);
			break;
		case 24:
			AddJournalQuestEntry("30005", 34, 0);
			break;
	}
}

