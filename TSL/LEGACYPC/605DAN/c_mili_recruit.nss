int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nGlobal = GetGlobalNumber("602DAN_Mili_Recruit");
	if ((nGlobal & nParam1)) {
		return 1;
	}
	return 0;
}

