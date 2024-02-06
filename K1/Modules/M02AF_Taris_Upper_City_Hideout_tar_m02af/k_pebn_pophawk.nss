// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_utility"
#include "k_inc_stunt"
#include "k_inc_debug"

void HawkEnter() {
	int nCount1 = 0;
	
	while (GetIsObjectValid(GetObjectByTag("gizka", nCount1)))
		{
			DelayCommand(0.2, DestroyObject(GetObjectByTag("gizka", nCount1)));
			
			nCount1++;
			
			Db_PostString(("Destroy Gizka " + IntToString(nCount1)), 5, 5, 1.0);
		}
	
	int nGlobal;
	int nCount2 = 0;
	
	if (GetGlobalNumber("EBO_GIZKA_PLOT") == 1)
		{
			SetGlobalNumber("GizkaMultiplier", GetGlobalNumber("GizkaMultiplier") + 1);
			
			nGlobal = (GetGlobalNumber("GizkaMultiplier") + 1) * 3;
			
			if (nGlobal >= 15)
				{
					nGlobal = 15;
				}
				
			while (nCount2 <= nGlobal)
				{
					Db_PostString("Spawn Gizka " + IntToString(nGlobal), 7, 7, 1.0);
					
					nCount2++;
					
						{
							location lSpawn;
							
							if (nCount1 < 10)
								{
									lSpawn = GetLocation(GetObjectByTag("wp_Gizka_" + "0" + IntToString(nCount2), 0));
								}
								else
									{
										lSpawn = GetLocation(GetObjectByTag("wp_Gizka_" + IntToString(nCount2), 0));
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
	
	if (GetGlobalNumber("EBO_LURARKA") == 4)
		{
			DelayCommand(0.5, UT_CreateObject(OBJECT_TYPE_CREATURE, "LurArka", GetLocation(GetObjectByTag("SashaSpawn", 0))));
			DelayCommand(0.6, AssignCommand(GetObjectByTag("LurArka", 0), ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE)));
		}
	
	int nMystery = GetGlobalNumber("EBO_MYSTERY_BOX");
	object oBox = GetObjectByTag("EBO_MysteryBox", 0);
	
	if (nMystery == 5 && !GetIsObjectValid(oBox))
		{
			object oWP = GetWaypointByTag("EBO_MYSTERY_SPAWN");
			location lWP = GetLocation(oWP);
			
			DelayCommand(0.5, UT_CreateObject(OBJECT_TYPE_PLACEABLE, "g_pebn_mystery", lWP));
		}
		else if (nMystery == 99 && GetIsObjectValid(oBox))
			{
					DestroyObject(oBox);
			}
}

void HealNPC() {
	object oBastila = GetObjectByTag("bastila", 0);
	object oCarth = GetObjectByTag("carth", 0);
	object oCand = GetObjectByTag("cand", 0);
	object oHk47 = GetObjectByTag("hk47", 0);
	object oJolee = GetObjectByTag("jolee", 0);
	object oJuhani = GetObjectByTag("juhani", 0);
	object oMission = GetObjectByTag("mission", 0);
	object oT3m4 = GetObjectByTag("t3m4", 0);
	object oParty = GetObjectByTag("zaalbar", 0);
	object oParty;
	int nCnt = 1;
	
	while (nCnt <= 9)
		{
			if (nCnt == 1)
				{
					oParty = oBastila;
				}
			
			if (nCnt == 2)
				{
					oParty = oCarth;
				}
			
			if (nCnt == 3)
				{
					oParty = oCand;
				}
			
			if (nCnt == 4)
				{
					oParty = oHk47;
				}
			
			if (nCnt == 5)
				{
					oParty = oJolee;
				}
			
			if (nCnt == 6)
				{
					oParty = oJuhani;
				}
			
			if (nCnt == 7)
				{
					oParty = oMission;
				}
			
			if (nCnt == 8)
				{
					oParty = oT3m4;
				}
			
			if (nCnt == 9)
				{
					oParty = oParty;
				}
			
			if (GetIsObjectValid(oParty))
				{
					UT_HealNPC(oParty);
				}
			
			nCnt++;
		}
	
	UT_HealNPC(GetFirstPC());
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
			if (GetGlobalBoolean("TAR_STARTED"))
				{
					DestroyObject(oParty);
				}
				else
					{
						SetGlobalBoolean("TAR_STARTED", TRUE);
					}
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
	object oWP;
	object oParty;
	int nNum = 0;
	
	DelayCommand(0.5, ST_SetEbonHawkSkyBox());
	
	UT_ClearAllPartyMembers();
	
	DelayCommand(0.2, DestroyParty());
	
	SetGlobalBoolean("K_AT_EBON_HAWK", TRUE);
	
	if (IsAvailableCreature(NPC_BASTILA) && GetGlobalBoolean("DAN_BASTILA_AT_JEDI") == FALSE)
		{
			oParty = GetObjectByTag("bastila", 0);
			oWP = GetWaypointByTag("pebn_bastila");
			lSpawn = GetLocation(oWP);
			
			if (GetIsObjectValid(oWP))
				{
					DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_BASTILA, lSpawn));
					DelayCommand(2.0, SaveNPCState(NPC_BASTILA));
				}
		}
	
	if (IsAvailableCreature(NPC_CANDEROUS))
		{
			oParty = GetObjectByTag("cand", 0);
			oWP = GetWaypointByTag("pebn_canderous");
			lSpawn = GetLocation(oWP);
			
			if (GetIsObjectValid(oWP))
				{
					DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_CANDEROUS, lSpawn));
					DelayCommand(2.0, SaveNPCState(NPC_CANDEROUS));
				}
		}
	
	if (IsAvailableCreature(NPC_CARTH) && GetGlobalBoolean("DAN_CARTH_AT_JEDI") == FALSE)
		{
			oParty = GetObjectByTag("carth", 0);
			oWP = GetWaypointByTag("pebn_carth");
			lSpawn = GetLocation(oWP);
			
			if (GetIsObjectValid(oWP))
				{
					DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_CARTH, lSpawn));
					DelayCommand(2.0, SaveNPCState(NPC_CARTH));
				}
		}
	
	if (IsAvailableCreature(NPC_HK_47))
		{
			oParty = GetObjectByTag("hk47", 0);
			oWP = GetWaypointByTag("pebn_hk47");
			lSpawn = GetLocation(oWP);
			
			if (GetIsObjectValid(oWP))
				{
					DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_HK_47, lSpawn));
					DelayCommand(2.0, SaveNPCState(NPC_HK_47));
				}
		}
	
	if (IsAvailableCreature(NPC_JOLEE))
		{
			oParty = GetObjectByTag("jolee", 0);
			oWP = GetWaypointByTag("pebn_jolee");
			lSpawn = GetLocation(oWP);
			
			if (GetIsObjectValid(oWP))
				{
					DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_JOLEE, lSpawn));
					DelayCommand(2.0, SaveNPCState(NPC_JOLEE));
				}
		}
	
	if (IsAvailableCreature(NPC_JUHANI))
		{
			oParty = GetObjectByTag("juhani", 0);
			oWP = GetWaypointByTag("pebn_juhani");
			lSpawn = GetLocation(oWP);
			
			if (GetIsObjectValid(oWP))
				{
					DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_JUHANI, lSpawn));
					DelayCommand(1.0, ClearAllEffects());
				}
		}
	
	if (IsAvailableCreature(NPC_MISSION))
		{
			oParty = GetObjectByTag("mission", 0);
			oWP = GetWaypointByTag("pebn_mission");
			lSpawn = GetLocation(oWP);
			
			if (GetIsObjectValid(oWP))
				{
					DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_MISSION, lSpawn));
					DelayCommand(2.0, SaveNPCState(NPC_MISSION));
				}
		}
	
	if (IsAvailableCreature(NPC_T3_M4))
		{
			oParty = GetObjectByTag("t3m4", 0);
			oWP = GetWaypointByTag("pebn_t3m4");
			lSpawn = GetLocation(oWP);
			
			if (GetIsObjectValid(oWP))
				{
					DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_T3_M4, lSpawn));
					DelayCommand(2.0, SaveNPCState(NPC_T3_M4));
				}
		}
	
	if (IsAvailableCreature(NPC_ZAALBAR) && GetGlobalBoolean("tat_ZaalbarTaken") == FALSE)
		{
			oParty = GetObjectByTag("zaalbar", 0);
			oWP = GetWaypointByTag("pebn_zaalbar");
			lSpawn = GetLocation(oWP);
			
			if (GetIsObjectValid(oWP))
				{
					DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_ZAALBAR, lSpawn));
					DelayCommand(2.0, SaveNPCState(NPC_ZAALBAR));
				}
		}
	
	DelayCommand(1.0, HealNPC());
	
	SetGlobalNumber("K_SWG_BASTILA_LEVEL", 0);
	SetGlobalNumber("K_SWG_JOLEE_LEVEL", 0);
	SetGlobalNumber("K_SWG_CARTH_LEVEL", 0);
	
	if (GetLoadFromSaveGame() == FALSE)
		{
			HawkEnter();
		}
}
