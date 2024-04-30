int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("503OND_Cap_Murder") <= nParam1)) {
		return 1;
	}
	return 0;
}

