int StartingConditional() {
	if (GetHasSpell(178, GetFirstPC())) {
		return 1;
	}
	else {
		return 0;
	}
}
