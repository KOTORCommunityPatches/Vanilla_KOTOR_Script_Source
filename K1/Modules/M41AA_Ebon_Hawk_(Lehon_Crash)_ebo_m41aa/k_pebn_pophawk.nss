// Byte code does not match

#include "k_inc_utility"
 #include "k_inc_stunt"
 #include "k_inc_debug"
 
 void HawkEnter() {
 	int int1 = 0;
 	
 	while (GetIsObjectValid(GetObjectByTag("gizka", int1)))
 		{
 			DelayCommand(0.2, DestroyObject(GetObjectByTag("gizka", int1), 0.0, 0, 0.0));
 			(int1++);
 			Db_PostString(("Destroy Gizka " + IntToString(int1)), 5, 5, 1.0);
 		}
 	
 	int int3;
 	int int4 = 0;
 	
 	if ((GetGlobalNumber("EBO_GIZKA_PLOT") == 1))
 		{
 			SetGlobalNumber("GizkaMultiplier", (GetGlobalNumber("GizkaMultiplier") + 1));
 			int3 = ((GetGlobalNumber("GizkaMultiplier") + 1) * 3);
 			
 			if ((int3 >= 15))
 				{
 					int3 = 15;
 				}
 				
 				while ((int4 <= int3))
 					{
 						Db_PostString(("Spawn Gizka " + IntToString(int3)), 7, 7, 1.0);
 						(int4++);
 						CreateObject(1, "g_gizka016", GetLocation(GetObjectByTag(("wp_Gizka_" + PadString(IntToString(int4), "0", 2)), 0)), 0);
 					}
 		}
 	
 	DelayCommand(0.2, DestroyObject(GetObjectByTag("Sasha", 0), 0.0, 0, 0.0));
 	DelayCommand(0.2, DestroyObject(GetObjectByTag("LurArka", 0), 0.0, 0, 0.0));
 	
 	if (((GetGlobalNumber("Ebo_Sasha_State") >= 40) && (GetGlobalNumber("Ebo_Sasha_State") < 99)))
 		{
 			DelayCommand(0.5, UT_CreateObject(1, "Sasha", GetLocation(GetObjectByTag("SashaSpawn", 0))));
 		}
 	
 	if ((GetGlobalNumber("EBO_LURARKA") == 4))
 		{
 			DelayCommand(0.5, UT_CreateObject(1, "LurArka", GetLocation(GetObjectByTag("SashaSpawn", 0))));
 			DelayCommand(0.6, AssignCommand(GetObjectByTag("LurArka", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "")));
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
 	
 	if ((GetLoadFromSaveGame() == FALSE))
 		{
 			PrintString("Run enter script");
 			location lPartyLoc;
 			object oPartyWP;
 			object oParty;
 			int int2 = 0;
 			
 			DelayCommand(0.5, ST_SetEbonHawkSkyBox());
 			UT_ClearAllPartyMembers();
 			DelayCommand(0.2, DestroyParty());
 			SetGlobalBoolean("K_AT_EBON_HAWK", TRUE);
 			
 			if ((IsAvailableCreature(NPC_BASTILA) && (GetGlobalBoolean("DAN_BASTILA_AT_JEDI") == 0)))
 				{
 					oParty = GetObjectByTag("bastila", 0);
 					oPartyWP = GetWaypointByTag("pebn_bastila");
 					lPartyLoc = GetLocation(oPartyWP);
 					
 					if (GetIsObjectValid(oPartyWP))
 						{
 							DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_BASTILA, lPartyLoc));
 							DelayCommand(1.0, ClearAllEffects());
 							DelayCommand(2.0, SaveNPCState(NPC_BASTILA));
 						}
 				}
 			if (IsAvailableCreature(NPC_CANDEROUS))
 				{
 					oParty = GetObjectByTag("cand", 0);
 					oPartyWP = GetWaypointByTag("pebn_canderous");
 					lPartyLoc = GetLocation(oPartyWP);
 					
 					if (GetIsObjectValid(oPartyWP))
 						{
 							DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_CANDEROUS, lPartyLoc));
 							DelayCommand(1.0, ClearAllEffects());
 							DelayCommand(2.0, SaveNPCState(NPC_CANDEROUS));
 						}
 				}
 			if ((IsAvailableCreature(NPC_CARTH) && (GetGlobalBoolean("DAN_CARTH_AT_JEDI") == 0)))
 				{
 					oParty = GetObjectByTag("carth", 0);
 					oPartyWP = GetWaypointByTag("pebn_carth");
 					lPartyLoc = GetLocation(oPartyWP);
 					
 					if (GetIsObjectValid(oPartyWP))
 						{
 							DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_CARTH, lPartyLoc));
 							DelayCommand(1.0, ClearAllEffects());
 							DelayCommand(2.0, SaveNPCState(NPC_CARTH));
 						}
 				}
 			if (IsAvailableCreature(NPC_HK_47))
 				{
 					oParty = GetObjectByTag("hk47", 0);
 					oPartyWP = GetWaypointByTag("pebn_hk47");
 					lPartyLoc = GetLocation(oPartyWP);
 					
 					if (GetIsObjectValid(oPartyWP))
 						{
 							DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_HK_47, lPartyLoc));
 							DelayCommand(1.0, ClearAllEffects());
 							DelayCommand(2.0, SaveNPCState(NPC_HK_47));
 						}
 				}
 			if (IsAvailableCreature(NPC_JOLEE))
 				{
 					oParty = GetObjectByTag("jolee", 0);
 					oPartyWP = GetWaypointByTag("pebn_jolee");
 					lPartyLoc = GetLocation(oPartyWP);
 					
 					if (GetIsObjectValid(oPartyWP))
 						{
 							DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_JOLEE, lPartyLoc));
 							DelayCommand(1.0, ClearAllEffects());
 							DelayCommand(2.0, SaveNPCState(NPC_JOLEE));
 						}
 				}
 			if (IsAvailableCreature(NPC_JUHANI))
 				{
 					oParty = GetObjectByTag("juhani", 0);
 					oPartyWP = GetWaypointByTag("pebn_juhani");
 					lPartyLoc = GetLocation(oPartyWP);
 					
 					if (GetIsObjectValid(oPartyWP))
 						{
 							DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_JUHANI, lPartyLoc));
 							DelayCommand(1.0, ClearAllEffects());
 							DelayCommand(2.0, SaveNPCState(NPC_JUHANI));
 						}
 				}
 			if (IsAvailableCreature(NPC_MISSION))
 				{
 					oParty = GetObjectByTag("mission", 0);
 					oPartyWP = GetWaypointByTag("pebn_mission");
 					lPartyLoc = GetLocation(oPartyWP);
 					
 					if (GetIsObjectValid(oPartyWP))
 						{
 							DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_MISSION, lPartyLoc));
 							DelayCommand(1.0, ClearAllEffects());
 							DelayCommand(2.0, SaveNPCState(NPC_MISSION));
 						}
 				}
 			if (IsAvailableCreature(NPC_T3_M4))
 				{
 					oParty = GetObjectByTag("t3m4", 0);
 					oPartyWP = GetWaypointByTag("pebn_t3m4");
 					lPartyLoc = GetLocation(oPartyWP);
 					
 					if (GetIsObjectValid(oPartyWP))
 						{
 							DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_T3_M4, lPartyLoc));
 							DelayCommand(1.0, ClearAllEffects());
 							DelayCommand(2.0, SaveNPCState(NPC_T3_M4));
 						}
 				}
 			if ((IsAvailableCreature(NPC_ZAALBAR) && (GetGlobalBoolean("tat_ZaalbarTaken") == 0)))
 				{
 					oParty = GetObjectByTag("zaalbar", 0);
 					oPartyWP = GetWaypointByTag("pebn_zaalbar");
 					lPartyLoc = GetLocation(oPartyWP);
 					
 					if (GetIsObjectValid(oPartyWP))
 						{
 							DelayCommand(0.5, UT_SpawnAvailableNPC(NPC_ZAALBAR, lPartyLoc));
 							DelayCommand(1.0, ClearAllEffects());
 							DelayCommand(2.0, SaveNPCState(NPC_ZAALBAR));
 						}
 				}
 			
 			DelayCommand(1.0, UT_HealAllPartyNPCs());
 			HawkEnter();
 			SetGlobalNumber("K_SWG_BASTILA_LEVEL", 0);
 			SetGlobalNumber("K_SWG_JOLEE_LEVEL", 0);
 			SetGlobalNumber("K_SWG_CARTH_LEVEL", 0);
 			
 			int nGlobal = GetGlobalNumber("EBO_MYSTERY_BOX");
 			object oEBO_MysteryBox = GetObjectByTag("EBO_MysteryBox", 0);
 			
 			if (((nGlobal == 5) && (!GetIsObjectValid(oEBO_MysteryBox))))
 				{
 					object oEBO_MYSTERY_SPAWN = GetWaypointByTag("EBO_MYSTERY_SPAWN");
 					location lPartyLoc1 = GetLocation(oEBO_MYSTERY_SPAWN);
 					DelayCommand(0.5, UT_CreateObject(64, "g_pebn_mystery", lPartyLoc1));
 				}
 				else
 					{
 						if (((nGlobal == 99) && GetIsObjectValid(oEBO_MysteryBox)))
 							{
 								DestroyObject(oEBO_MysteryBox, 0.0, 0, 0.0);
 							}
 					}
 		}
 }