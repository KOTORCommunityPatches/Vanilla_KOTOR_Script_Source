int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("301NAR_ID_Quest") == nParam1)) {
		return 1;
	}
	return 0;
}