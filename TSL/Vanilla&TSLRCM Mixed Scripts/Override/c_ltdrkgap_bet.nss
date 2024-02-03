int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nGlobal = GetGlobalNumber("G_PC_Light_Total");
	int int7 = GetGlobalNumber("G_PC_Dark_Total");
	int int9 = (nGlobal + int7);
	if (((int9 >= nParam1) && (int9 <= nParam2))) {
		return 1;
	}
	return 0;
}

