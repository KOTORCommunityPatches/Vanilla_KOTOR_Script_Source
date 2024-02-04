// Prototypes
string sub5(int intParam1);
object sub4(int intParam1, string stringParam2);
void sub3(int intParam1, int intParam2);
void sub2();
void sub1();

string sub5(int intParam1) {
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

object sub4(int intParam1, string stringParam2) {
	string string1;
	if ((stringParam2 == "WP_gspawn_")) {
		string string2 = sub5(intParam1);
		if ((string2 == "ERROR")) {
			return OBJECT_INVALID;
		}
		string1 = (stringParam2 + string2);
	}
	else {
		string1 = stringParam2;
	}
	object object1 = GetObjectByTag(string1, 0);
	object object3;
	if (GetIsObjectValid(object1)) {
		object3 = SpawnAvailableNPC(intParam1, GetLocation(object1));
		if (GetIsObjectValid(object3)) {
			SetCreatureAILevel(object3, 3);
			return object3;
		}
	}
	return OBJECT_INVALID;
}

void sub3(int intParam1, int intParam2) {
	sub2();
	{
		object object1 = sub4(intParam1, "WP_gspawn_");
		object object3 = sub4(intParam2, "WP_gspawn_");
		if (GetIsObjectValid(object1)) {
			AddPartyMember(intParam1, object1);
		}
		if (GetIsObjectValid(object3)) {
			AddPartyMember(intParam2, object3);
		}
	}
}

void sub2() {
	SetPartyLeader(0xFFFFFFFF);
	int int2 = 0;
	while ((int2 < 12)) {
		if (IsNPCPartyMember(int2)) {
			RemoveNPCFromPartyToBase(int2);
		}
		(int2++);
	}
}

void sub1() {
	string string1 = "003EBOq";
	int nGlobal = GetGlobalNumber("003EBO_BACKGROUND");
	switch (nGlobal) {
		case 0:
			nGlobal = 1;
			break;
		case 1:
			nGlobal = 2;
			break;
		case 2:
			nGlobal = 3;
			break;
		case 3:
			nGlobal = 4;
			break;
		case 4:
			nGlobal = 5;
			break;
		case 5:
			nGlobal = 6;
			break;
		case 6:
			nGlobal = 7;
			break;
		case 7:
			nGlobal = 8;
			break;
		case 8:
			nGlobal = 9;
			break;
		case 9:
			nGlobal = 10;
			break;
		case 10:
			nGlobal = 11;
			break;
		default:
			AurPostString("EBO ERROR: No background sepcified!", 5, 15, 10.0);
	}
	PlayRoomAnimation(string1, nGlobal);
}

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		sub1();
		if (GetLoadFromSaveGame()) {
			return;
		}
		sub2();
		sub3(0, 8);
	}
	if ((!GetGlobalBoolean("005_FIRST_ENTER"))) {
		SetGlobalBoolean("005_FIRST_ENTER", 1);
		ExecuteScript("a_sith_spawn", GetObjectByTag("security", 0), 0xFFFFFFFF);
	}
	ExecuteScript("a_sith_bark", GetObjectByTag("security", 0), 0xFFFFFFFF);
}