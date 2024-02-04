int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if ((GetGlobalNumber("302NAR_Random_Talk") == nParam2)) {
		return 1;
	}
	return 0;
}