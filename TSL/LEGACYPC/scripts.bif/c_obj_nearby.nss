int StartingConditional() {
	string sParam = GetScriptStringParameter();
	if ((GetDistanceBetween(GetFirstPC(), GetObjectByTag(sParam, 0)) <= 10.0)) {
		return 1;
	}
	return 0;
}

