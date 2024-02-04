int StartingConditional() {
	int nGlobal = GetGlobalNumber("106PER_Hang_Comp");
	if ((nGlobal == 0)) {
		return 0;
	}
	else {
		return 1;
	}
}