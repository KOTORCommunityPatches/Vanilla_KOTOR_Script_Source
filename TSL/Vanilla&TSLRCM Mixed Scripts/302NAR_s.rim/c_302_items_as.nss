int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	object object1;
	switch (nParam1) {
		case 41:
			object1 = GetItemPossessedBy(GetPartyLeader(), "Airspeeder41");
			return GetIsObjectValid(object1);
			break;
		case 42:
			object1 = GetItemPossessedBy(GetPartyLeader(), "Airspeeder42");
			return GetIsObjectValid(object1);
			break;
		case 43:
			object1 = GetItemPossessedBy(GetPartyLeader(), "Airspeeder43");
			return GetIsObjectValid(object1);
			break;
		case 44:
			return (GetGlobalNumber("302NAR_Airspeeder_44") == 1);
			break;
	}
	return 0;
}

