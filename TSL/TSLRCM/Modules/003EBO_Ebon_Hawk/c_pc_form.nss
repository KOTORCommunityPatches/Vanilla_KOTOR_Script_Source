int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		if (GetSpellAcquired(258, GetFirstPC())) {
			return 1;
		}
		else {
			return 0;
		}
	}
	if ((nParam1 == 2)) {
		if (GetSpellAcquired(259, GetFirstPC())) {
			return 1;
		}
		else {
			return 0;
		}
	}
	if ((nParam1 == 3)) {
		if (GetSpellAcquired(260, GetFirstPC())) {
			return 1;
		}
		else {
			return 0;
		}
	}
	if ((nParam1 == 4)) {
		if (GetSpellAcquired(261, GetFirstPC())) {
			return 1;
		}
		else {
			return 0;
		}
	}
	if ((nParam1 == 5)) {
		if (GetSpellAcquired(262, GetFirstPC())) {
			return 1;
		}
		else {
			return 0;
		}
	}
	if ((nParam1 == 6)) {
		if (GetSpellAcquired(263, GetFirstPC())) {
			return 1;
		}
		else {
			return 0;
		}
	}
	if ((nParam1 == 7)) {
		if (GetSpellAcquired(264, GetFirstPC())) {
			return 1;
		}
		else {
			return 0;
		}
	}
	if ((nParam1 == 8)) {
		if (GetSpellAcquired(265, GetFirstPC())) {
			return 1;
		}
		else {
			return 0;
		}
	}
	if ((nParam1 == 9)) {
		if (GetSpellAcquired(266, GetFirstPC())) {
			return 1;
		}
		else {
			return 0;
		}
	}
	if ((nParam1 == 10)) {
		if (GetSpellAcquired(267, GetFirstPC())) {
			return 1;
		}
		else {
			return 0;
		}
	}
	if ((nParam1 == 11)) {
		if (GetSpellAcquired(268, GetFirstPC())) {
			return 1;
		}
		else {
			return 0;
		}
	}
	return 0;
}