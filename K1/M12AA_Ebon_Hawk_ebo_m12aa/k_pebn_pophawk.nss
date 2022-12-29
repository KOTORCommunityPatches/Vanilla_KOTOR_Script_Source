#include "k_inc_utility"
#include "k_inc_debug"

void HawkEnter() {
	
	int nGizka = 0;
	
	while (GetIsObjectValid(GetObjectByTag("gizka", nGizka)))
		{
			DelayCommand(0.2, DestroyObject(GetObjectByTag("gizka", nGizka)));
			(nGizka++);
			
			Db_PostString(("Destroy Gizka " + IntToString(nGizka)), 5, 5, 1.0);
		}
	
	int nMultiply;
	int nState = 0;
	
	if ((GetGlobalNumber("EBO_GIZKA_PLOT") == 1))
		{
			SetGlobalNumber("GizkaMultiplier", (GetGlobalNumber("GizkaMultiplier") + 1));
			nMultiply = ((GetGlobalNumber("GizkaMultiplier") + 1) * 3);
			
			if ((nMultiply >= 15))
				{
					nMultiply = 15;
				}
			
			while ((nState <= nMultiply))
				{
					Db_PostString(("Spawn Gizka " + IntToString(nMultiply)), 7, 7, 1.0);
					
					(nState++);
					
					{
						location lSpawn;
						
						if ((nGizka < 10))
							{
								lSpawn = GetLocation(GetObjectByTag((("wp_Gizka_" + "0") + IntToString(nState)), 0));
							}
							else
								{
									lSpawn = GetLocation(GetObjectByTag(("wp_Gizka_" + IntToString(nState)), 0));
								}
						
						CreateObject(OBJECT_TYPE_CREATURE, "g_gizka016", lSpawn);
					}
				}
		}
	
	DelayCommand(0.2, DestroyObject(GetObjectByTag("Sasha", 0)));
	DelayCommand(0.2, DestroyObject(GetObjectByTag("LurArka", 0)));
	
	if (GetGlobalNumber("Ebo_Sasha_State") >= 40 && GetGlobalNumber("Ebo_Sasha_State") < 99)
		{
			DelayCommand(0.5, UT_CreateObject(OBJECT_TYPE_CREATURE, "Sasha", GetLocation(GetObjectByTag("SashaSpawn", 0))));
		}
	
	if ((GetGlobalNumber("EBO_LURARKA") == 4))
		{
			NoClicksFor(0.7);
			DelayCommand(0.5, UT_CreateObject(OBJECT_TYPE_CREATURE, "LurArka", GetLocation(GetObjectByTag("SashaSpawn", 0))));
			DelayCommand(0.6, AssignCommand(GetObjectByTag("LurArka", 0), ActionStartConversation(GetFirstPC())));
		}
	
	int nGlobal = GetGlobalNumber("EBO_MYSTERY_BOX");
	object oMysteryBox = GetObjectByTag("EBO_MysteryBox", 0);
	
	if (nGlobal == 5 && !GetIsObjectValid(oMysteryBox))
		{
			object oEBO_MYSTERY_SPAWN = GetWaypointByTag("EBO_MYSTERY_SPAWN");
			location lMystery = GetLocation(oEBO_MYSTERY_SPAWN);
			
			DelayCommand(0.5, UT_CreateObject(OBJECT_TYPE_PLACEABLE, "g_pebn_mystery", lMystery));
		}
		else
			{
				if (nGlobal == 99 && GetIsObjectValid(oMysteryBox))
					{
						DestroyObject(oMysteryBox);
					}
			}
}

void DestroyParty() {
	
	object oParty = GetObjectByTag("bastila", 0);
	
	if (GetIsObjectValid(oParty))
		{
			DestroyObject(oParty);
		}
	
	oParty = GetObjectByTag("cand", 0);
	
	if (GetIsObjectValid(oParty))
		{
			DestroyObject(oParty);
		}
	
	oParty = GetObjectByTag("carth", 0);
	
	if (GetIsObjectValid(oParty))
		{
			DestroyObject(oParty);
		}
	
	oParty = GetObjectByTag("hk47", 0);
	
	if (GetIsObjectValid(oParty))
		{
			DestroyObject(oParty);
		}
	
	oParty = GetObjectByTag("jolee", 0);
	
	if (GetIsObjectValid(oParty))
		{
			DestroyObject(oParty);
		}
	
	oParty = GetObjectByTag("juhani", 0);
	
	if (GetIsObjectValid(oParty))
		{
			DestroyObject(oParty);
		}
	
	oParty = GetObjectByTag("mission", 0);
	
	if (GetIsObjectValid(oParty))
		{
			DestroyObject(oParty);
		}
	
	oParty = GetObjectByTag("t3m4", 0);
	
	if (GetIsObjectValid(oParty))
		{
			DestroyObject(oParty);
		}
	
	oParty = GetObjectByTag("zaalbar", 0);
	
	if (GetIsObjectValid(oParty))
		{
			DestroyObject(oParty);
		}
}

