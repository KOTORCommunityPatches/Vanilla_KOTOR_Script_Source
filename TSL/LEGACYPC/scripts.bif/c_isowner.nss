int StartingConditional() {
	string sParam = GetScriptStringParameter();
	if ((sParam == GetTag(OBJECT_SELF))) {
		return 1;
	}
	return 0;
}

