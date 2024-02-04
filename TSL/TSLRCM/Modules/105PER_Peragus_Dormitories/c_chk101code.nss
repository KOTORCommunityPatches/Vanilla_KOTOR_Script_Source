int StartingConditional() {
	int nGlobal = GetGlobalNumber("105PER_Admin_Console");
	if ((nGlobal == 0)) {
		return 0;
	}
	else {
		return 1;
	}
}