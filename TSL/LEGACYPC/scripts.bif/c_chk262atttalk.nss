int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if ((GetGlobalNumber("262TEL_Atton_Talk") == nParam1)) {
		SetGlobalNumber("262TEL_Atton_Talk", nParam2);
		return 1;
	}
	return 0;
}

