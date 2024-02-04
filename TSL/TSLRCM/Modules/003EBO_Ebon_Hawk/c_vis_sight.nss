int StartingConditional() {
	string sParam = GetScriptStringParameter();
	if (((GetModuleName() == "003EBO") && (GetGlobalNumber("000_Kreia_Sight") == 0))) {
		return 1;
	}
	return 0;
}