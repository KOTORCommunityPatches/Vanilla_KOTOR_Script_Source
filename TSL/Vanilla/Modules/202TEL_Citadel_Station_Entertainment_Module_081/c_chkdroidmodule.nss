int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetGlobalNumber("301NAR_Droid_Memory") == nParam1)) {
		return 1;
	}
	return 0;
}
