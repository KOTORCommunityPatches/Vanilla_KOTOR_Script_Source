int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("262TEL_Hand_Relic_OK") == nParam1)) {
		return 1;
	}
	return 0;
}