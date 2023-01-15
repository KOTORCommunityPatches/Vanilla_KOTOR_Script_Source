int StartingConditional() {
	int nGlobal = GetGlobalNumber("101PER_XP_Sedatives");
	if ((nGlobal == 1)) {
		return 1;
	}
	else {
		return 0;
	}
}

