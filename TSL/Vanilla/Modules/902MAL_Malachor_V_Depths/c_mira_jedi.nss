int StartingConditional() {
	int int1 = GetClassByPosition(1, GetPartyLeader());
	if ((((int1 == 5) || (int1 == 4)) || (int1 == 3))) {
		return 1;
	}
	return 0;
}
