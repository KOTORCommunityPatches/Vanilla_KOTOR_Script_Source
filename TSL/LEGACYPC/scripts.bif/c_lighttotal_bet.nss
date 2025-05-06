int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nGlobal = GetGlobalNumber("G_PC_Light_Total");
	if (((nGlobal >= nParam1) && (nGlobal <= nParam2))) {
		return 1;
	}
	return 0;
}

