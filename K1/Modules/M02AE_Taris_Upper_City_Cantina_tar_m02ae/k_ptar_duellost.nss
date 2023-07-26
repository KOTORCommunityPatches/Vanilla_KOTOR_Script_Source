int StartingConditional() {
	
	int nGlobal = GetGlobalBoolean("Tar_DuelLost") && !GetGlobalBoolean("TAR_DUELINPROGRESS");
	
	return nGlobal;
}
