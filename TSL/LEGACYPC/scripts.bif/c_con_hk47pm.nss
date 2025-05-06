int StartingConditional() {
	return ((IsNPCPartyMember(5) == 1) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("HK47", 0)) <= 10.0));
}

