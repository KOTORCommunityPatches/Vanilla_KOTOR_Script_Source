int StartingConditional() {
	int nGlobal = GetGlobalNumber("201TEL_Q_Gren");
	if (((nGlobal >= 2) && (nGlobal <= 4))) {
		return 1;
	}
	else {
		return 0;
	}
}
