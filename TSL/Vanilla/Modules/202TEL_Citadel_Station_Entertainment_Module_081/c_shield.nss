int StartingConditional() {
	if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "ith_shield"))) {
		return 1;
	}
	else {
		return 0;
	}
}
