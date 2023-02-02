int StartingConditional() {
	if ((!GetLocalBoolean(OBJECT_SELF, 51))) {
		return 0;
	}
	if (((GetGlobalNumber("403DXN_CannokTrouble") == 5) && (GetJournalEntry("tsupport") == 99))) {
		return 0;
	}
	return 1;
}
