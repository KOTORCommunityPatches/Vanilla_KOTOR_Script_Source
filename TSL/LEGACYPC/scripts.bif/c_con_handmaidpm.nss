int StartingConditional() {
	return (((IsNPCPartyMember(4) == 1) && (GetGlobalNumber("000_Disciple_Joined") == 0)) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Handmaiden", 0)) <= 10.0));
}

