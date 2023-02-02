int StartingConditional() {
	int nGlobal = GetGlobalNumber("103PER_T3_Ambush");
	if ((nGlobal < 1)) {
		return 1;
	}
	else {
		return 0;
	}
}
