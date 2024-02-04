int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if ((nParam1 == 1)) {
		if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "DatapadMineAdm"))) {
			return 1;
		}
	}
	if ((nParam1 == 2)) {
		if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "DatapadMineForeman"))) {
			return 1;
		}
	}
	if ((nParam1 == 3)) {
		if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "DatapadDockOff"))) {
			return 1;
		}
	}
	if ((nParam1 == 4)) {
		if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "DatapadMineCoorta"))) {
			return 1;
		}
	}
	return 0;
}