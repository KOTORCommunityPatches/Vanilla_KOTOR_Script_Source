int StartingConditional() {
	int nGlobal = GetGlobalNumber("102PER_Atton_Com3");
	if ((nGlobal > 1)) {
		return 1;
	}
	else {
		return 0;
	}
}