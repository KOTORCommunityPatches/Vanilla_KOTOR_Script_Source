int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((!GetLocalBoolean(OBJECT_SELF, nParam1))) {
		if (((GetGlobalNumber("000_Clans_Gath") == 2) && (GetInfluence(2) >= 75))) {
			return 1;
		}
	}
	return 0;
}