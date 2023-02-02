int StartingConditional() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	if ((GetJournalEntry(sParam) > nParam1)) {
		return 1;
	}
	return 0;
}
