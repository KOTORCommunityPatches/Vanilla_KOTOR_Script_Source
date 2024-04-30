int StartingConditional() {
	return ((IsNPCPartyMember(3) == 1) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("G0T0", 0)) <= 10.0));
}

