int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == GetGlobalNumber("800DRO_Count_02"))) {
		return 1;
	}
	return 0;
}