int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("301NAR_Trade_War") == nParam1)) {
		return 1;
	}
	return 0;
}