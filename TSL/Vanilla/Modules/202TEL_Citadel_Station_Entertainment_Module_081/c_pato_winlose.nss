int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((!GetLocalBoolean(OBJECT_SELF, 40))) {
		return 0;
	}
	int nLocal = GetLocalNumber(OBJECT_SELF, 3);
	int int6 = GetLocalNumber(OBJECT_SELF, 4);
	if (GetLastPazaakResult()) {
		nLocal = (nLocal + int6);
	}
	SetLocalNumber(OBJECT_SELF, 3, nLocal);
	if ((nParam1 == 2)) {
		if (GetLocalBoolean(OBJECT_SELF, 44)) {
			return 0;
		}
		if ((nLocal > 9)) {
			SetLocalNumber(OBJECT_SELF, 4, 0);
			return 1;
		}
		else {
			0;
		}
	}
	string string1 = IntToString(nLocal);
	AurPostString((("The player has won " + string1) + "*250 credits"), 5, 5, 5.0);
	if ((nParam1 == GetLastPazaakResult())) {
		return 1;
	}
	return 0;
}
