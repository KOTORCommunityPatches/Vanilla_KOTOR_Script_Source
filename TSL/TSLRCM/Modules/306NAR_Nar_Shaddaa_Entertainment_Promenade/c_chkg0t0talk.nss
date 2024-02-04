int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("351NAR_G0T0_Ship") == nParam1)) {
		return 1;
	}
	return 0;
}