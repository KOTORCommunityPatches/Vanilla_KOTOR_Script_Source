int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if (((GetGlobalNumber("301NAR_Droid_Quest") >= nParam1) && (GetGlobalNumber("301NAR_Droid_Quest") <= nParam1))) {
		return 1;
	}
	return 0;
}
