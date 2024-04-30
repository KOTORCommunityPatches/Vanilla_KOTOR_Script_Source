int StartingConditional() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if (((GetGlobalNumber(sParam) == nParam1) && (GetGlobalNumber("G_PC_LEVEL") < nParam2))) {
		return 1;
	}
	return 0;
}

