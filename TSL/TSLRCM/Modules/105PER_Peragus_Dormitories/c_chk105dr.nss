int StartingConditional() {
	int nGlobal = GetGlobalNumber("105PER_Dorm_Door");
	if ((nGlobal == 0)) {
		return 0;
	}
	else {
		return 1;
	}
}