int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("106PER_Peragus_End") == nParam1)) {
		return 1;
	}
	return 0;
}
