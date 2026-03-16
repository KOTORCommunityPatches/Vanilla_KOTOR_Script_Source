int StartingConditional() {
	if ((GetSpellAcquired(6, GetPartyLeader()) || GetSpellAcquired(14, GetPartyLeader()))) {
		return 1;
	}
	return 0;
}

