int StartingConditional() {
	int nGlobal = GetGlobalNumber("106PER_Decon_Door");
	if ((nGlobal == 0)) {
		return 1;
	}
	else {
		return 0;
	}
}
