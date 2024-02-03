int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	switch (nParam1) {
		case 0:
			if (((GetGlobalNumber("502OND_End_First") == 2) && (GetGlobalNumber("403DXN_Second_Visit") != 1))) {
				return 1;
			}
			break;
		case 1:
			if ((GetGlobalNumber("403DXN_Second_Visit") == 1)) {
				return 1;
			}
			break;
		case 2:
			if (((GetGlobalNumber("403DXN_Second_Visit") == 1) && GetLocalBoolean(OBJECT_SELF, nParam2))) {
				return 1;
			}
			break;
	}
	return 0;
}

