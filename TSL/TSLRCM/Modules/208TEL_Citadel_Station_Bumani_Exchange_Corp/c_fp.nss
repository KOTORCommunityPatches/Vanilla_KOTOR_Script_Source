int StartingConditional() {
	if (GetSpellAcquired(178, GetFirstPC())) {
		return 1;
	}
	else {
		return 0;
	}
}