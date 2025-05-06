int StartingConditional() {
	int nGlobal = GetGlobalNumber("103PER_Airlock_Code");
	if ((nGlobal < 2)) {
		return 0;
	}
	else {
		return 1;
	}
}

