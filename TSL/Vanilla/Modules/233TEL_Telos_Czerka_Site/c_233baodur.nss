int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("231TEL_BaoDur") == nParam1)) {
		return 1;
	}
	else {
		return 0;
	}
}
