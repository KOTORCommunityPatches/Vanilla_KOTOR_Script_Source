int StartingConditional() {
	int nGlobal = GetGlobalNumber("103PER_Talk_HK50");
	if ((nGlobal == 0)) {
		return 0;
	}
	else {
		return 1;
	}
}

