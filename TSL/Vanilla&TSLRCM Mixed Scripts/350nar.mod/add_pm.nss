void main() {
	object oPC = GetFirstPC();
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			SpawnAvailableNPC(6, GetLocation(oPC));
			AddPartyMember(6, GetObjectByTag("Kreia", 0));
			break;
		case 1:
			SpawnAvailableNPC(4, GetLocation(oPC));
			AddPartyMember(4, GetObjectByTag("Handmaiden", 0));
			break;
		case 2:
			SpawnAvailableNPC(11, GetLocation(oPC));
			AddPartyMember(11, GetObjectByTag("Disciple", 0));
			break;
		case 3:
			SpawnAvailableNPC(9, GetLocation(oPC));
			AddPartyMember(9, GetObjectByTag("VisasMarr", 0));
			break;
		case 4:
			SpawnAvailableNPC(2, GetLocation(oPC));
			AddPartyMember(2, GetObjectByTag("Mand", 0));
			break;
		case 5:
			SpawnAvailableNPC(8, GetLocation(oPC));
			AddPartyMember(8, GetObjectByTag("T3M4", 0));
			break;
		case 6:
			SpawnAvailableNPC(5, GetLocation(oPC));
			AddPartyMember(5, GetObjectByTag("HK47", 0));
			break;
	}
}

