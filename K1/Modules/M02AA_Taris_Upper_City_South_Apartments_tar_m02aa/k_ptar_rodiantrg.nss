// Byte code does not match

#include "k_inc_utility"
 
 void main() {
 	
 	object oEntering = GetEnteringObject();
 	
 	if (GetIsPC(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF) && GetGlobalBoolean("Tar_SwoopRace"))
 		{
 			object oMessenger = CreateObject(OBJECT_TYPE_CREATURE, "tar02_rodianmsg", GetLocation(GetObjectByTag("tar02_wpmessenger", 0)));
 			
 			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 			
 			AssignCommand(oMessenger, ActionStartConversation(GetFirstPC(), "", FALSE, 0, TRUE));
 		}
 }
