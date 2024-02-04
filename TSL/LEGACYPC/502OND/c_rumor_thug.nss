int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if ((GetGlobalNumber("503OND_Rumor_Thug") == nParam1)) {
		if ((nParam2 == 1)) {
			SetGlobalNumber("503OND_Rumor_Thug", 0);
		}
		else {
			SetGlobalNumber("503OND_Rumor_Thug", (nParam1 + 1));
		}
		return 1;
	}
	return 0;
}

