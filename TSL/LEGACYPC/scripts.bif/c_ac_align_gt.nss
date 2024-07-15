int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("G_PC_Align_Val") > nParam1)) {
		return 1;
	}
	return 0;
}

