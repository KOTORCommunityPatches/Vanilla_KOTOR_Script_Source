int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("Tar_Duel") >= 3 && !GetGlobalBoolean("TAR_DUELINPROGRESS");
	
	return nGlobal;
}
