int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("232TEL_TurretsA") == nParam1)) {
		return 1;
	}
	return 0;
}

