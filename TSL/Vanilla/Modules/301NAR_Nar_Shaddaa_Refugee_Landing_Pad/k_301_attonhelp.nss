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
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if (("atton" == GetTag(oEntering))) {
		}
		else {
			if (GetLocalBoolean(OBJECT_SELF, 30)) {
				return;
			}
			if ((GetGlobalNumber("300NAR_Bounty_Attack") != 1)) {
				return;
			}
			SetLocalBoolean(OBJECT_SELF, 30, 1);
			object object4 = sub1(0, "WP_ATTON_BH_1");
			if (GetIsObjectValid(object4)) {
				AssignCommand(object4, ClearAllActions());
				DelayCommand(0.2, AssignCommand(object4, ActionStartConversation(GetFirstPC(), "Attwarn", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			}
		}
	}
}
