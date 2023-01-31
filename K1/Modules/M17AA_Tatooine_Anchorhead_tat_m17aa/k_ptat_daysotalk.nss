// Byte code does not match

void main() {
 	
 	object oEntering = GetEnteringObject();
 	object oPC = GetFirstPC();
 	object oWP = GetWaypointByTag("tat17_daysospawn");
 	location lSpawn = GetLocation(oWP);
 	
 	if (GetIsPC(oEntering) && GetGlobalBoolean("tat_DaysoTiff") == TRUE)
 		{
 			SetGlobalFadeOut();
 			
 			SetPartyLeader(NPC_PLAYER);
 			
 			object oDuros = CreateObject(OBJECT_TYPE_CREATURE, "tat17_xconser_01", lSpawn);
 			AssignCommand(oDuros, ActionStartConversation(oPC, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
 			
 			DestroyObject(OBJECT_SELF);
 		}
 }