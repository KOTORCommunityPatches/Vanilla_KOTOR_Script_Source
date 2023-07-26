int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("Tar_Duel") == 5 && GetPCSpeaker() == GetFirstPC();
	
	return nGlobal;
}
