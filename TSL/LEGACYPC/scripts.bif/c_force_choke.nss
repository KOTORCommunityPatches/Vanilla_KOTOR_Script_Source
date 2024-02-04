int StartingConditional() {
	if (GetSpellAcquired(268, GetFirstPC())) {
		return 1;
	}
	return 0;
}

