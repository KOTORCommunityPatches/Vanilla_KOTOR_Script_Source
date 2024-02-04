int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int int3 = GetLastPazaakResult();
	int nLocal = GetLocalNumber(OBJECT_SELF, 13);
	if ((!GetLocalBoolean(OBJECT_SELF, 40))) {
		return 0;
	}
	if ((nParam1 == 2)) {
		if (GetLocalBoolean(OBJECT_SELF, 44)) {
			return 0;
		}
		if ((nLocal > 9)) {
			SetLocalNumber(OBJECT_SELF, 14, 0);
			return 1;
		}
		else {
			0;
		}
	}
	if ((nParam1 == int3)) {
		return 1;
	}
	return 0;
}