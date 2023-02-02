int StartingConditional() {
	int int1 = GetJournalEntry("docalibi");
	if (((int1 > 0) && (int1 != 99))) {
		return 1;
	}
	return 0;
}
