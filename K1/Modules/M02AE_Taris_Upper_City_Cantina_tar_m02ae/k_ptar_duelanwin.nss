int StartingConditional() {
	
	int nGlobal = GetGlobalBoolean("Tar_DuelOver") == TRUE && GetGlobalBoolean("Tar_DuelLost") == FALSE;
	
	return nGlobal;
}
