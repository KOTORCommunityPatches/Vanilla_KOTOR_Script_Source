int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("Tar_Hendar") == 1 && GetGlobalNumber("tar_hendar") != 2;
	
	return nGlobal;
}