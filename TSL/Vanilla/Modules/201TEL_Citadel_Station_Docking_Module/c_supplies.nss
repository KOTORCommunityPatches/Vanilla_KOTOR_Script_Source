int StartingConditional() {
	if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "medical_supplies"))) {
		return 1;
	}
	else {
		return 0;
	}
}
