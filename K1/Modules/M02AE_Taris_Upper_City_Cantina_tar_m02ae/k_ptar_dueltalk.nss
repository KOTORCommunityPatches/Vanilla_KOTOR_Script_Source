int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("TAR_RANDOM_TALK") == 0 && GetGlobalNumber("TAR_DUEL") >= 1 && GetPCSpeaker() == GetFirstPC();
	
	return nGlobal;
}
