int StartingConditional() {
	int int1 = (GetScriptParameter(1) + 1);
	int int3;
	int int4 = 0;
	float float1 = 12.0;
	int3 = 2;
	while ((int3 <= int1)) {
		int nParam = GetScriptParameter(int3);
		switch (nParam) {
			case 0:
				int4 = (int4 + (IsNPCPartyMember(0) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Atton", 0)) <= float1)));
				break;
			case 1:
				int4 = (int4 + (IsNPCPartyMember(1) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Baodur", 0)) <= float1)));
				break;
			case 2:
				int4 = (int4 + (IsNPCPartyMember(2) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Mand", 0)) <= float1)));
				break;
			case 3:
				int4 = (int4 + (IsNPCPartyMember(3) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("G0T0", 0)) <= float1)));
				break;
			case 4:
				int4 = (int4 + (IsNPCPartyMember(4) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Handmaiden", 0)) <= float1)));
				break;
			case 5:
				int4 = (int4 + (IsNPCPartyMember(5) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("HK47", 0)) <= float1)));
				break;
			case 6:
				int4 = (int4 + (IsNPCPartyMember(6) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Kreia", 0)) <= float1)));
				break;
			case 7:
				int4 = (int4 + (IsNPCPartyMember(7) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Mira", 0)) <= float1)));
				break;
			case 8:
				int4 = (int4 + (IsNPCPartyMember(8) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("T3M4", 0)) <= float1)));
				break;
			case 9:
				int4 = (int4 + (IsNPCPartyMember(9) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("VisasMarr", 0)) <= float1)));
				break;
			case 10:
				int4 = (int4 + (IsNPCPartyMember(10) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Hanharr", 0)) <= float1)));
			case 11:
				int4 = (int4 + (IsNPCPartyMember(11) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Disciple", 0)) <= float1)));
		}
		(int3++);
	}
	if ((int4 > 0)) {
		return 1;
	}
	return 0;
}

