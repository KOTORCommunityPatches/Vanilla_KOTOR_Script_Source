void main() {
	int int1 = GetJournalEntry("30004");
	int nGlobal = GetGlobalNumber("302NAR_Saquesh");
	AddJournalQuestEntry("30003", 12, 1);
	if ((int1 != 0)) {
		if ((int1 != 43)) {
			switch (nGlobal) {
				case 0:
					AddJournalQuestEntry("30004", 22, 1);
					break;
				case 1:
					AddJournalQuestEntry("30004", 40, 1);
					break;
				case 2:
					AddJournalQuestEntry("30004", 44, 1);
					break;
			}
		}
	}
}