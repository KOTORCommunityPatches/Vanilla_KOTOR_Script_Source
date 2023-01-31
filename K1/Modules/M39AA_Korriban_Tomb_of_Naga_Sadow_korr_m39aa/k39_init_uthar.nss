// Byte code does not match

#include "k_inc_utility"
 
 void SetFlag(int intParam1) {
 	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, intParam1);
 }
 
 
 int GetFlag() {
 	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
 }
 
 void main() {
 	
 	object oUthar = GetObjectByTag("kor39_utharwynn", 0);
 	object oPC = GetPartyMemberByIndex(0);
 	
 	if ((((GetFlag() == FALSE) && (GetEnteringObject() == oPC)) && GetIsObjectValid(oUthar)))
 		{
 			SetFlag(TRUE);
 			UT_NPC_InitConversation("kor39_utharwynn", "", OBJECT_INVALID);
 		}
 }