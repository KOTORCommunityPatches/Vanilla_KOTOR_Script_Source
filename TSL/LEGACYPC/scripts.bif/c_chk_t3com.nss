int StartingConditional() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	if (((GetGlobalNumber("000_T3_Lvl_Damage") == 1) && (GetGlobalNumber("000_T3_Computer") == 0))) {
		return 1;
	}
	return 0;
}

