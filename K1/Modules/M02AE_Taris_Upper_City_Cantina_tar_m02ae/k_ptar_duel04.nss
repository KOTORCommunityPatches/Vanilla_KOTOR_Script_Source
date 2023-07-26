int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("Tar_Duel") == 4 && GetPCSpeaker() == GetFirstPC();
	
	return nGlobal;
}
