int StartingConditional() {
	object oMira = GetObjectByTag("Mira", 0);
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		if (GetSpellAcquired(258, oMira)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 2)) {
		if (GetSpellAcquired(259, oMira)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 3)) {
		if (GetSpellAcquired(260, oMira)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 4)) {
		if (GetSpellAcquired(261, oMira)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 5)) {
		if (GetSpellAcquired(262, oMira)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 6)) {
		if (GetSpellAcquired(263, oMira)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 7)) {
		if (GetSpellAcquired(264, oMira)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 8)) {
		if (GetSpellAcquired(265, oMira)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 9)) {
		if (GetSpellAcquired(266, oMira)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 10)) {
		if (GetSpellAcquired(267, oMira)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 11)) {
		if (GetSpellAcquired(268, oMira)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	return 1;
}

