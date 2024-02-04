void main() {
	if (((GetObjectByTag("ExchangeThug302_1", 0) == OBJECT_INVALID) && (GetObjectByTag("ExchangeThug302_2", 0) == OBJECT_INVALID))) {
		if (((GetJournalEntry("InterGRU") == 10) || (GetJournalEntry("InterGRU") == 20))) {
			AddJournalQuestEntry("InterGRU", 25, 0);
		}
		SetGlobalNumber("302NAR_ExchThugs_01", 3);
	}
}