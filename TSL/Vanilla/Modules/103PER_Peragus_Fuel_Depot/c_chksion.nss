int StartingConditional() {
	int nGlobal = GetGlobalNumber("101PER_Sion_Arrives");
	if ((nGlobal == 0)) {
		return 0;
	}
	else {
		return 1;
	}
}
