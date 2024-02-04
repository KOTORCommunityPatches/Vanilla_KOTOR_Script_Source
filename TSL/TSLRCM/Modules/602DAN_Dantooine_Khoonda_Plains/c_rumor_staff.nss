int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if ((GetGlobalNumber("602DAN_Rumor_Staff") == nParam1)) {
		if ((nParam2 == 1)) {
			SetGlobalNumber("602DAN_Rumor_Staff", 0);
		}
		else {
			SetGlobalNumber("602DAN_Rumor_Staff", (nParam1 + 1));
		}
		return 1;
	}
	return 0;
}