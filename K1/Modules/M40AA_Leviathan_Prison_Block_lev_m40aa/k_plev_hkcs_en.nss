// Byte code does not match

#include "k_inc_utility"
 
 void main() {
 	
 	object oInvis = GetObjectByTag("lev40_droidtalker", 0);
 	object oEntering = GetEnteringObject();
 	
 	if (GetIsPC(oEntering) && GetGlobalNumber("LEV_ESCAPE") == 6 && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
 		{
 			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 			AssignCommand(oInvis, ActionStartConversation(oInvis, "lev40_hkcs_dlg", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
 		}
 }