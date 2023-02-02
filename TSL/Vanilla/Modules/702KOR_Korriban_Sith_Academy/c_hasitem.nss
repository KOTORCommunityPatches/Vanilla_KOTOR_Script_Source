int StartingConditional() {
	string sParam = GetScriptStringParameter();
	if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), sParam))) {
		return 1;
	}
	return 0;
}
