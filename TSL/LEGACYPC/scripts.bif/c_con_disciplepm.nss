int StartingConditional() {
	return (((IsNPCPartyMember(11) == 1) && (GetGlobalNumber("000_Disciple_Joined") == 1)) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Disciple", 0)) <= 10.0));
}

