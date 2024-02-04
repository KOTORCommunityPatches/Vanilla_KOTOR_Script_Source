int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nGlobal = GetGlobalNumber("300NAR_Exchange_Favor");
	switch (nParam1) {
		case 0:
			return nGlobal = 0;
		case 1:
			return ((nGlobal > 0) && (nGlobal <= 3));
		case 2:
			return ((nGlobal > 3) && (nGlobal <= 6));
		case 3:
			return (nGlobal > 6);
	}
	return 0;
}