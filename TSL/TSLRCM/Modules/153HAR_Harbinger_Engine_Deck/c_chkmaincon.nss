int StartingConditional() {
	int nGlobal = GetGlobalNumber("152HAR_Maint_Console");
	if ((nGlobal == 0)) {
		return 0;
	}
	else {
		return 1;
	}
}