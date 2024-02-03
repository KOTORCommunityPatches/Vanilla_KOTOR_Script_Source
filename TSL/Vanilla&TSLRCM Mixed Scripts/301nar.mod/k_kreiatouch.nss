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
	if ((GetEnteringObject() == GetPartyLeader())) {
		object oAtton = GetObjectByTag("Atton", 0);
		if ((oAtton == GetFirstPC())) {
			return;
		}
		if (((GetGlobalNumber("301NAR_Kreia_Teach") == 1) && (GetGlobalNumber("000_Mira_Jedi") == 1))) {
			object oMira = GetObjectByTag("Mira", 0);
			if (GetIsObjectValid(oMira)) {
				AssignCommand(oMira, ClearAllActions());
				AssignCommand(oMira, ActionStartConversation(GetFirstPC(), "MiraTch", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
		}
		else {
			if ((GetGlobalNumber("301NAR_Kreia_Teach") == 0)) {
				object oKreia = GetObjectByTag("Kreia", 0);
				if ((!GetIsObjectValid(oKreia))) {
					oKreia = sub1(6, "wp_kreia");
				}
				if (GetIsObjectValid(oKreia)) {
					AurPostString("k_kreiatouch: Hiho let's talk to KreiaTch, please don't crash.", 5, 5, 5.0);
					AssignCommand(oKreia, ClearAllActions());
					AssignCommand(oKreia, ActionStartConversation(GetFirstPC(), "KreiaTch", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
				}
			}
		}
	}
}

