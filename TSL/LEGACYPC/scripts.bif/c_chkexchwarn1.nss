int StartingConditional() {
	int nGlobal = GetGlobalNumber("101PER_Exchange_Warn");
	if ((nGlobal == 1)) {
		return 1;
	}
	else {
		return 0;
	}
}

