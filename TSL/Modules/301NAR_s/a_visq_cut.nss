// Prototypes
object sub3(int intParam1, string stringParam2);
string sub2(int intParam1);
void sub1(int intParam1);

object sub3(int intParam1, string stringParam2) {
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

void sub1(int intParam1) {
	string string1 = sub2(intParam1);
	string string3 = ("WP_move_" + string1);
	object object1 = GetObjectByTag(string1, 0);
	if ((!GetIsObjectValid(object1))) {
		object1 = sub3(intParam1, string3);
		return;
	}
	AssignCommand(object1, ClearAllActions());
	AssignCommand(object1, ActionJumpToLocation(GetLocation(GetObjectByTag(string3, 0))));
}

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
			break;
		case 2:
			break;
		case 3:
			break;
		case 4:
			break;
		case 5:
			SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			{
				object oPC = GetFirstPC();
				AssignCommand(oPC, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_move_player", 0))));
				sub1(0);
				sub1(6);
				sub1(9);
				sub1(1);
				sub1(11);
				sub1(4);
			}
			break;
		case 6:
			{
				object oG_thug004 = CreateObject(1, "g_thug004", GetLocation(GetObjectByTag("WP_spawn_visquis", 0)), 0);
				SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
			}
			break;
		case 7:
			{
				object oC_drd_astro003 = CreateObject(1, "c_drd_astro003", GetLocation(GetObjectByTag("WP_spawn_sc21", 0)), 0);
				object object10 = CreateObject(1, "g_thug004", GetLocation(GetObjectByTag("WP_spawn_visquis", 0)), 0);
				SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
			}
			break;
		case 8:
			break;
		case 9:
			break;
		case 10:
			break;
		case 11:
			break;
		case 12:
			break;
		case 13:
			{
				object oVisquis = GetObjectByTag("visquis", 0);
				if (GetIsObjectValid(oVisquis)) {
					DestroyObject(oVisquis, 0.0, 0, 0.0, 0);
				}
				object oSc21 = GetObjectByTag("sc21", 0);
				if (GetIsObjectValid(oSc21)) {
					AssignCommand(oSc21, ClearAllActions());
					AssignCommand(oSc21, ActionForceMoveToLocation(GetLocation(GetObjectByTag("WP_sc21_leave", 0)), 1, 30.0));
					DelayCommand(2.0, DestroyObject(oSc21, 0.0, 0, 0.0, 0));
				}
			}
			break;
		case 20:
			break;
	}
}

