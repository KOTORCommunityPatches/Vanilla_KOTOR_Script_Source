int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	switch (nParam1) {
		case 0:
			if ((GetJournalEntry("relicpast") > 10)) {
				return 1;
			}
			break;
		case 1:
			if ((GetJournalEntry("relicpast") <= 10)) {
				return 1;
			}
			break;
		case 2:
			if ((GetJournalEntry("ghostrest") == nParam2)) {
				return 1;
			}
			break;
		case 3:
			if ((GetJournalEntry("ghostrest") < 40)) {
				return 1;
			}
			break;
		case 4:
			if ((GetJournalEntry("ghostrest") < 90)) {
				return 1;
			}
			break;
		case 10:
			if (((GetJournalEntry("danthief") != 0) && (GetJournalEntry("danthief") < 30))) {
				return 1;
			}
			break;
	}
	return 0;
}

