// Prototypes
string sub6(int intParam1);
object sub5(int intParam1, string stringParam2);
string sub4(int intParam1);
object sub3(int intParam1, string stringParam2);
void sub2();
void sub1();

string sub6(int intParam1) {
	switch (intParam1) {
		case 0:
			return "remote";
			break;
	}
	return "ERROR";
}

object sub5(int intParam1, string stringParam2) {
	string string1;
	if ((stringParam2 == "WP_gspawn_")) {
		string string2 = sub6(intParam1);
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
		object3 = SpawnAvailablePUP(intParam1, GetLocation(object1));
		if (GetIsObjectValid(object3)) {
			return object3;
		}
	}
	return OBJECT_INVALID;
}

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
	int int1 = 0;
	while ((int1 < 12)) {
		if ((GetNPCSelectability(int1) != (-1))) {
			if ((!GetIsObjectValid(sub3(int1, "WP_gspawn_")))) {
				AurPostString("NPC could not spawn, invalid NPC or invalid location!", 5, 15, 10.0);
			}
			else {
				if ((int1 == 1)) {
					sub5(0, "WP_gspawn_");
				}
			}
		}
		(int1++);
	}
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
	object oArea = GetArea(OBJECT_SELF);
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if (GetIsObjectValid(GetObjectByTag("204_b4d4", 0))) {
			MusicBackgroundStop(oArea);
			MusicBackgroundChangeDay(oArea, 16, 0);
			MusicBackgroundChangeNight(oArea, 16, 0);
			MusicBackgroundPlay(oArea);
		}
		else {
			MusicBackgroundStop(oArea);
			MusicBackgroundChangeDay(oArea, 15, 0);
			MusicBackgroundChangeNight(oArea, 15, 0);
			MusicBackgroundPlay(oArea);
		}
		object o203_batono = GetObjectByTag("203_batono", 0);
		if ((!GetIsObjectValid(o203_batono))) {
			object oMerc1_batono = GetObjectByTag("merc1_batono", 0);
			object oMerc2_batono = GetObjectByTag("merc2_batono", 0);
			if (GetIsObjectValid(oMerc1_batono)) {
				DestroyObject(oMerc1_batono, 0.0, 0, 0.0, 0);
			}
			if (GetIsObjectValid(oMerc2_batono)) {
				DestroyObject(oMerc2_batono, 0.0, 0, 0.0, 0);
			}
		}
		if ((!GetGlobalBoolean("203_FIRST_ENTER"))) {
			SetGlobalBoolean("203_FIRST_ENTER", 1);
			sub1();
			sub2();
			object oHidden_turret = GetObjectByTag("hidden_turret", 0);
			object object15 = GetObjectByTag("hidden_turret", 1);
			if ((GetIsObjectValid(oHidden_turret) && GetIsObjectValid(object15))) {
				DelayCommand(0.1, AssignCommand(oHidden_turret, ActionPlayAnimation(43, 1.0, (-1.0))));
				DelayCommand(0.1, AssignCommand(object15, ActionPlayAnimation(43, 1.0, (-1.0))));
			}
		}
	}
}

