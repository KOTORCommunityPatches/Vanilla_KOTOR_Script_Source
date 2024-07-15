int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("303NAR_Kath_Poison") == nParam1)) {
		return 1;
	}
	return 0;
}

