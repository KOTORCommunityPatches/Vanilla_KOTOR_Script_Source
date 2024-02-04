int StartingConditional() {
	if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "datapadhkcore"))) {
		return 0;
	}
	return 1;
}