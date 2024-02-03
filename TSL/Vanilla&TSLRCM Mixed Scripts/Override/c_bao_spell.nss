int StartingConditional() {
	object oBaoDur = GetObjectByTag("BaoDur", 0);
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		if (GetSpellAcquired(176, oBaoDur)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 2)) {
		if (GetSpellAcquired(270, oBaoDur)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 3)) {
		if (GetSpellAcquired(182, oBaoDur)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 4)) {
		if (GetSpellAcquired(6, oBaoDur)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	if ((nParam1 == 5)) {
		if (GetSpellAcquired(14, oBaoDur)) {
			return 0;
		}
		else {
			return 1;
		}
	}
	return 1;
}

