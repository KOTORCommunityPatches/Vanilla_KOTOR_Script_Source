int StartingConditional() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if ((nParam2 > 1)) {
		SetGlobalNumber(sParam, Random(nParam2));
	}
	else {
		if ((nParam2 == 1)) {
			SetGlobalNumber(sParam, 0);
			return 1;
		}
	}
	if ((GetGlobalNumber(sParam) == nParam1)) {
		SetGlobalNumber(sParam, (nParam1 + 1));
		return 1;
	}
	return 0;
}