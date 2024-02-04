int StartingConditional() {
	int nGlobal = GetGlobalNumber("101PER_Republic_ID");
	if ((nGlobal == 0)) {
		return 0;
	}
	else {
		return 1;
	}
}