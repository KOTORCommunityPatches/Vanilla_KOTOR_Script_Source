int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("403DXN_Missing_Mand") == nParam1)) {
		return 1;
	}
	return 0;
}
