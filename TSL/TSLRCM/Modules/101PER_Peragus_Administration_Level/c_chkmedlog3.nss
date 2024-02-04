int StartingConditional() {
	int nGlobal = GetGlobalNumber("101PER_Med_Log");
	if ((nGlobal == 3)) {
		return 1;
	}
	else {
		return 0;
	}
}