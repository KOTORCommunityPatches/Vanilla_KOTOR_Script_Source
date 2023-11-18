int StartingConditional() {
	
	int nGlobal = GetGlobalBoolean("MAN_THREAT") == FALSE && GetGlobalNumber("MAN_PLANET_PLOT") == 4;
	
	return nGlobal;
}
