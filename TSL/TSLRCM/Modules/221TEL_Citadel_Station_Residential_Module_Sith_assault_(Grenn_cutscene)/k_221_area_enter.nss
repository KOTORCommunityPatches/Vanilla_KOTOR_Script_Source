// Prototypes
string sub4(int intParam1);
object sub3(int intParam1, string stringParam2);
void sub2();
void sub1(int intParam1, int intParam2);

string sub4(int intParam1) {
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

object sub3(int intParam1, string stringParam2) {
	string string1;
	if ((stringParam2 == "WP_gspawn_")) {
		string string2 = sub4(intParam1);
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

void sub1(int intParam1, int intParam2) {
	sub2();
	{
		object object1 = sub3(intParam1, "WP_gspawn_");
		object object3 = sub3(intParam2, "WP_gspawn_");
		if (GetIsObjectValid(object1)) {
			AddPartyMember(intParam1, object1);
		}
		if (GetIsObjectValid(object3)) {
			AddPartyMember(intParam2, object3);
		}
	}
}

void main() {
	object oEntering = GetEnteringObject();
	if ((GetFirstPC() == oEntering)) {
		if ((!GetGlobalBoolean("221_FIRST_ENTER"))) {
			SetGlobalBoolean("221_FIRST_ENTER", 1);
			SetNPCSelectability(4, 1);
			SetNPCSelectability(2, 0);
			sub1(0, (-1));
			object object4 = sub3(2, "wp_mandalore_sp");
		}
	}
}