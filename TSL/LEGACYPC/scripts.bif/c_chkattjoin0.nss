int StartingConditional() {
	int nGlobal = GetGlobalNumber("101PER_Atton_Joined");
	if ((nGlobal == 0)) {
		return 1;
	}
	else {
		return 0;
	}
}

