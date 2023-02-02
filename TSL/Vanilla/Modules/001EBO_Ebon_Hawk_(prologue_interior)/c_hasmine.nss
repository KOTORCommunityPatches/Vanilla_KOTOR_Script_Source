int StartingConditional() {
	if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "G_I_TRAPKIT004"))) {
		return 1;
	}
	return 0;
}
