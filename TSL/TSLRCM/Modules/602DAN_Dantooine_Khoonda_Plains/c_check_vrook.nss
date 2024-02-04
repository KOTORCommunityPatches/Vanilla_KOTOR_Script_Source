int StartingConditional() {
	int nGlobal = GetGlobalNumber("604DAN_Vrook_Status");
	if (((nGlobal == 4) || (nGlobal == 6))) {
		return 1;
	}
	return 0;
}