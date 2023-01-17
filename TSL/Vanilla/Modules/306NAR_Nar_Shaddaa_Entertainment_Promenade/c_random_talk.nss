int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if ((GetGlobalNumber("301NAR_Random_Talk") == nParam1)) {
		if ((nParam2 == 1)) {
			SetGlobalNumber("301NAR_Random_Talk", 0);
		}
		else {
			SetGlobalNumber("301NAR_Random_Talk", (nParam1 + 1));
		}
		return 1;
	}
	return 0;
}

