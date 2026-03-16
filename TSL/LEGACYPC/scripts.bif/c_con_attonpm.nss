int StartingConditional() {
	return ((IsNPCPartyMember(0) == 1) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Atton", 0)) <= 10.0));
}

