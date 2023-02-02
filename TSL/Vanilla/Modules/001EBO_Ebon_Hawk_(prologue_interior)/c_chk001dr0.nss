int StartingConditional() {
	int nGlobal = GetGlobalNumber("001EBO_Cockpit_Door");
	if ((nGlobal == 0)) {
		return 1;
	}
	else {
		return 0;
	}
}
