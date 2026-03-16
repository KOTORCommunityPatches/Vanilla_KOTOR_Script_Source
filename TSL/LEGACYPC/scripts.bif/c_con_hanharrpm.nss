int StartingConditional() {
	return (((IsNPCPartyMember(10) == 1) && (GetGlobalNumber("000_Hanharr_Joined") == 1)) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Hanharr", 0)) <= 10.0));
}

