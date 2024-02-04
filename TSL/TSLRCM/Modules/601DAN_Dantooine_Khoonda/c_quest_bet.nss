int StartingConditional() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if (((GetJournalEntry(sParam) >= nParam1) && (GetJournalEntry(sParam) <= nParam2))) {
		return 1;
	}
	return 0;
}