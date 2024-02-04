int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nGlobal;
	switch (nParam1) {
		case 0:
			nGlobal = GetGlobalNumber("402DXN_Sentry_Bypass");
			if ((nGlobal == 0)) {
				return 0;
			}
			SetGlobalNumber("402DXN_Sentry_Bypass", 0);
			return 1;
			break;
		case 1:
			if ((GetJournalEntry("zchallenge") != 0)) {
				return 1;
			}
			break;
	}
	return 0;
}