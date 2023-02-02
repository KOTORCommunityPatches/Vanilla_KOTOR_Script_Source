int StartingConditional() {
	if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "pl_bh_visa"))) {
		return 1;
	}
	return 0;
}
