int StartingConditional() {
	if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "pl_thorium"))) {
		return 1;
	}
	return 0;
}
