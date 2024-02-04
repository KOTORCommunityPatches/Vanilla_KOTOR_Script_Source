int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nValid = GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "pl_eholo"));
	if (((nParam1 == 0) && nValid)) {
		ActionTakeItem(GetObjectByTag("pl_eholo", 0), GetFirstPC());
		return 1;
	}
	if (((nParam1 == 1) && (!nValid))) {
		return 1;
	}
	return 0;
}