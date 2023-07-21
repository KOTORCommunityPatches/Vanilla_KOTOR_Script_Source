int StartingConditional() {
	int nGlobal = GetGlobalNumber("K_CURRENT_PLANET");
	if ((((nGlobal != 20) && (GetGlobalBoolean("kas_ChuundarDead") == 0)) && (GetGlobalBoolean("kas_FreyyrDead") == 0))) {
		return 1;
	}
	return 0;
}

