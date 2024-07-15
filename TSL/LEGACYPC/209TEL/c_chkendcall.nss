int StartingConditional() {
	int nGlobal = GetGlobalNumber("203TEL_End_Call");
	if ((nGlobal == 1)) {
		return 1;
	}
	else {
		return 0;
	}
}

