// Byte code does not match

#include "k_inc_utility"
 #include "k_inc_debug"
 
 void main() {
 	
 	object oEntering = GetEnteringObject();
 	object oDoor = GetObjectByTag("lev40_blastdoorb", 0);
 	object oEnemy;
 	object oObject;
 	location lLocation = GetLocation(GetObjectByTag("lev_malak_spawn_wp", 0));
 	int nInt;
 	string sString;
 	
 	if (GetIsPC(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
 		{
 			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 			
 			if (GetIsObjectValid(oDoor))
 				{
 					Db_PostString("FOUND DOOR...", 5, 5, 1.0);
 				}
 			
 			oEnemy = GetFirstObjectInArea(OBJECT_INVALID, OBJECT_TYPE_CREATURE);
 			
 			while (GetIsObjectValid(oEnemy))
 				{
 					if (GetStandardFaction(oEnemy) == STANDARD_FACTION_HOSTILE_1)
 						{
 							DestroyObject(oEnemy, 0.0, TRUE);
 						}
 					
 					oEnemy = GetNextObjectInArea(OBJECT_INVALID, OBJECT_TYPE_CREATURE);
 				}
 			
 			SetLocked(oDoor, 0);
 			
 			SetPartyLeader(NPC_PLAYER);
 			
 			AssignCommand(GetObjectByTag("lev_invis_malak_conv", 0), ActionStartConversation(OBJECT_SELF, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
 		}
 }