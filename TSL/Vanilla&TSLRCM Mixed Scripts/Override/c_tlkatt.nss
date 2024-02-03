int StartingConditional() {
	int nGlobal = GetGlobalNumber("101PER_Talk_Atton");
	if ((nGlobal == 1)) {
		return 1;
	}
	else {
		return 0;
	}
}

