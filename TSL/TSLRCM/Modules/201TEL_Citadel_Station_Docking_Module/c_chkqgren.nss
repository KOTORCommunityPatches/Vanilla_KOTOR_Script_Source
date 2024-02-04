int StartingConditional() {
	int nGlobal;
	int nParam1 = GetScriptParameter(1);
	nGlobal = GetGlobalNumber("201TEL_Q_Gren");
	if ((nGlobal == nParam1)) {
		return 1;
	}
	else {
		return 0;
	}
}