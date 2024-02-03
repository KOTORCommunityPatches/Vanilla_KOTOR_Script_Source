// Prototypes
void sub5();
void sub4(object objectParam1);
void sub3();
object sub2(string stringParam1, int intParam2);
void sub1(string stringParam1);

void sub5() {
	int int1;
	int nGlobal = GetGlobalNumber("602DAN_Droids_Active");
	int1 = 0;
	while ((int1 < nGlobal)) {
		{
			string string1 = ("WP_drd_" + IntToString((int1 + 1)));
			object oDefense_droid = GetObjectByTag("defense_droid", int1);
			AssignCommand(oDefense_droid, ClearAllActions());
			AssignCommand(oDefense_droid, ActionJumpToLocation(GetLocation(GetObjectByTag(string1, 0))));
			ChangeToStandardFaction(oDefense_droid, 2);
		}
		(int1++);
	}
}

void sub4(object objectParam1) {
	effect efDamage = EffectDamage((GetCurrentHitPoints(objectParam1) / 2), 8, 0);
	ApplyEffectToObject(0, efDamage, objectParam1, 0.0);
}

void sub3() {
	string string1;
	string string2;
	string string3;
	string string4;
	object object1;
	int int1 = 0;
	while ((int1 < 4)) {
		if ((int1 == 0)) {
			string1 = "g_militia_a";
			string2 = "WP_militia_1";
			string3 = "602DAN_Wounded1_State";
			string4 = "g_militia007";
		}
		else {
			if ((int1 == 1)) {
				string1 = "g_militia_b";
				string2 = "WP_militia_2";
				string3 = "602DAN_Wounded2_State";
				string4 = "g_militia009";
			}
			else {
				if ((int1 == 2)) {
					string1 = "g_militia_c";
					string2 = "WP_militia_3";
					string3 = "602DAN_Wounded3_State";
					string4 = "g_militia003";
				}
				else {
					if ((int1 == 3)) {
						string1 = "g_militia_d";
						string2 = "WP_militia_4";
						string3 = "602DAN_Wounded4_State";
						string4 = "g_militia008";
					}
				}
			}
		}
		if ((GetGlobalNumber(string3) != 1)) {
			object1 = GetObjectByTag(string1, 0);
			if (GetIsObjectValid(object1)) {
				object object3 = GetObjectByTag(string2, 0);
				DestroyObject(object1, 0.0, 0, 0.0, 0);
				object1 = CreateObject(1, string4, GetLocation(object3), 0);
				if ((GetGlobalNumber(string3) == 0)) {
					SetGlobalNumber(string3, 2);
					DelayCommand(0.1, sub4(object1));
				}
				AssignCommand(object1, ClearAllActions());
				AssignCommand(object1, ActionPlayAnimation(19, 1.0, (-1.0)));
				ChangeToStandardFaction(object1, 2);
			}
		}
		(int1++);
	}
}

object sub2(string stringParam1, int intParam2) {
	string string1;
	if ((intParam2 == 0)) {
		string1 = ("sp_" + stringParam1);
	}
	else {
		string1 = (("sp_" + stringParam1) + IntToString(intParam2));
	}
	return CreateObject(1, stringParam1, GetLocation(GetObjectByTag(string1, 0)), 0);
}

void sub1(string stringParam1) {
	int int1 = 0;
	object object1 = GetObjectByTag(stringParam1, int1);
	while (GetIsObjectValid(object1)) {
		DestroyObject(object1, 0.0, 0, 0.0, 0);
		object1 = GetObjectByTag(stringParam1, (int1++));
	}
}

void main() {
	object oDoor_Terena = GetObjectByTag("Door_Terena", 0);
	object oAo_door = GetObjectByTag("ao_door", 0);
	object oDantooine_Door_5 = GetObjectByTag("Dantooine Door 5", 0);
	AssignCommand(oDoor_Terena, ActionCloseDoor(oDoor_Terena));
	AssignCommand(oAo_door, ActionCloseDoor(oAo_door));
	AssignCommand(oDantooine_Door_5, ActionCloseDoor(oDantooine_Door_5));
	SetLocked(oDoor_Terena, 1);
	SetLocked(oAo_door, 1);
	SetLocked(oDantooine_Door_5, 1);
	sub1("npc_suulru");
	sub2("npc_azkul", 0);
	sub2("npc_dopak", 0);
	sub2("g_merc_az", 9);
	sub2("g_merc_az", 2);
	sub2("g_merc_az", 3);
	sub2("g_merc_az", 4);
	sub2("g_merc_az", 5);
	sub2("g_merc_az", 10);
	sub3();
	sub5();
	if ((GetGlobalNumber("601DAN_Dillan") == 1)) {
		sub2("npc_dillan_milit", 0);
	}
	if ((GetGlobalNumber("601DAN_Akkere") == 1)) {
		sub2("npc_akkere_milit", 0);
	}
	if ((GetGlobalNumber("602DAN_Suulru") == 1)) {
		sub2("npc_suulru_milit", 0);
	}
	if ((GetGlobalNumber("605DAN_Jorran") == 1)) {
		sub2("npc_jorran_milit", 0);
	}
	SetGlobalBoolean("600DAN_Battle_Spawned", 1);
}

