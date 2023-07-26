int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("Tar_Duel") == 7 && GetGlobalBoolean("Tar_BenReward") == FALSE;
	
	return nGlobal;
}
