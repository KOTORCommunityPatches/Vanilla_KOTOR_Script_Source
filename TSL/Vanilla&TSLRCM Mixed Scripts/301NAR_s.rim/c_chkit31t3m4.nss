int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("301NAR_IT31_T3M4") == nParam1)) {
		return 1;
	}
	return 0;
}

