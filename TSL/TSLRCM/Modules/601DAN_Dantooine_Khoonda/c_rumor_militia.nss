int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if ((nParam2 == 1)) {
		SetGlobalNumber("601DAN_Rumor_Militia", 0);
	}
	if ((GetGlobalNumber("601DAN_Rumor_Militia") == nParam1)) {
		SetGlobalNumber("601DAN_Rumor_Militia", (nParam1 + 1));
		return 1;
	}
	return 0;
}