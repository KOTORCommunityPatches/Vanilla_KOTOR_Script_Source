int StartingConditional() {
	int nGlobal = GetGlobalNumber("101PER_Morgue_Door");
	if ((nGlobal == 0)) {
		return 1;
	}
	else {
		return 0;
	}
}
