int StartingConditional() {
	if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "pl_visa"))) {
		return 1;
	}
	if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "pl_visa_sliced"))) {
		return 1;
	}
	return 0;
}