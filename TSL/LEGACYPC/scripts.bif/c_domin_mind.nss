int StartingConditional() {
	if (GetSpellAcquired(14, GetPartyLeader())) {
		return 1;
	}
	return 0;
}

