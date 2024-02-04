int StartingConditional() {
	int nGlobal;
	int nParam1 = GetScriptParameter(1);
	nGlobal = GetGlobalNumber("208TEL_Q_Xu_2");
	if ((nGlobal == nParam1)) {
		return 1;
	}
	else {
		return 0;
	}
}