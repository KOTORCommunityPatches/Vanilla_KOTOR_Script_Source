int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	object object1;
	switch (nParam1) {
		case 1:
			if (GetLocalBoolean(GetObjectByTag("anc_terminal_se", 0), 40)) {
				return 1;
			}
			break;
		case 2:
			if (GetLocalBoolean(GetObjectByTag("anc_terminal_sw", 0), 40)) {
				return 1;
			}
			break;
	}
	return 0;
}