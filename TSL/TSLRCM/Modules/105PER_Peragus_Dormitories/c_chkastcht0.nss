int StartingConditional() {
	int nGlobal = GetGlobalNumber("151HAR_Asteroid_Chart");
	if ((nGlobal == 0)) {
		return 1;
	}
	else {
		return 0;
	}
}