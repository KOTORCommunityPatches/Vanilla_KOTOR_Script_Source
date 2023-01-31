// Byte code does not match

#include "k_inc_tar"
 
 void main() {
 	
 	if (((TAR_GetWearingSithArmor(OBJECT_INVALID) || (!GetGlobalBoolean("TAR_BEKBASEOPEN"))) && (!GetGlobalBoolean("Tar_GadonMission"))))
 		{
 			UT_NPC_InitConversation("tar03_hiddenbek", "", OBJECT_INVALID);
 		}
 		else
 			{
 				ClearAllActions();
 				ActionOpenDoor(OBJECT_SELF);
 			}
 }