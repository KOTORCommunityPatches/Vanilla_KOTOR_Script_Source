int StartingConditional() {
	int nGlobal = GetGlobalNumber("151HAR_Kreia_Mission");
	if ((nGlobal == 1)) {
		return 1;
	}
	else {
		return 0;
	}
}

