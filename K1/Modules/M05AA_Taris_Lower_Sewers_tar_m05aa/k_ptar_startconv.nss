// Byte code does not match

#include "k_inc_debug"
 
 void main() {
 	
 	object oFField = GetObjectByTag("tar05_forcefield", 0);
 	
 	if (!GetIsOpen(oFField) && IsNPCPartyMember(NPC_MISSION))
 		{
 			object oMission = GetObjectByTag("mission", 0);
 			object oComp = GetObjectByTag("tar05_wpmiscomp", 0);
 			
 			if (GetIsObjectValid(oMission) && GetIsObjectValid(oComp))
 				{
 					Db_PostString("MISSION OPEN FF", 5, 5, 5.0);
 				}
 			
 			ActionStartConversation(GetFirstPC(), "tar05_ff_dlg2", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE);
 		}
 		else
 			{
 				ActionStartConversation(GetPartyMemberByIndex(0), "", FALSE, CONVERSATION_TYPE_COMPUTER, TRUE);
 			}
 }
