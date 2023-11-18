int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("MAN_PLANET_PLOT") > 1 && GetGlobalBoolean("MAN_INFO") == TRUE;
	
	return nGlobal;
}
