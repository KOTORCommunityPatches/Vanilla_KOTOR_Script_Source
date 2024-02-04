int StartingConditional() {
	string sParam = GetScriptStringParameter();
	if (GetGlobalBoolean(sParam)) {
		return 1;
	}
	return 0;
}

