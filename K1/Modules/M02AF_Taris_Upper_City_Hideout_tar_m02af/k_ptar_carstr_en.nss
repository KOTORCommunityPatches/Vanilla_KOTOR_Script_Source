// Byte code does not match

#include "k_inc_utility"
 
 void CarthTalk() {
 	object oCarth = GetObjectByTag("carth", 0);
 	SetCommandable(TRUE, oCarth);
 	AssignCommand(oCarth, ActionStartConversation(GetFirstPC(), "tar02_carth022", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
 }
 
 void main() {
 	
 	object oEntering = GetEnteringObject();
 	object oCarth = GetObjectByTag("carth", 0);
 	
 	if (GetIsPC(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
 		{
 			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 			
 			SetCommandable(FALSE, oCarth);
 			
 			SetReturnStrref(FALSE, 32228, 0);
 			
 			SetGlobalNumber("K_CURRENT_PLANET", 10);
 			
 			SetGlobalFadeOut();
 			
 			CarthTalk();
 		}
 }