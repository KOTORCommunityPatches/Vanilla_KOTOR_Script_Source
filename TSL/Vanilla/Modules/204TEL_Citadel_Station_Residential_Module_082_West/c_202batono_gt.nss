int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("202TEL_Batono") > nParam1)) {
		return 1;
	}
	else {
		return 0;
	}
}
