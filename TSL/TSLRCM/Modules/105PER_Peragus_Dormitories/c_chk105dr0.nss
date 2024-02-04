int StartingConditional() {
	int nGlobal = GetGlobalNumber("105PER_Dorm_Door");
	if ((nGlobal == 0)) {
		return 1;
	}
	else {
		return 0;
	}
}