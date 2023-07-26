int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("Tar_Duel") >= 2 && !GetGlobalBoolean("TAR_DUELINPROGRESS");
	
	return nGlobal;
}
