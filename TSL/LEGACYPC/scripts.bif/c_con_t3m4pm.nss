int StartingConditional() {
	return ((IsNPCPartyMember(8) == 1) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("T3M4", 0)) <= 10.0));
}

