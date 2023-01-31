// Byte code does not match

#include "k_inc_kas"
 
 void Spawn_CS_NPCs() {
 	
 	object oWP_Wookiee01 = GetObjectByTag("kas22_captwook1", 0);
 	object oWP_Wookiee02 = GetObjectByTag("kas22_captwook2", 0);
 	object oWP_Guard01 = GetObjectByTag("kas22_captwook3", 0);
 	object oWP_Guard02 = GetObjectByTag("kas22_captwook4", 0);
 	location lWookiee01 = GetLocation(oWP_Wookiee01);
 	location lWookiee02 = GetLocation(oWP_Wookiee02);
 	location lGuard01 = GetLocation(oWP_Guard01);
 	location lGuard02 = GetLocation(oWP_Guard02);
 	
 	CreateObject(OBJECT_TYPE_CREATURE, "kas22_wookcap_02", lWookiee01);
 	CreateObject(OBJECT_TYPE_CREATURE, "kas22_wookcap_03", lWookiee02);
 	CreateObject(OBJECT_TYPE_CREATURE, "kas22_capczer_01", lGuard01);
 	CreateObject(OBJECT_TYPE_CREATURE, "kas22_capczer_02", lGuard02);
 }
 
 void main() {
 	
 	object oPC = GetFirstPC();
 	object oEntering = GetEnteringObject();
 	object oOld_Janos = GetObjectByTag("kas22_janos_01", 0);
 	object oWP_Janos = GetWaypointByTag("WP_kas22_janos_01_08");
 	location lJanos = GetLocation(oWP_Janos);
 	
 	if (oEntering == oPC && GetFreyyrDeadGlobal() == TRUE)
 		{
 			SetGlobalFadeOut();
 			
 			Spawn_CS_NPCs();
 			
 			SetPartyLeader(NPC_PLAYER);
 			CancelCombat(oPC);
 			
 			DestroyObject(oOld_Janos, 0.0, TRUE);
 			
 			object oNew_Janos = CreateObject(OBJECT_TYPE_CREATURE, "kas22_xxjanos_02", lJanos);
 			NoClicksFor(1.2);
 			AssignCommand(oNew_Janos, DelayCommand(1.0, ActionStartConversation(oPC, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
 		}
 }