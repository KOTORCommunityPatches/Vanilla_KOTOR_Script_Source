int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("Tar_Duel") >= 4 && !GetGlobalBoolean("TAR_DUELINPROGRESS");
	
	return nGlobal;
}
