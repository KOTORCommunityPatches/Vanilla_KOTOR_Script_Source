int StartingConditional() {
	if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "g_w_hldoblstr01"))) {
		return 1;
	}
	else {
		return 0;
	}
}

