int StartingConditional() {
	int nGlobal = GetGlobalNumber("101PER_Know_Exchange");
	if ((nGlobal == 0)) {
		return 1;
	}
	else {
		return 0;
	}
}

