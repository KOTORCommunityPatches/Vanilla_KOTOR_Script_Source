// Prototypes
string sub3(int intParam1);
object sub2(int intParam1, string stringParam2);
void sub1();

string sub3(int intParam1) {
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

object sub2(int intParam1, string stringParam2) {
	string string1;
	if ((stringParam2 == "WP_gspawn_")) {
		string string2 = sub3(intParam1);
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

void sub1() {
	SetPartyLeader(0xFFFFFFFF);
	int int2 = 0;
	while ((int2 < 12)) {
		if (IsNPCPartyMember(int2)) {
			RemoveNPCFromPartyToBase(int2);
		}
		(int2++);
	}
}

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if ((!GetGlobalBoolean("301_FIRST_ENTER"))) {
			SetGlobalBoolean("301_FIRST_ENTER", 1);
			sub1();
			sub2(0, "WP_gspawn_");
			sub2(6, "WP_gspawn_");
			if ((GetNPCSelectability(9) != (-1))) {
				sub2(9, "WP_gspawn_");
			}
			if ((GetNPCSelectability(11) != (-1))) {
				sub2(11, "WP_gspawn_");
			}
			if ((GetNPCSelectability(4) != (-1))) {
				sub2(4, "WP_gspawn_");
			}
		}
		if (GetLocalBoolean(OBJECT_SELF, 30)) {
			return;
		}
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		object oAtton = GetObjectByTag("atton", 0);
		if (GetIsObjectValid(oAtton)) {
			AssignCommand(GetFirstPC(), ClearAllActions());
			AssignCommand(oAtton, ClearAllActions());
			AssignCommand(oAtton, ActionStartConversation(GetFirstPC(), "Arrival", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
		else {
			AurPostString("ERROR: Atton not available!", 5, 16, 10.0);
			return;
		}
	}
}
