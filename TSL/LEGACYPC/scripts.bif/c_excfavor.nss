int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nGlobal = GetGlobalNumber("300NAR_Exchange_Favor");
	switch (nParam1) {
		case 0:
			return (nGlobal <= (-4));
		case 1:
			return ((nGlobal > (-4)) && (nGlobal <= (-2)));
		case 2:
			return ((nGlobal > (-2)) && (nGlobal <= 1));
		case 3:
			return ((nGlobal > 1) && (nGlobal <= 3));
		case 4:
			return (nGlobal > 4);
	}
	return 0;
}

