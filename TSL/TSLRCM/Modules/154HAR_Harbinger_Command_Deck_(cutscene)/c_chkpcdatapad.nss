int StartingConditional() {
	object object1 = GetItemPossessedBy(GetFirstPC(), "MedPCDatapad");
	if (GetIsObjectValid(object1)) {
		return 1;
	}
	return 0;
}