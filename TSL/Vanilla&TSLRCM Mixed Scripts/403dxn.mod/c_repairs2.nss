int StartingConditional() {
	if (((GetGlobalNumber("403DXN_CannokTrouble") == 5) && (GetJournalEntry("tsupport") == 99))) {
		return 1;
	}
	return 0;
}

