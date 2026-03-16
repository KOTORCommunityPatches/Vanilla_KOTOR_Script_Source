int StartingConditional() {
	int nGlobal = GetGlobalNumber("152HAR_Atton_Fuel");
	if ((nGlobal == 0)) {
		return 0;
	}
	else {
		return 1;
	}
}

