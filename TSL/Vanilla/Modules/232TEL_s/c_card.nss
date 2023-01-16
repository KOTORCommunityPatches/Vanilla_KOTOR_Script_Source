int StartingConditional() {
	if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "id_card"))) {
		return 1;
	}
	else {
		return 0;
	}
}

