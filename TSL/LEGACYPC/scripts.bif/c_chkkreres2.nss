int StartingConditional() {
	int nGlobal = GetGlobalNumber("101PER_Kreia_Res2");
	if ((nGlobal == 0)) {
		return 1;
	}
	else {
		return 0;
	}
}

