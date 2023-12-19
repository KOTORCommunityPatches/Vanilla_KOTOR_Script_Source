int StartingConditional() {
	
	int nGlobal = (GetGlobalNumber("DAN_BOLOOK_STATE") == 1 && GetGlobalBoolean("Dan_RickRelate") == FALSE) || GetGlobalBoolean("Dan_HandRelate") == FALSE;
	
	return nGlobal;
}
