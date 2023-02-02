int StartingConditional() {
	
	int nCheck = (GetGlobalNumber("K_Geno_Zuulan") < 3 && GetGlobalNumber("DAN_PLANET_PLOT") == 3);
	
	return nCheck;
}
