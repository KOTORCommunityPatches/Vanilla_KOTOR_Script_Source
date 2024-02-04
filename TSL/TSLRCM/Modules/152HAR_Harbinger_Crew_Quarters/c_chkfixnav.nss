int StartingConditional() {
	int nGlobal = GetGlobalNumber("151HAR_Nav_Comp_Fixed");
	if ((nGlobal == 0)) {
		return 0;
	}
	else {
		return 1;
	}
}