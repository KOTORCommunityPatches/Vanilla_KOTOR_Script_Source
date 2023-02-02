int StartingConditional() {
	object object1 = GetItemPossessedBy(GetFirstPC(), "100_fore01");
	if ((!GetIsObjectValid(object1))) {
		return 1;
	}
	return 0;
}
