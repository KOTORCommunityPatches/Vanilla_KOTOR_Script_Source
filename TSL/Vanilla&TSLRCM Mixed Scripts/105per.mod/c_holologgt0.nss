int StartingConditional() {
	int nGlobal = GetGlobalNumber("000_Holo_Log");
	if ((nGlobal > 0)) {
		return 1;
	}
	else {
		return 0;
	}
}

