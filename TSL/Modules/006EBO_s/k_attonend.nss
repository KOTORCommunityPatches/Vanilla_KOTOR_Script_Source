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
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	sub1();
	sub2(0, "WP_650END_ATTON_0");
	object oAtton = GetObjectByTag("Atton", 0);
	effect efDamage = EffectDamage((GetCurrentHitPoints(oAtton) - 1), 8, 0);
	ApplyEffectToObject(0, efDamage, oAtton, 0.0);
	if ((GetGlobalBoolean("000_PLAYER_GENDER") == 1)) {
		sub2(9, "WP_650END_0");
	}
	else {
		if ((GetGlobalBoolean("000_PLAYER_GENDER") == 0)) {
			sub2(11, "WP_650END_0");
		}
	}
	SetGlobalNumber("000_PSYCHOTIC", 0);
	AssignCommand(GetFirstPC(), ClearAllActions());
	AssignCommand(oAtton, ClearAllActions());
	AssignCommand(GetFirstPC(), ActionStartConversation(oAtton, "AttonEnd", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

