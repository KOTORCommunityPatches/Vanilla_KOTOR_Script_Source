// Byte code does not match

#include "k_inc_kas"
 
 void main() {
 	
 	object oEntering = GetEnteringObject();
 	object oJanos = GetObjectByTag("kas22_janos_01", 0);
 	object oPC = GetFirstPC();
 	
 	if (GetJanosPaidLocal(oJanos) == FALSE && GetIsPC(oEntering) == TRUE && GetIsObjectValid(oJanos) == TRUE)
 		{
 			SetGlobalFadeOut();
 			AssignCommand(oJanos, ActionStartConversation(oPC, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
 		}
 }