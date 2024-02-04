int StartingConditional() {
	if (GetIsOpen(GetObjectByTag("Exchange", 0))) {
		return 1;
	}
	else {
		return 0;
	}
}