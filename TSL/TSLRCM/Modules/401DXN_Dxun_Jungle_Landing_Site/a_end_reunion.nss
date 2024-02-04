// Prototypes
string sub1(int intParam1);

string sub1(int intParam1) {
	switch (intParam1) {
		case 0:
			return "atton";
			break;
		case 1:
			return "baodur";
			break;
		case 2:
			return "mand";
			break;
		case 11:
			return "disciple";
			break;
		case 3:
			return "g0t0";
			break;
		case 4:
			return "handmaiden";
			break;
		case 10:
			return "hanharr";
			break;
		case 5:
			return "hk47";
			break;
		case 6:
			return "kreia";
			break;
		case 7:
			return "mira";
			break;
		case 8:
			return "t3m4";
			break;
		case 9:
			return "visasmarr";
			break;
	}
	return "ERROR";
}

void main() {
	AddPartyMember(6, GetObjectByTag("Kreia", 0));
	AddPartyMember(GetGlobalNumber("403DXN_PARTY2_NPC1"), GetObjectByTag(sub1(GetGlobalNumber("403DXN_PARTY2_NPC1")), 0));
}