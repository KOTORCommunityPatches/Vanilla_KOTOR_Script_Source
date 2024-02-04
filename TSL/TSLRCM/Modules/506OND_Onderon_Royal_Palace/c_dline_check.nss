int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int int3 = GetJournalEntry("deadline");
	if (((nParam1 == 30) && (GetGlobalNumber("506OND_RD_Termset") == 1))) {
		return 1;
	}
	if (((nParam1 == 29) && (GetGlobalNumber("506OND_RD_Termset") == 0))) {
		return 1;
	}
	if ((int3 == nParam1)) {
		return 1;
	}
	return 0;
}