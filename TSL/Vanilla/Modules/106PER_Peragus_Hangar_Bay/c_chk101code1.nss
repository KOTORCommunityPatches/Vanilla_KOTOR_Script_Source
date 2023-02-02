int StartingConditional() {
	int nGlobal = GetGlobalNumber("105PER_Admin_Console");
	if ((nGlobal == 1)) {
		return 1;
	}
	else {
		return 0;
	}
}
