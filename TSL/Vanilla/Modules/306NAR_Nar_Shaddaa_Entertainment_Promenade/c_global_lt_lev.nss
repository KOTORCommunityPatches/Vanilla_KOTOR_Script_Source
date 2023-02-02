int StartingConditional() {
	string sParam = GetScriptStringParameter();
	int nGlobal = GetGlobalNumber(sParam);
	if ((nGlobal < GetLevelByPosition(1, GetFirstPC()))) {
		return 1;
	}
	return 0;
}
