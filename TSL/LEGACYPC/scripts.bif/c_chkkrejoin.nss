int StartingConditional() {
	int nGlobal = GetGlobalNumber("101PER_Kreia_Joined");
	if ((nGlobal == 1)) {
		return 1;
	}
	else {
		return 0;
	}
}

