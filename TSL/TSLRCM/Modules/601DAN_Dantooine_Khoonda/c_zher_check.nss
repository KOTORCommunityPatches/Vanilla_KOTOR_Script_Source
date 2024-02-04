int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			if (((GetJournalEntry("cavecrawl") < 20) && (GetJournalEntry("cavecrawl") != 0))) {
				return 1;
			}
			break;
		case 1:
			if (((GetGlobalNumber("605DAN_Daraala_Ghosts") == 2) && (GetJournalEntry("ghostrest") < 90))) {
				return 1;
			}
			break;
		case 2:
			if ((GetLocalBoolean(GetObjectByTag("npc_berun", 0), 10) || GetLocalBoolean(GetObjectByTag("npc_gerevick", 0), 10))) {
				return 1;
			}
			break;
		case 3:
			if (((GetJournalEntry("chguard") < 90) && (GetJournalEntry("chguard") != 0))) {
				return 1;
			}
			break;
		case 4:
			if ((GetJournalEntry("chguard") == 20)) {
				return 1;
			}
			break;
		case 5:
			if ((GetJournalEntry("ghostrest") > 39)) {
				return 1;
			}
			break;
		case 6:
			if ((GetJournalEntry("ghostrest") == 40)) {
				return 1;
			}
			break;
		case 7:
			if ((GetJournalEntry("ghostrest") <= 40)) {
				return 1;
			}
			break;
		case 8:
			if ((GetJournalEntry("cavecrawl") == 0)) {
				return 1;
			}
			break;
	}
	return 0;
}