int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	object oXarga = GetObjectByTag("xarga", 0);
	switch (nParam1) {
		case 0:
			if (GetLocalBoolean(oXarga, 50)) {
				return 1;
			}
			break;
		case 1:
			if (GetLocalBoolean(oXarga, 49)) {
				return 1;
			}
			break;
	}
	return 0;
}