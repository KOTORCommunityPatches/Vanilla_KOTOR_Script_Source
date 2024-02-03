int StartingConditional() {
	int nGlobal = GetGlobalNumber("231TEL_Atton");
	int nParam1 = GetScriptParameter(1);
	if ((nGlobal == nParam1)) {
		return 1;
	}
	else {
		return 0;
	}
}

