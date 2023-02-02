int StartingConditional() {
	int nGlobal = GetGlobalNumber("101PER_Open_Hatch");
	if ((nGlobal == 0)) {
		return 1;
	}
	else {
		return 0;
	}
}
