int StartingConditional() {
	int nGlobal = GetGlobalNumber("101PER_Know_Adm_Code");
	if ((nGlobal < 2)) {
		return 0;
	}
	else {
		return 1;
	}
}