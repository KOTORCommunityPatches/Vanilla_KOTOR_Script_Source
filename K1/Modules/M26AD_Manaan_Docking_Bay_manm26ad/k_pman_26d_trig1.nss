// Byte code does not match


 int HasNeverTriggered() {
     int bReturn;
     if (UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01) == FALSE)
 		{
 			bReturn = TRUE;
 			UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, TRUE);
 		}
     return bReturn;
 }
 
 void main() {
 	
 	if (IsObjectPartyMember(GetEnteringObject()) && HasNeverTriggered()))
 		{
 			UT_NPC_InitConversation("man26_sitharg", "", OBJECT_INVALID);
 		}
 }