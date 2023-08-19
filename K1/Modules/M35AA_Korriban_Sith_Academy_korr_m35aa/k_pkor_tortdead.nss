int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("KOR_THRESHOLD") > 9 || GetGlobalBoolean("KOR_TORTURE_DRUG") == TRUE;
	
	return nGlobal;
}
