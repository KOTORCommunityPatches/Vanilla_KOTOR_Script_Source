int StartingConditional() {
	
	int nGlobal = GetGlobalBoolean("Kas_Jolee_Revan") == FALSE && GetGlobalNumber("K_Kotor_master") >= 20;
	
	return nGlobal;
}