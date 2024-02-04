int StartingConditional() {
	int nGlobal = GetGlobalNumber("105PER_Poison_Gas");
	if ((nGlobal == 0)) {
		return 1;
	}
	else {
		return 0;
	}
}