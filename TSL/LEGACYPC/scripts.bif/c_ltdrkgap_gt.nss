int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nGlobal = GetGlobalNumber("G_PC_Light_Total");
	int int5 = GetGlobalNumber("G_PC_Dark_Total");
	int int7 = (nGlobal + int5);
	if ((int7 > nParam1)) {
		return 1;
	}
	return 0;
}

