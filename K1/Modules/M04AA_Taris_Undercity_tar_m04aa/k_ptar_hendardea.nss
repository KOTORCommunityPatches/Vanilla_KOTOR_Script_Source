int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("tar_hendar") == 2 && GetGlobalBoolean("Tar_out_gate") == FALSE;
	
	return nGlobal;
}