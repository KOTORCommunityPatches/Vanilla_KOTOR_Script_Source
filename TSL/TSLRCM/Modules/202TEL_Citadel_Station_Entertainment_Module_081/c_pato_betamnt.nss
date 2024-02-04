int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 < 10)) {
		if ((GetLocalNumber(OBJECT_SELF, 4) != nParam1)) {
			return 1;
		}
	}
	else {
		if ((GetLocalNumber(OBJECT_SELF, 3) > nParam1)) {
			return 1;
		}
	}
	return 0;
}