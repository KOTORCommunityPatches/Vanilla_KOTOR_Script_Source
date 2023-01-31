int StartingConditional() {
	
	int nGlobal = (GetGlobalNumber("Tar_ZelkaTk") == 2 && GetGlobalNumber("TAR_RAKSERUM") != 1);
	return nGlobal;
}