// Prototypes
void sub2();
void sub1();

void sub2() {
	CreateObject(1, "militiadude", GetLocation(GetWaypointByTag("glownamil_1")), 0);
	CreateObject(1, "militiadude", GetLocation(GetWaypointByTag("glownamil_2")), 0);
	CreateObject(1, "militiadude", GetLocation(GetWaypointByTag("glownamil_3")), 0);
	CreateObject(1, "militiadude", GetLocation(GetWaypointByTag("glownamil_4")), 0);
	CreateObject(1, "militiadude", GetLocation(GetWaypointByTag("glownamil_5")), 0);
	CreateObject(1, "militiadude", GetLocation(GetWaypointByTag("glownamil_6")), 0);
	CreateObject(1, "militiadude", GetLocation(GetWaypointByTag("glownamil_7")), 0);
	CreateObject(1, "militiadude", GetLocation(GetWaypointByTag("glownamil_8")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("glownymer_1")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("glownymer_2")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("glownymer_3")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("glownymer_4")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("glownymer_5")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("glownymer_6")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("glownymer_7")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("glownymer_8")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("glownymer_9")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("glownymer_10")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("glownymer_11")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("glownymer_12")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("glownymer_13")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("glownymer_14")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("glownymer_15")), 0);
	SetGlobalFadeIn(1.0, 2.0, 0.0, 0.0, 0.0);
}

void sub1() {
	object oPC = GetFirstPC();
	AssignCommand(oPC, ActionJumpToObject(GetWaypointByTag("garagepc_door"), 1));
	CreateObject(1, "militiadude", GetLocation(GetWaypointByTag("zlsmil_1")), 0);
	CreateObject(1, "militiadude", GetLocation(GetWaypointByTag("zlsmil_2")), 0);
	CreateObject(1, "militiadude", GetLocation(GetWaypointByTag("zlsmil_3")), 0);
	CreateObject(1, "militiadude", GetLocation(GetWaypointByTag("zlsmil_4")), 0);
	CreateObject(1, "militiadude", GetLocation(GetWaypointByTag("zlsmil_5")), 0);
	CreateObject(1, "militiadude", GetLocation(GetWaypointByTag("zlsmil_6")), 0);
	CreateObject(1, "militiadude", GetLocation(GetWaypointByTag("zlsmil_7")), 0);
	CreateObject(1, "militiadude", GetLocation(GetWaypointByTag("zlsmil_8")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("zlmerattack_1")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("zlmerattack_2")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("zlmerattack_3")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("zlmerattack_4")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("zlmerattack_5")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("zlmerattack_6")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("zlmerattack_7")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("zlmerattack_8")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("zlmerattack_9")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("zlmerattack_10")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("zlmerattack_11")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("zlmerattack_12")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("zlmerattack_13")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("zlmerattack_14")), 0);
	CreateObject(1, "merc", GetLocation(GetWaypointByTag("zlmerattack_15")), 0);
	SetGlobalFadeIn(1.0, 2.0, 0.0, 0.0, 0.0);
}

void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	if (GetGlobalBoolean("601DAN_PC_DOOR_DEFEND")) {
		sub1();
	}
	else {
		sub2();
	}
	DestroyObject(GetObjectByTag("npc_azkulz2", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("g_merc_az", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("npc_akkere", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("npc_dillan", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("g_militia3", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("g_militia_sec", 0), 0.0, 0, 0.0, 0);
}