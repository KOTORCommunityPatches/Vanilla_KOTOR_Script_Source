int StartingConditional() {
	
	int nGlobal = (GetGlobalNumber("Tar_ZelkaTk") == 3 && GetGlobalNumber("TAR_RAKSERUM") != 1);
	return nGlobal;
}
