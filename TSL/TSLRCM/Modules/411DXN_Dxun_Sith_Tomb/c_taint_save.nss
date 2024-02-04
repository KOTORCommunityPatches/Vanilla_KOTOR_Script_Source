int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			if ((WillSave(GetFirstPC(), 20, 0, OBJECT_SELF) == 1)) {
				return 1;
			}
			break;
		case 1:
			if ((WillSave(GetFirstPC(), 15, 0, OBJECT_SELF) == 1)) {
				return 1;
			}
			break;
	}
	return 0;
}