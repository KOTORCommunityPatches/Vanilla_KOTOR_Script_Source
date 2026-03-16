int StartingConditional() {
	string sParam = GetScriptStringParameter();
	if ((GetModuleName() == sParam)) {
		return 1;
	}
	return 0;
}

