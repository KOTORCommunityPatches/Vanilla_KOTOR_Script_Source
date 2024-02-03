// Prototypes
void sub7(string stringParam1);
void sub6();
void sub5();
void sub4();
void sub3();
void sub2(string stringParam1);
void sub1();

void sub7(string stringParam1) {
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

void sub6() {
	sub2("npc_dillan");
	sub2("npc_saedhe");
	object oNpc_akkere = GetObjectByTag("npc_akkere", 0);
	AssignCommand(oNpc_akkere, ClearAllActions());
	AssignCommand(oNpc_akkere, ActionJumpToLocation(GetLocation(GetObjectByTag("wp_akkere_home", 0))));
	DelayCommand(1.0, ApplyEffectToObject(2, EffectDeath(0, 1, 0), oNpc_akkere, 0.0));
}

void sub5() {
	sub2("g_militia_gun");
	sub2("g_militia004");
	sub2("g_militia005");
	sub2("g_militia006");
	sub2("g_militia10");
	sub2("g_militia5");
	sub2("g_militia6");
	sub2("g_militia8");
	sub2("g_militia2");
	sub2("g_militia");
	sub2("g_militia4");
	sub2("g_militia3");
	sub2("g_militia_sec");
	sub2("npc_zherron");
}

void sub4() {
	sub2("g_merc_east");
	sub2("g_merc_west");
	sub2("g_merc_az");
	sub2("npc_azkul");
}

void sub3() {
	AurPostString("Clearing mines", 5, 20, 5.0);
	object oAreaObject = GetFirstObjectInArea(OBJECT_INVALID, 32767);
	while (GetIsObjectValid(oAreaObject)) {
		if (((GetObjectType(oAreaObject) == 4) && GetIsTrapped(oAreaObject))) {
			DestroyObject(oAreaObject, 0.0, 0, 0.0, 0);
		}
		oAreaObject = GetNextObjectInArea(OBJECT_INVALID, 32767);
	}
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
	sub2("turret_fake_a");
	sub2("turret_fake_b");
	sub2("turret_fake_c");
}

void main() {
	sub1();
	if (((GetGlobalNumber("601DAN_Battle_Mili") == 4) && (!GetGlobalBoolean("601DAN_Winners")))) {
		sub3();
		sub4();
		sub5();
		int nGlobal = GetGlobalNumber("602DAN_End");
		if ((nGlobal == 2)) {
			sub6();
			sub7("merc_winner");
		}
		else {
			if ((nGlobal == 1)) {
				sub7("militia_winner");
				DelayCommand(1.0, AssignCommand(GetObjectByTag("npc_dillan", 0), ActionJumpToLocation(GetLocation(GetObjectByTag("WP_dillan_home", 0)))));
				DelayCommand(1.0, AssignCommand(GetObjectByTag("npc_akkere", 0), ActionJumpToLocation(GetLocation(GetObjectByTag("wp_akkere_home", 0)))));
				DelayCommand(1.0, AssignCommand(GetObjectByTag("npc_saedhe", 0), ActionJumpToLocation(GetLocation(GetObjectByTag("wp_saedhe_end", 0)))));
			}
			else {
				AurPostString("ERROR: Spawning winners of Khoonda battle.", 15, 15, 10.0);
			}
		}
		SetGlobalBoolean("601DAN_Winners", 1);
	}
}

