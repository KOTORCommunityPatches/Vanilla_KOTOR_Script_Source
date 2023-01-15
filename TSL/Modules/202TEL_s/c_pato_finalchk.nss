int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			if (((!GetLocalBoolean(OBJECT_SELF, 45)) && (GetLastPazaakResult() == 1))) {
				CreateItemOnObject("ua_bonded_2", GetFirstPC(), 1, 0);
				CreateItemOnObject("ua_environ_2", GetFirstPC(), 1, 0);
				CreateItemOnObject("ua_reinforce_2", GetFirstPC(), 1, 0);
				SetLocalBoolean(OBJECT_SELF, 40, 0);
				return 1;
			}
			break;
		case 1:
			if (((!GetLocalBoolean(OBJECT_SELF, 45)) && (GetLastPazaakResult() == 0))) {
				TakeGoldFromCreature(1000, GetFirstPC(), 0);
				SetLocalBoolean(OBJECT_SELF, 40, 0);
				return 1;
			}
			break;
		case 2:
			if ((!GetLocalBoolean(OBJECT_SELF, 45))) {
				return 1;
			}
			break;
		case 3:
			if ((!GetLocalBoolean(OBJECT_SELF, 40))) {
				return 1;
			}
			break;
		case 4:
			if ((GetLastPazaakResult() == 1)) {
				SetLocalBoolean(OBJECT_SELF, 40, 0);
				return 1;
			}
			break;
		case 5:
			if ((GetLastPazaakResult() == 0)) {
				SetLocalBoolean(OBJECT_SELF, 40, 0);
				return 1;
			}
			break;
	}
	AurPostString("DEBUG ERROR: All cases fell through C_PATO_FINALCHCK (Ferret)", 5, 5, 5.0);
	return 0;
}

