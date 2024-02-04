int StartingConditional() {
	if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "datapaddroidplan"))) {
		return 1;
	}
	return 0;
}