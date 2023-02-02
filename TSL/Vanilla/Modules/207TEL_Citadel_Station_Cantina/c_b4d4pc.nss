int StartingConditional() {
	int nGlobal = GetGlobalNumber("203TEL_B-4D4_PC");
	if ((nGlobal == 1)) {
		return 1;
	}
	else {
		return 0;
	}
}
