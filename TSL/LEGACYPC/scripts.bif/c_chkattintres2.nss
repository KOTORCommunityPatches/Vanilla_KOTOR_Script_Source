int StartingConditional() {
	int nGlobal = GetGlobalNumber("101PER_Atton_Intro_2");
	if ((nGlobal == 0)) {
		return 1;
	}
	else {
		return 0;
	}
}

