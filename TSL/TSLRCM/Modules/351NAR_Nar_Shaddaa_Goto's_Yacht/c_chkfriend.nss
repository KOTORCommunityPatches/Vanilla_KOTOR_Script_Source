int StartingConditional() {
	int int1 = 0;
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			if ((GetStandardFaction(OBJECT_SELF) == 2)) {
				int1 = 1;
			}
			break;
		case 1:
			if ((GetStandardFaction(OBJECT_SELF) == 4)) {
				int1 = 1;
			}
			break;
		case 2:
			if ((GetStandardFaction(OBJECT_SELF) == 5)) {
				int1 = 1;
			}
			break;
		case 3:
			if ((GetStandardFaction(OBJECT_SELF) == 1)) {
				int1 = 1;
			}
			break;
		case 4:
			if ((GetStandardFaction(OBJECT_SELF) == 3)) {
				int1 = 1;
			}
			break;
	}
	return int1;
}