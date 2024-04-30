int StartingConditional() {
	object oKreia = GetObjectByTag("kreia", 0);
	if (GetIsObjectValid(oKreia)) {
		return 1;
	}
	return 0;
}

