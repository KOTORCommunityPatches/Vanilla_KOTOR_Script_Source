int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("303NAR_Know_Lootra") == nParam1)) {
		return 1;
	}
	return 0;
}

