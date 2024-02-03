int StartingConditional() {
	string string1 = "30001";
	int int1 = 30;
	int int2 = 31;
	if ((GetJournalEntry(string1) == int1)) {
		return 1;
	}
	if ((GetJournalEntry(string1) == int2)) {
		return 1;
	}
	return 0;
}

