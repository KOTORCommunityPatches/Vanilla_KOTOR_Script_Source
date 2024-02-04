int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("300NAR_Jedi_Talk") == nParam1)) {
		return 1;
	}
	return 0;
}