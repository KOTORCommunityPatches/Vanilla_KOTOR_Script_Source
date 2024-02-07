int StartingConditional() {
	return ((IsNPCPartyMember(6) == 1) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Kreia", 0)) <= 10.0));
}

