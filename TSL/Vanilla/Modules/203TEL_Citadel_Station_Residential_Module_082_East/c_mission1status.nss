int StartingConditional() {
	int nGlobal = GetGlobalNumber("203TEL_DroidInt_1");
	int nParam1 = GetScriptParameter(1);
	if ((nGlobal == nParam1)) {
		return 1;
	}
	else {
		return 0;
	}
}
