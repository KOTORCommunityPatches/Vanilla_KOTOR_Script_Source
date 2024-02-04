// Prototypes
void sub5(string stringParam1);
void sub4();
void sub3();
void sub2(string stringParam1);
void sub1();

void sub5(string stringParam1) {
	int int1;
	object object1;
	object object2;
	int1 = 1;
	while ((int1 < 5)) {
		{
			string string1 = ("WP_winner_" + IntToString(int1));
			object1 = GetObjectByTag(string1, 0);
			if (GetIsObjectValid(object1)) {
				CreateObject(1, stringParam1, GetLocation(object1), 0);
			}
			else {
				AurPostString("ERROR: Invalid winner waypoint!", 10, 18, 10.0);
			}
		}
		(int1++);
	}
}

void sub4() {
	sub2("npc_gerevick");
	sub2("dan_ctz_male");
	sub2("dan_ctz_f2");
	sub2("dan_ctz_f1");
	sub2("602_receptionist");
	sub2("npc_suulru");
	sub2("npc_adum");
	sub2("npc_berun");
	sub2("npc_zherron");
	sub2("terena_guard");
	sub2("npc_suulru_milit");
	sub2("g_staff_f");
}

void sub3() {
	sub2("g_militia_a");
	sub2("g_militia_b");
	sub2("g_militia_c");
	sub2("g_militia_d");
	sub2("defense_droid");
	sub2("g_militia");
	sub2("g_militia3");
	sub2("g_militia4");
	sub2("g_militia2");
	sub2("npc_akkere_milit");
	sub2("npc_dillan_milit");
	sub2("npc_jorran_milit");
}

void sub2(string stringParam1) {
	int int1 = 0;
	object object1 = GetObjectByTag(stringParam1, int1);
	while (GetIsObjectValid(object1)) {
		DestroyObject(object1, 0.0, 0, 0.0, 0);
		object1 = GetObjectByTag(stringParam1, (int1++));
	}
}

void sub1() {
	sub2("g_merc");
}

void main() {
	if (((GetGlobalNumber("601DAN_Battle_Mili") == 4) && (!GetGlobalBoolean("602DAN_Winners")))) {
		sub1();
		sub3();
		int nGlobal = GetGlobalNumber("602DAN_End");
		if ((nGlobal == 2)) {
			sub4();
			sub5("merc_winner");
		}
		else {
			if ((nGlobal == 1)) {
				sub5("militia_winner");
				object oNpc_suulru_milit = GetObjectByTag("npc_suulru_milit", 0);
				ChangeToStandardFaction(oNpc_suulru_milit, 5);
				AssignCommand(oNpc_suulru_milit, ActionJumpToObject(GetObjectByTag("wp_winner_suulru", 0), 1));
				CreateObject(1, "602_receptionist", Location(Vector((-26.208857), 4.0833216, 7.5001326), 180.0), 0);
				CreateObject(1, "dan_ctz_f2", Location(Vector((-37.260235), 12.848524, 7.5000267), (-0.2548596)), 0);
				CreateObject(1, "g_staff_f", Location(Vector((-18.033144), (-0.9602666), 7.5000014), 270.0), 0);
				CreateObject(1, "dan_ctz_male", Location(Vector((-20.809702), 14.215767, 7.5000014), 270.0), 0);
			}
			else {
				AurPostString("ERROR: Spawning winners of Khoonda battle.", 15, 15, 10.0);
			}
		}
		SetGlobalBoolean("602DAN_Winners", 1);
	}
}