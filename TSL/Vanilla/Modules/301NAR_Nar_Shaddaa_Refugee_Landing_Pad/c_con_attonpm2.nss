int StartingConditional() {
	return ((IsNPCPartyMember(0) == 1) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Atton", 0)) <= 25.0));
}
