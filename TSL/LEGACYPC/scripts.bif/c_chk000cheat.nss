int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("000_Cheat") == nParam1)) {
		return 1;
	}
	return 0;
}

