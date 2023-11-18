int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("MAN_MISSING_PLOT") == 50 || GetGlobalBoolean("MAN_PROOF") == TRUE;
	
	return nGlobal;
}
