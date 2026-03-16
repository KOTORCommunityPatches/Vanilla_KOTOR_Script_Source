int StartingConditional() {
	int nGlobal = GetGlobalNumber("101PER_Kreia_Telepath");
	if ((nGlobal == 0)) {
		return 0;
	}
	else {
		return 1;
	}
}

