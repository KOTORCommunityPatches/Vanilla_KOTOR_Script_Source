int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		if (GetLevelByClass(5, GetFirstPC())) {
			return 1;
		}
		else {
			return 0;
		}
	}
	if ((nParam1 == 2)) {
		if (GetLevelByClass(3, GetFirstPC())) {
			return 1;
		}
		else {
			return 0;
		}
	}
	if ((nParam1 == 3)) {
		if (GetLevelByClass(4, GetFirstPC())) {
			return 1;
		}
		else {
			return 0;
		}
	}
	if ((nParam1 == 4)) {
		if (GetLevelByClass(13, GetFirstPC())) {
			return 1;
		}
		else {
			return 0;
		}
	}
	if ((nParam1 == 5)) {
		if (GetLevelByClass(11, GetFirstPC())) {
			return 1;
		}
		else {
			return 0;
		}
	}
	if ((nParam1 == 6)) {
		if (GetLevelByClass(12, GetFirstPC())) {
			return 1;
		}
		else {
			return 0;
		}
	}
	if ((nParam1 == 7)) {
		if (GetLevelByClass(16, GetFirstPC())) {
			return 1;
		}
		else {
			return 0;
		}
	}
	if ((nParam1 == 8)) {
		if (GetLevelByClass(14, GetFirstPC())) {
			return 1;
		}
		else {
			return 0;
		}
	}
	if ((nParam1 == 9)) {
		if (GetLevelByClass(15, GetFirstPC())) {
			return 1;
		}
		else {
			return 0;
		}
	}
	return 0;
}

