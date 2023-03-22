// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_end"
 
 void main() {
 	
	if (UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01) == FALSE)
		{
			object oPC = GetFirstPC();
			
			UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, TRUE);
			
			SetGlobalNumber("END_CARTH_DLG", 6);
			AssignCommand(GetCarth(), ActionStartConversation(GetCarth(), "end_carth001", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
		}
 }
