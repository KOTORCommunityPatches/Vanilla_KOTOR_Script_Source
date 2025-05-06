int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if ((GetGlobalNumber("403DXN_Rumor_Mand") == nParam1)) {
		if ((nParam2 == 1)) {
			SetGlobalNumber("403DXN_Rumor_Mand", 0);
		}
		else {
			SetGlobalNumber("403DXN_Rumor_Mand", (nParam1 + 1));
		}
		return 1;
	}
	return 0;
}

