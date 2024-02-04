int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("403DXN_CannokTrouble") == nParam1)) {
		return 1;
	}
	return 0;
}