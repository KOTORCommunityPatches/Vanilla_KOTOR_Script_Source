int StartingConditional() {
	int nGlobal = GetGlobalNumber("101PER_Know_Sedatives");
	if ((nGlobal == 0)) {
		return 0;
	}
	else {
		return 1;
	}
}
