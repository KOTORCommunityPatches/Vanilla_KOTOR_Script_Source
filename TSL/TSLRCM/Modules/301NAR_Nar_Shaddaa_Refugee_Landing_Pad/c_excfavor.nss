int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nGlobal = GetGlobalNumber("300NAR_Exchange_Favor");
	switch (nParam1) {
		case 0:
			return (nGlobal <= 5);
		case 1:
			return ((nGlobal > 5) && (nGlobal <= 8));
		case 2:
			return ((nGlobal > 8) && (nGlobal <= 11));
		case 3:
			return ((nGlobal > 11) && (nGlobal <= 14));
		case 4:
			return (nGlobal > 14);
	}
	return 0;
}