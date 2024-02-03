int StartingConditional() {
	return ((IsNPCPartyMember(9) == 1) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("VisasMarr", 0)) <= 10.0));
}

