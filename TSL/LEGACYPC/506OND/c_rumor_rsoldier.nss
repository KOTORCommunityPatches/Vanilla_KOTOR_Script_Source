int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if ((GetGlobalNumber("506OND_Rumor_RSoldier") == nParam1)) {
		if (((nParam2 == 2) && (!GetLocalBoolean(OBJECT_SELF, 53)))) {
			SetGlobalNumber("501OND_Rumor_Soldier", (nParam1 + 1));
			SetLocalBoolean(OBJECT_SELF, 52, 1);
			return 1;
		}
		else {
			if ((nParam2 == 2)) {
				return 0;
			}
		}
		if (((nParam2 == 3) && (!GetLocalBoolean(OBJECT_SELF, 52)))) {
			SetGlobalNumber("506OND_Rumor_RSoldier", (nParam1 + 1));
			SetLocalBoolean(OBJECT_SELF, 53, 1);
			return 1;
		}
		else {
			if ((nParam2 == 3)) {
				return 0;
			}
		}
		if ((nParam2 == 1)) {
			SetGlobalNumber("506OND_Rumor_RSoldier", 0);
		}
		else {
			SetGlobalNumber("506OND_Rumor_RSoldier", (nParam1 + 1));
		}
		return 1;
	}
	return 0;
}

