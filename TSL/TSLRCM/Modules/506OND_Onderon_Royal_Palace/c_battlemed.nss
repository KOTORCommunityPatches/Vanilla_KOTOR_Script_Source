int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			if ((GetSpellAcquired(138, GetFirstPC()) && (GetGlobalNumber("500OND_DarkSide_Iziz") == 0))) {
				return 1;
			}
			break;
		case 1:
			if ((GetSpellAcquired(138, GetFirstPC()) && (GetGlobalNumber("500OND_DarkSide_Iziz") > 0))) {
				return 1;
			}
			break;
	}
	return 0;
}