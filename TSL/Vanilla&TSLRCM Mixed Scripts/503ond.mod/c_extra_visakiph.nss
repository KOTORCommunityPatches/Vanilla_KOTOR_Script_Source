int StartingConditional() {
	if ((GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "pl_bh_visa")) && GetLocalBoolean(OBJECT_SELF, 50))) {
		return 1;
	}
	return 0;
}

