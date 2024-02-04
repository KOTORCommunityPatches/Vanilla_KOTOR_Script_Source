int StartingConditional() {
	if (GetSpellAcquired(9, GetFirstPC())) {
		return 1;
	}
	return 0;
}