int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	float float1 = 20.0;
	switch (nParam1) {
		case 0:
			return (IsNPCPartyMember(0) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Atton", 0)) <= float1));
		case 1:
			return (IsNPCPartyMember(1) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Baodur", 0)) <= float1));
		case 2:
			return (IsNPCPartyMember(2) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Mand", 0)) <= float1));
		case 3:
			return (IsNPCPartyMember(3) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("G0T0", 0)) <= float1));
		case 4:
			return (IsNPCPartyMember(4) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Handmaiden", 0)) <= float1));
		case 5:
			return (IsNPCPartyMember(5) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("HK47", 0)) <= float1));
		case 6:
			return (IsNPCPartyMember(6) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Kreia", 0)) <= float1));
		case 7:
			return (IsNPCPartyMember(7) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Mira", 0)) <= float1));
		case 8:
			return (IsNPCPartyMember(8) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("T3M4", 0)) <= float1));
		case 9:
			return (IsNPCPartyMember(9) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("VisasMarr", 0)) <= float1));
		case 10:
			return (IsNPCPartyMember(10) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Hanharr", 0)) <= float1));
		case 11:
			return (IsNPCPartyMember(11) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Disciple", 0)) <= float1));
	}
	return 0;
}