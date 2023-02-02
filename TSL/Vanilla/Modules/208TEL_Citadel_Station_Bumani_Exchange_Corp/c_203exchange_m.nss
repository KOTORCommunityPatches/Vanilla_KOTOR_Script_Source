int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == GetGlobalNumber("203TEL_Exchange_M"))) {
		return 1;
	}
	else {
		return 0;
	}
}
