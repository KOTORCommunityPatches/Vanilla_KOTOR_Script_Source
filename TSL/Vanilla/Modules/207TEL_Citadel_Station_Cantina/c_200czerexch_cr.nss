int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if (((GetGlobalNumber("200TEL_CzerkaM_Exch") == nParam1) && (GetGold(GetFirstPC()) >= 2500))) {
		return 1;
	}
	else {
		return 0;
	}
}
