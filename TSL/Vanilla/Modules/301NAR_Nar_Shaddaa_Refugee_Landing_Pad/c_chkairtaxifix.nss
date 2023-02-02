int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("302NAR_Airtaxi_Repair") == nParam1)) {
		return 1;
	}
	return 0;
}
