int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("Tar_Duel") == 1 && GetPCSpeaker() == GetFirstPC();
	
	return nGlobal;
}
