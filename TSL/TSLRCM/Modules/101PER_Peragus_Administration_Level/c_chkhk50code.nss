int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("103PER_HK50_Code") == nParam1)) {
		return 1;
	}
	return 0;
}