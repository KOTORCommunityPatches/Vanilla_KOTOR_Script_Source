int StartingConditional() {
	string sParam = GetScriptStringParameter();
	if (GetGlobalNumber(sParam)) {
		return 1;
	}
	return 0;
}

