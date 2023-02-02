int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nLocal;
	switch (nParam1) {
		case 0:
			nLocal = GetLocalNumber(OBJECT_SELF, 12);
			if ((nLocal >= nParam2)) {
				return 1;
			}
			break;
	}
	return 0;
}
