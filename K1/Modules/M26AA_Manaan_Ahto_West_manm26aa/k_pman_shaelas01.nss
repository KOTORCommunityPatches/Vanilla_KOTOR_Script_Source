int StartingConditional() {
	
	int nGlobal = GetGlobalBoolean("MAN_SITHBASE_SEALED") == TRUE && GetGlobalBoolean("MAN_SHALASQ_DONE") == FALSE;
	
	return nGlobal;
}
