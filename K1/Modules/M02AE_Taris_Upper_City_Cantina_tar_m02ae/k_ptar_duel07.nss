int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("Tar_Duel") == 7 && GetPCSpeaker() == GetFirstPC();
	
	return nGlobal;
}
