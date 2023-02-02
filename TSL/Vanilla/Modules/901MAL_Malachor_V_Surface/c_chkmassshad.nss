int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("901MAL_Mass_Shadow") == nParam1)) {
		return 1;
	}
	return 0;
}
