int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("tar_hendar") >= 98 && GetGlobalBoolean("Tar_out_gate") == FALSE;
	
	return nGlobal;
}