int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "pl_fakeholocron"))) {
				return 1;
			}
			break;
		case 1:
			if (((((GetJournalEntry("relicpast") != 20) || (GetJournalEntry("ssensor") == 10)) || (GetJournalEntry("lostshad") != 90)) || ((GetJournalEntry("danthief") == 10) || (GetJournalEntry("danthief") == 20)))) {
				return 1;
			}
			break;
		case 2:
			if ((GetJournalEntry("relicpast") != 20)) {
				return 1;
			}
			break;
		case 3:
			if (((GetJournalEntry("danthief") == 10) || (GetJournalEntry("danthief") == 20))) {
				return 1;
			}
			break;
		case 4:
			if ((GetJournalEntry("ssensor") == 10)) {
				return 1;
			}
			break;
		case 5:
			if ((GetJournalEntry("lostshad") != 90)) {
				return 1;
			}
			break;
	}
	return 0;
}

