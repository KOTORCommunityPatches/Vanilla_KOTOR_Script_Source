int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("Tar_Duel") >= 5 && GetGlobalBoolean("Tar_TwitchPay") == FALSE;
	
	return nGlobal;
}
