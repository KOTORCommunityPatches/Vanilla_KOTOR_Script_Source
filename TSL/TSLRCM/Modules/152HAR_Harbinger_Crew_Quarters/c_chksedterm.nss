int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("101PER_XP_Sedatives") == nParam1)) {
		return 1;
	}
	return 0;
}