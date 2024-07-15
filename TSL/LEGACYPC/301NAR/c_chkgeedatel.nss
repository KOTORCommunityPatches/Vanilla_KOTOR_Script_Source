int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("301NAR_Geeda_Telos") == nParam1)) {
		return 1;
	}
	return 0;
}

