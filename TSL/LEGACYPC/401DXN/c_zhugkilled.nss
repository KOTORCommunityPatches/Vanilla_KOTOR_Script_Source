int StartingConditional() {
	int nGlobal = GetGlobalNumber("401DXN_Zhug_Encounter");
	if ((nGlobal != 0)) {
		return 1;
	}
	else {
		return 0;
	}
}

