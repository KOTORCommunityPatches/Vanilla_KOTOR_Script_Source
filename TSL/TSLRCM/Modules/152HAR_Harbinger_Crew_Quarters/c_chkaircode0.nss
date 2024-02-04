int StartingConditional() {
	int nGlobal = GetGlobalNumber("103PER_Airlock_Code");
	if ((nGlobal == 0)) {
		return 1;
	}
	else {
		return 0;
	}
}