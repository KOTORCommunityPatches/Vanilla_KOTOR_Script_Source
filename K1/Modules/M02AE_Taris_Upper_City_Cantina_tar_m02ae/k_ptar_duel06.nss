int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("Tar_Duel") == 6 && GetPCSpeaker() == GetFirstPC();
	
	return nGlobal;
}
