// Byte code does not match

#include "k_inc_utility"
 
 void SetShaardanFlag(int nState) {
 	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, nState);
 }
 
 int GetShaardanFlag() {
 	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
 }
 
 void main() {
 	
 	object oPC = GetFirstPC();
 	object oNPC = GetPartyMemberByIndex(0);
 	object oShaardan = GetObjectByTag("kor37_shaardan", 0);
 	
 	if (GetShaardanFlag() == FALSE && GetEnteringObject() == oNPC && GetIsObjectValid(oShaardan))
 		{
 			SetShaardanFlag(TRUE);
 			UT_NPC_InitConversation("kor37_shaardan", "", OBJECT_INVALID);
 		}
 }