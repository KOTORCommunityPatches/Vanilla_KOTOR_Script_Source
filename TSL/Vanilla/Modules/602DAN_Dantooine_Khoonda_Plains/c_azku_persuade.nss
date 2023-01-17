int StartingConditional() {
	if (GetLocalBoolean(OBJECT_SELF, 50)) {
		return 0;
	}
	if (((GetSpellAcquired(181, GetPCSpeaker()) || GetSpellAcquired(6, GetPCSpeaker())) || GetSpellAcquired(14, GetPCSpeaker()))) {
		return 1;
	}
	return 0;
}

