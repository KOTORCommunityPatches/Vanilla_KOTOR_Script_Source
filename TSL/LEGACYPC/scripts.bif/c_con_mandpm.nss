int StartingConditional() {
	return ((IsNPCPartyMember(2) == 1) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Mand", 0)) <= 10.0));
}

