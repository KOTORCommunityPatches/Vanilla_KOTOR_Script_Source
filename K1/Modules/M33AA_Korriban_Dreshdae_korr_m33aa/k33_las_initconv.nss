// Byte code does not match

#include "k_inc_utility"
 
 void SetFlag(int intParam1) {
 	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, intParam1);
 }
 
 int GetFlag() {
 	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
 }
 
 void main() {
 	
 	object oPC = GetPartyMemberByIndex(0);
 	
 	if (((GetEnteringObject() == oPC) && (GetFlag() == FALSE)))
 		{
 			UT_NPC_InitConversation("kor33_lashowe", "", OBJECT_INVALID);
 			SetFlag(TRUE);
 		}
 }