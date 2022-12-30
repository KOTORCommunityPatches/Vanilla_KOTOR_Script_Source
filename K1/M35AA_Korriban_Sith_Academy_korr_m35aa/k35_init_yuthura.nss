// Byte code does not match

#include "k_inc_utility"
 
 void SetFlag(int nState) {
 	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, nState);
 }
 
 int GetFlag() {
 	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
 }
 
 void main() {
 	
 	object oPM0 = GetPartyMemberByIndex(0);
 	
 	if (((GetEnteringObject() == oPM0) && (GetFlag() == FALSE)))
 		{
 			SetFlag(TRUE);
 			UT_NPC_InitConversation("kor35_yuthura", "", OBJECT_INVALID);
 		}
 }
