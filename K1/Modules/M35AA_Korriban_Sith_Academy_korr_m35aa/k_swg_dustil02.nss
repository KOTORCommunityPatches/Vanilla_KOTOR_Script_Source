int StartingConditional() {
	int nGlobal = GetGlobalNumber("KOR_DANEL");
	if (((nGlobal == 3) && IsNPCPartyMember(2))) {
		return 1;
	}
	return 0;
}
