int StartingConditional() {
	return ((IsNPCPartyMember(1) == 1) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Baodur", 0)) <= 10.0));
}

