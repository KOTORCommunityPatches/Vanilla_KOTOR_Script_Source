int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("232TEL_Reactor") == nParam1)) {
		return 1;
	}
	return 0;
}
