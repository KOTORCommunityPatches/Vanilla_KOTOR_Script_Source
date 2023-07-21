int StartingConditional() {
	int nGlobal = GetGlobalNumber("k_current_planet");
	if ((((nGlobal != 40) && (nGlobal != 50)) && (nGlobal < 55))) {
		return 1;
	}
	return 0;
}

