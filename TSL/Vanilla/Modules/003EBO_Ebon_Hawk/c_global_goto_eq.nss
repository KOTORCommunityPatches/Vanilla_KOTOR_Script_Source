int StartingConditional() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	if (((GetGlobalNumber(sParam) == nParam1) && (GetGlobalNumber("000_Goto_Paid") == 1))) {
		return 1;
	}
	return 0;
}
