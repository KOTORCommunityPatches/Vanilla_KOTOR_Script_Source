int StartingConditional() {
	
	int nGlobal = GetGlobalBoolean("DAN_HANDONF_DONE") == TRUE && GetGlobalBoolean("DAN_RICKARDF_DONE") == TRUE;
	
	return nGlobal;
}
