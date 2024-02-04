int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "g_w_hldoblstr01"))) {
		if ((!GetLocalBoolean(OBJECT_SELF, nParam1))) {
			return 1;
		}
		else {
			return 0;
		}
	}
	else {
		return 0;
	}
}