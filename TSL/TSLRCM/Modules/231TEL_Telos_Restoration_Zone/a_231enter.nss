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
		if ((!GetLocalBoolean(OBJECT_SELF, 30))) {
			SetLocalBoolean(OBJECT_SELF, 30, 1);
			object o231_D_SentryCut = GetObjectByTag("231_D_SentryCut", 0);
			if ((!GetIsObjectValid(o231_D_SentryCut))) {
				AurPostString("231ERROR: No Sentry Droid!", 5, 15, 20.0);
			}
			else {
				sub1();
				object object6 = sub2(0, "WP_gspawn_");
				object object8 = sub2(6, "WP_gspawn_");
				if (((!GetIsObjectValid(object6)) || (!GetIsObjectValid(object8)))) {
					AurPostString("231ERROR: No Atton and/or no Kreia!", 5, 17, 20.0);
				}
				object oRemote = GetObjectByTag("remote", 0);
				object oBaodur = GetObjectByTag("baodur", 0);
				if (((!GetIsObjectValid(oBaodur)) || (!GetIsObjectValid(oRemote)))) {
					AurPostString("231ERROR: No Baodur and/or no remote!", 5, 15, 20.0);
				}
				else {
					AssignCommand(object6, ClearAllActions());
					AssignCommand(object8, ClearAllActions());
					AssignCommand(oEntering, ClearAllActions());
					SetGlobalFadeIn(1.0, 2.0, 0.0, 0.0, 0.0);
					AssignCommand(o231_D_SentryCut, ClearAllActions());
					DelayCommand(2.0, AssignCommand(o231_D_SentryCut, ActionStartConversation(oEntering, "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
				}
			}
		}
	}
}