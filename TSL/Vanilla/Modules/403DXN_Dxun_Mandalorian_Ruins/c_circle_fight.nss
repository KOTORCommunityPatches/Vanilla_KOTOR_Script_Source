int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	switch (nParam1) {
		case 0:
			if ((GetGlobalNumber("403DXN_Battle_Circle") == nParam2)) {
				return 1;
			}
			break;
	}
	return 0;
}
