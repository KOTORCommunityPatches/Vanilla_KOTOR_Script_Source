int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("301NAR_New_Markets") == nParam1)) {
		return 1;
	}
	return 0;
}