// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_utility"
#include "k_inc_debug"
 
 void main() {
 	
 	if (IsAvailableCreature(NPC_BASTILA) && IsAvailableCreature(NPC_CARTH) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
 		{
 			Db_PostString("SPAWNING CARTH AND BASTILA", 5, 5, 5.0);
 			
 			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 			
 			NoClicksFor(2.2);
 			HoldWorldFadeInForDialog();
 			
 			DelayCommand(2.0, AssignCommand(GetObjectByTag("bastila", 0), ActionStartConversation(GetFirstPC(), "tar02_carbast", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE)));
 		}
 }
