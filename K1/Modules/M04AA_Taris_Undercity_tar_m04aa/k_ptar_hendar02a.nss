int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("Tar_Hendar") == 2 && GetGlobalBoolean("tar_hendarhelp") == TRUE;
	
	return nGlobal;
}
