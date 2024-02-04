int StartingConditional() {
	int int1;
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			if (((GetJournalEntry("matter_leader") != 0) && GetLocalBoolean(OBJECT_SELF, 51))) {
				return 1;
			}
			break;
		case 1:
			if ((GetSpellAcquired(6, GetPCSpeaker()) || GetSpellAcquired(14, GetPCSpeaker()))) {
				if ((!GetLocalBoolean(OBJECT_SELF, 52))) {
					return 1;
				}
			}
			break;
		case 2:
			if (GetIsObjectValid(GetObjectByTag("gelesi", 0))) {
				return 1;
			}
			break;
	}
	return 0;
}