int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("Tar_Duel") >= 5 && !GetGlobalBoolean("TAR_DUELINPROGRESS");
	
	return nGlobal;
}
