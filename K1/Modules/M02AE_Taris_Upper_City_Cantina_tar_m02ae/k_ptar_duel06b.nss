int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("Tar_Duel") == 6 && GetGlobalNumber("Duel_Timer") >= 1;
	
	return nGlobal;
}
