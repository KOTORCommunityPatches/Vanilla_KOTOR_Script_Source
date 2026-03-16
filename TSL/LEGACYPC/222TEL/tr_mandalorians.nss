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
	if ((oEntering == GetPartyLeader())) {
		object oTr_mandalorians = GetObjectByTag("tr_mandalorians", 0);
		if (GetIsObjectValid(oTr_mandalorians)) {
			if ((!GetLocalBoolean(oTr_mandalorians, 29))) {
				SetLocalBoolean(oTr_mandalorians, 29, 1);
				CreateObject(1, "222_kelborn", GetLocation(GetObjectByTag("wp_kelborn_sp", 0)), 0);
				CreateObject(1, "222_zuka", GetLocation(GetObjectByTag("wp_zuka_sp", 0)), 0);
				sub1(2, "WP_gspawn_");
				object oMand = GetObjectByTag("mand", 0);
				DelayCommand(0.1, AssignCommand(oMand, ClearAllActions()));
				DelayCommand(0.1, AssignCommand(oMand, ActionStartConversation(GetFirstPC(), "222mand", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			}
		}
	}
}

