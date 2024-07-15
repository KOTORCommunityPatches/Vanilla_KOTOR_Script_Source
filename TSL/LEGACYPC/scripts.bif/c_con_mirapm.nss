int StartingConditional() {
	return (((IsNPCPartyMember(7) == 1) && (GetGlobalNumber("000_Hanharr_Joined") == 0)) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Mira", 0)) <= 10.0));
}

