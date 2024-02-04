// Prototypes
string sub2(int intParam1);
object sub1(int intParam1, string stringParam2);

string sub2(int intParam1) {
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

object sub1(int intParam1, string stringParam2) {
	string string1;
	if ((stringParam2 == "WP_gspawn_")) {
		string string2 = sub2(intParam1);
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

void main() {
	AurPostString("k_301_attonwarn2: check 2", 5, 6, 5.0);
	AurPostString("k_301_attonwarn2: check 3", 5, 7, 5.0);
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if ((GetTag(oEntering) == "atton")) {
			AurPostString("k_301_attonwarn2: check 4", 5, 8, 5.0);
			SetLocalBoolean(OBJECT_SELF, 30, 1);
			AurPostString("Trying To Start AttWarn2", 5, 20, 10.0);
			SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			int int1 = 0;
			while ((int1 < 12)) {
				if ((int1 != 0)) {
					sub1(int1, "WP_gspawn_");
				}
				(int1++);
			}
			AssignCommand(oEntering, ClearAllActions());
			AssignCommand(oEntering, ActionWait(0.5));
			AssignCommand(oEntering, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_atton_party", 0))));
			SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
			DelayCommand(2.0, AssignCommand(oEntering, ActionStartConversation(oEntering, "Attwarn2", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
		}
	}
}