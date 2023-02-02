int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == GetGlobalNumber("800DRO_Count_01"))) {
		SetGlobalNumber("800DRO_Count_02", 1);
		return 0;
	}
	return 1;
}
