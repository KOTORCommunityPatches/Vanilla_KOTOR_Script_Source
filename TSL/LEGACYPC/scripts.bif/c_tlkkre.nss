int StartingConditional() {
	int nGlobal = GetGlobalNumber("101PER_Talk_Kreia");
	if ((nGlobal == 0)) {
		return 0;
	}
	else {
		return 1;
	}
}

