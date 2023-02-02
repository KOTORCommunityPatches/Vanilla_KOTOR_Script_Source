int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			if ((GetSpellAcquired(6, GetPCSpeaker()) || GetSpellAcquired(14, GetPCSpeaker()))) {
				if ((GetJournalEntry("matter_leader") != 0)) {
					return 1;
				}
			}
			break;
		case 1:
			if ((GetJournalEntry("matter_leader") != 0)) {
				return 1;
			}
			break;
		case 2:
			if (GetLocalBoolean(OBJECT_SELF, 50)) {
				return 0;
			}
			if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "pl_iziz_security"))) {
				return 1;
			}
			break;
	}
	return 0;
}
