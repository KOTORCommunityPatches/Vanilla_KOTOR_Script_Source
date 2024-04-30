int StartingConditional() {
	int nGlobal = GetGlobalNumber("152HAR_Engine_Door");
	if ((nGlobal == 0)) {
		return 1;
	}
	else {
		return 0;
	}
}

