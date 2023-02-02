int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			if ((GetJournalEntry("battle_circle") == 90)) {
				return 1;
			}
			break;
		case 1:
			if (GetLocalBoolean(GetObjectByTag("npc_mandy_sarge", 0), 42)) {
				return 1;
			}
			break;
		case 2:
			if ((GetGlobalNumber("402DXN_Davrel_Fate") == 6)) {
				return 1;
			}
			break;
		case 3:
			if ((GetGlobalNumber("402DXN_Davrel_Fate") == 4)) {
				return 1;
			}
			break;
		case 4:
			if ((GetJournalEntry("zchallenge") == 99)) {
				return 1;
			}
			break;
		case 5:
			if ((GetGlobalNumber("402DXN_Davrel_Fate") == 2)) {
				return 1;
			}
			break;
		case 6:
			if ((GetJournalEntry("missingm") == 70)) {
				return 1;
			}
			break;
		case 7:
			if (((GetJournalEntry("battle_circle") != 90) && (GetJournalEntry("battle_circle") > 40))) {
				return 1;
			}
			break;
	}
	return 0;
}
