int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	switch (nParam2) {
		case 0:
			if ((GetGlobalNumber("503OND_Cap_Murder") == nParam1)) {
				return 1;
			}
			break;
		case 1:
			if ((GetJournalEntry("docalibi") == nParam1)) {
				return 1;
			}
			break;
	}
	return 0;
}