void main() {
	
	Db_MyPrintString("Run enter script");
	
	location lSpawn;
	object oSpawnWP;
	object oParty;
	int int1 = 0;
	
	UT_ClearAllPartyMembers();
	DelayCommand(0.2, DestroyParty());
	SetGlobalBoolean("K_AT_EBON_HAWK", TRUE);
	
	if (IsAvailableCreature(NPC_BASTILA) && GetGlobalBoolean("DAN_BASTILA_AT_JEDI") == FALSE)
		{
			oParty = GetObjectByTag("bastila", 0);
			oSpawnWP = GetWaypointByTag("pebn_bastila");
			lSpawn = GetLocation(oSpawnWP);
			
			if (GetIsObjectValid(oSpawnWP))
				{
					DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_BASTILA, lSpawn));
					DelayCommand(2.0, SaveNPCState(NPC_BASTILA));
				}
		}
	
	if (IsAvailableCreature(NPC_CANDEROUS))
		{
			oParty = GetObjectByTag("cand", 0);
			oSpawnWP = GetWaypointByTag("pebn_canderous");
			lSpawn = GetLocation(oSpawnWP);
			
			if (GetIsObjectValid(oSpawnWP))
				{
					DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_CANDEROUS, lSpawn));
					DelayCommand(2.0, SaveNPCState(NPC_CANDEROUS));
				}
		}
	
	if (IsAvailableCreature(NPC_CARTH) && GetGlobalBoolean("DAN_CARTH_AT_JEDI") == FALSE)
		{
			oParty = GetObjectByTag("carth", 0);
			oSpawnWP = GetWaypointByTag("pebn_carth");
			lSpawn = GetLocation(oSpawnWP);
			
			if (GetIsObjectValid(oSpawnWP))
				{
					DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_CARTH, lSpawn));
					DelayCommand(2.0, SaveNPCState(NPC_CARTH));
				}
		}
	
	if (IsAvailableCreature(NPC_HK_47))
		{
			oParty = GetObjectByTag("hk47", 0);
			oSpawnWP = GetWaypointByTag("pebn_hk47");
			lSpawn = GetLocation(oSpawnWP);
			
			if (GetIsObjectValid(oSpawnWP))
				{
					DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_HK_47, lSpawn));
					DelayCommand(2.0, SaveNPCState(NPC_HK_47));
				}
		}
	
	if (IsAvailableCreature(NPC_JOLEE))
		{
			oParty = GetObjectByTag("jolee", 0);
			oSpawnWP = GetWaypointByTag("pebn_jolee");
			lSpawn = GetLocation(oSpawnWP);
			
			if (GetIsObjectValid(oSpawnWP))
				{
					DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_JOLEE, lSpawn));
					DelayCommand(2.0, SaveNPCState(NPC_JOLEE));
				}
		}
	
	if (IsAvailableCreature(NPC_JUHANI))
		{
			oParty = GetObjectByTag("juhani", 0);
			oSpawnWP = GetWaypointByTag("pebn_juhani");
			lSpawn = GetLocation(oSpawnWP);
			
			if (GetIsObjectValid(oSpawnWP))
				{
					DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_JUHANI, lSpawn));
					DelayCommand(1.0, ClearAllEffects());
				}
		}
	
	if (IsAvailableCreature(NPC_MISSION))
		{
			oParty = GetObjectByTag("mission", 0);
			oSpawnWP = GetWaypointByTag("pebn_mission");
			lSpawn = GetLocation(oSpawnWP);
			
			if (GetIsObjectValid(oSpawnWP))
				{
					DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_MISSION, lSpawn));
					DelayCommand(2.0, SaveNPCState(NPC_MISSION));
				}
		}
	
	if (IsAvailableCreature(NPC_T3_M4))
		{
			oParty = GetObjectByTag("t3m4", 0);
			oSpawnWP = GetWaypointByTag("pebn_t3m4");
			lSpawn = GetLocation(oSpawnWP);
			
			if (GetIsObjectValid(oSpawnWP))
				{
					DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_T3_M4, lSpawn));
					DelayCommand(2.0, SaveNPCState(NPC_T3_M4));
				}
		}
	
	if (IsAvailableCreature(NPC_ZAALBAR) && GetGlobalBoolean("tat_ZaalbarTaken") == FALSE)
		{
			oParty = GetObjectByTag("zaalbar", 0);
			oSpawnWP = GetWaypointByTag("pebn_zaalbar");
			lSpawn = GetLocation(oSpawnWP);
			
			if (GetIsObjectValid(oSpawnWP))
				{
					DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_ZAALBAR, lSpawn));
					DelayCommand(2.0, SaveNPCState(NPC_ZAALBAR));
				}
		}
	
	DelayCommand(1.0, UT_HealAllPartyNPCs());
	
	SetGlobalNumber("K_SWG_BASTILA_LEVEL", 0);
	SetGlobalNumber("K_SWG_JOLEE_LEVEL", 0);
	SetGlobalNumber("K_SWG_CARTH_LEVEL", 0);
	
	if (GetLoadFromSaveGame() == FALSE)
		{
			HawkEnter();
		}
}
