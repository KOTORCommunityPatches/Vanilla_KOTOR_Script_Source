int StartingConditional() {
	int int1 = ((GetGlobalNumber("300NAR_IDSIG_01") || GetGlobalNumber("300NAR_IDSIG_02")) || GetGlobalNumber("300NAR_IDSIG_03"));
	return int1;
}

