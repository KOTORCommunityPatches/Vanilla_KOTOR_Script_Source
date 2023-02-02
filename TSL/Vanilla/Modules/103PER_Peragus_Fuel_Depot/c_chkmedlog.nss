int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("101PER_Med_Log") == nParam1)) {
		return 1;
	}
	return 0;
}
