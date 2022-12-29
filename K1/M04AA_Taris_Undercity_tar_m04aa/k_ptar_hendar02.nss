int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("Tar_Hendar") == 2 && GetGlobalBoolean("tar_hendarhelp") == FALSE;
	
	return nGlobal;
}
