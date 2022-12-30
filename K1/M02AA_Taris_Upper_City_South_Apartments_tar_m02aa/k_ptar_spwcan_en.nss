// Byte code does not match

#include "k_inc_tar"
 
 void main() {
 	
 	object oEntering = GetEnteringObject();
 	
 	if (GetIsPC(oEntering) && GetGlobalBoolean("Tar_SwoopRace") && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
 		{
 			object oMessenger;
 			
 			Db_PostString("spawning canderous", 5, 5, 5.0);
 			
 			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 			
 			oMessenger = CreateObject(OBJECT_TYPE_CREATURE, "tar03_cander031", GetLocation(GetObjectByTag("tar02_spcand", 0)));
 			AssignCommand(oMessenger, ActionStartConversation(oEntering));
 		}
 }
