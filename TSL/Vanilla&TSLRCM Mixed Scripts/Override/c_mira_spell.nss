int StartingConditional() {
	object oMira = GetObjectByTag("Mira", 0);
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		if (GetSpellAcquired(176, oMira)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 2)) {
		if (GetSpellAcquired(270, oMira)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 3)) {
		if (GetSpellAcquired(182, oMira)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 4)) {
		if (GetSpellAcquired(6, oMira)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 5)) {
		if (GetSpellAcquired(14, oMira)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 6)) {
		if (GetSpellAcquired(50, oMira)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 7)) {
		if (GetSpellAcquired(9, oMira)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 8)) {
		if (GetSpellAcquired(32, oMira)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 9)) {
		if (GetSpellAcquired(45, oMira)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 10)) {
		if (GetSpellAcquired(7, oMira)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 11)) {
		if (GetSpellAcquired(38, oMira)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	return 1;
}

