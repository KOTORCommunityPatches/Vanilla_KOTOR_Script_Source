int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	switch (nParam1) {
		case 0:
			if ((GetJournalEntry("danthief") == nParam2)) {
				return 1;
			}
			break;
		case 1:
			if ((GetJournalEntry("danthief") < 90)) {
				return 1;
			}
			break;
		case 2:
			if (((GetJournalEntry("danthief") < 30) && (GetJournalEntry("danthief") != 0))) {
				return 1;
			}
			break;
		case 3:
			if ((GetJournalEntry("danthief") >= 30)) {
				return 1;
			}
			break;
	}
	return 0;
}
