int StartingConditional() {
	int nGlobal;
	int nParam1 = GetScriptParameter(1);
	nGlobal = GetGlobalNumber("203TEL_WallT_Call");
	if ((nGlobal == nParam1)) {
		return 1;
	}
	else {
		return 0;
	}
}
