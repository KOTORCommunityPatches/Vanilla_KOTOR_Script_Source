int StartingConditional() {
	if (IsStealthed(GetPartyLeader())) {
		return 1;
	}
	return 0;
}

