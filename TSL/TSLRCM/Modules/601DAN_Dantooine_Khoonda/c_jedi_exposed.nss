int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nGlobal = GetGlobalNumber("601DAN_Jedi_Exposed");
	if ((nGlobal == nParam1)) {
		return 1;
	}
	return 0;
}