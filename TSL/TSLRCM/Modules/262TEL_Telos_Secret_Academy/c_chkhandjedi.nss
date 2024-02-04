int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("262TEL_Handmaid_Jedi") == nParam1)) {
		return 1;
	}
	return 0;
}