int StartingConditional() {
	
	int nGlobal = GetGlobalBoolean("DAN_HANDONF_DONE") == FALSE || GetGlobalBoolean("DAN_RICKARDF_DONE") == FALSE;
	
	return nGlobal;
}
