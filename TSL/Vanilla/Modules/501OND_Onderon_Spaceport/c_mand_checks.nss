int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	switch (nParam1) {
		case 0:
			if (((GetJournalEntry("scouthunt") == 99) && (!GetLocalBoolean(OBJECT_SELF, 54)))) {
				return 1;
			}
			if (((nParam2 == 1) && (GetJournalEntry("scouthunt") == 99))) {
				return 1;
			}
			break;
	}
	return 0;
}
