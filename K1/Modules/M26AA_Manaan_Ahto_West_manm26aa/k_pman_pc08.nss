int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("MAN_MURDER_PLOT") == 3 || GetGlobalNumber("MAN_MURDER_PLOT") == 4;
	
	return nGlobal;
}
