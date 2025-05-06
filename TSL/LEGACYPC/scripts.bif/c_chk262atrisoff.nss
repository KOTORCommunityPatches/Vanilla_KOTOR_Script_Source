int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("262TEL_Atris_Offer") == nParam1)) {
		return 1;
	}
	return 0;
}

