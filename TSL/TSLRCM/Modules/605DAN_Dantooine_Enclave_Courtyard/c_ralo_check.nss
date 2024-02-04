int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			if (((GetGold(GetFirstPC()) >= 1000) && (!GetLocalBoolean(OBJECT_SELF, 52)))) {
				return 1;
			}
			break;
		case 1:
			if (((GetGold(GetFirstPC()) < 1000) && (!GetLocalBoolean(OBJECT_SELF, 52)))) {
				return 1;
			}
			break;
		case 3:
			if (((GetJournalEntry("danthief") != 0) && (GetJournalEntry("danthief") < 30))) {
				return 1;
			}
			break;
	}
	return 0;
}