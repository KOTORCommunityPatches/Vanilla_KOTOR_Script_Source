// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_tar"
 
 void main() {
 	
 	object oEntering = GetEnteringObject();
 	
 	Db_PostString("IGEAR TRIGGER - " + IntToString(GetGlobalNumber("tar_rukil")), 5, 5, 5.0);
 	
 	if (GetIsPC(oEntering) && GetGlobalNumber("tar_rukil") == 20)
 		{
 			Db_PostString("IGEAR TALK", 5, 6, 5.0);
 			
 			SetGlobalBoolean("tar_igearquest", TRUE);
 			UT_NPC_InitConversation("igear", "", OBJECT_INVALID);
 		}
 	
 	if (GetIsPC(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
 		{
 			Db_PostString("IGEAR TALK", 5, 6, 5.0);
 			
 			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 			UT_NPC_InitConversation("igear", "", OBJECT_INVALID);
 		}
 }
