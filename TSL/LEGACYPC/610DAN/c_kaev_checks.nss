int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			if ((GetJournalEntry("danthief") != 0)) {
				return 1;
			}
			break;
	}
	return 0;
}

