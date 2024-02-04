int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nGlobal = GetGlobalNumber("G_PC_Light_Total");
	if ((nGlobal > nParam1)) {
		return 1;
	}
	return 0;
}

