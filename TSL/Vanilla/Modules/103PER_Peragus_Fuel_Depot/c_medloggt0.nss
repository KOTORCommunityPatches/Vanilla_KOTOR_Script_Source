int StartingConditional() {
	int nGlobal = GetGlobalNumber("101PER_Med_Log");
	if ((nGlobal > 0)) {
		return 1;
	}
	else {
		return 0;
	}
}
