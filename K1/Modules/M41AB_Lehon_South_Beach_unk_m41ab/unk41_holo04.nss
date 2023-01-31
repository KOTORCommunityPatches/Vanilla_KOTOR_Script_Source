int StartingConditional() {
	
	int nCheck = (GetGlobalBoolean("UNK_ONE_SPOKE") == TRUE && GetGlobalBoolean("UNK_BLACKHOSTILE") == FALSE);
	
	return nCheck;
}