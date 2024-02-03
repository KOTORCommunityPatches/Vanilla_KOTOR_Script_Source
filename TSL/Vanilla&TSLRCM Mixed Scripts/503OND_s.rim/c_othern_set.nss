int StartingConditional() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	if (GetLocalNumber(GetObjectByTag(sParam, 0), nParam1)) {
		return 1;
	}
	return 0;
}

