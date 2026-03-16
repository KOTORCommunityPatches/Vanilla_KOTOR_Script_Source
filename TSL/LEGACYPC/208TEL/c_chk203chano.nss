int StartingConditional() {
	int nGlobal;
	int nParam1 = GetScriptParameter(1);
	nGlobal = GetGlobalNumber("203TEL_Chano");
	if ((nGlobal == nParam1)) {
		return 1;
	}
	else {
		return 0;
	}
}

