int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			if ((GetGlobalNumber("512OND_Visited") != 0)) {
				return 1;
			}
			break;
		case 1:
			if ((GetGlobalNumber("512OND_Riiken_Patrol") != 0)) {
				return 1;
			}
			break;
		case 2:
			if ((GetJournalEntry("docalibi") == 99)) {
				return 1;
			}
			break;
		case 3:
			if ((GetGlobalNumber("502OND_Riot_PC") != 0)) {
				return 1;
			}
			break;
		case 4:
			if ((GetGlobalNumber("502OND_SkyRamp_Boom") != 0)) {
				return 1;
			}
			break;
		case 5:
			if ((GetGlobalNumber("503OND_Swoop_Champ") != 0)) {
				return 1;
			}
			break;
	}
	return 0;
}