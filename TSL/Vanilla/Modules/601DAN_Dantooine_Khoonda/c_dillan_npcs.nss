int StartingConditional() {
	if ((((IsNPCPartyMember(1) || IsNPCPartyMember(0)) || IsNPCPartyMember(7)) && ((IsNPCPartyMember(4) || IsNPCPartyMember(11)) || IsNPCPartyMember(6)))) {
		return 0;
	}
	return 1;
}
