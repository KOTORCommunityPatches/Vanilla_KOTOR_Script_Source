int StartingConditional() {
	
	int nGlobal = GetGlobalBoolean("Tar_DuelOver") == TRUE && GetGlobalBoolean("Tar_DuelLost") == TRUE;
	
	return nGlobal;
}
