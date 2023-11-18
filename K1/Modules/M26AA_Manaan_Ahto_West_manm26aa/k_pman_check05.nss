int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("MAN_PLANET_PLOT") == 4 || GetGlobalBoolean("MAN_SITHBASE_SEALED") == TRUE;
	
	return nGlobal;
}
