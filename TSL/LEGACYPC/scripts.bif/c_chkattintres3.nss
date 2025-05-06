int StartingConditional() {
	int nGlobal = GetGlobalNumber("101PER_Atton_Intro_3");
	if ((nGlobal == 0)) {
		return 1;
	}
	else {
		return 0;
	}
}

