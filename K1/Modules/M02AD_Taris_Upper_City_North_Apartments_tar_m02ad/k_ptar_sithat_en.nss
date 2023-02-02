// Byte code does not match

#include "k_inc_utility"
 
 void main() {
 	
 	object oEntering = GetEnteringObject();
 	object oTrooper = GetNearestObjectByTag("tar02_sithtrooper", oEntering);
 	
 	if (GetIsPC(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF) && GetStandardFaction(oTrooper) != STANDARD_FACTION_HOSTILE_1)
 		{
 			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 			
 			UT_SetPlotBooleanFlag(GetObjectByTag("tar02_sithcommander", 0), SW_PLOT_BOOLEAN_01, FALSE);
 			UT_SetPlotBooleanFlag(GetObjectByTag("tar02_sithtrooper", 0), SW_PLOT_BOOLEAN_02, FALSE);
 			UT_SetPlotBooleanFlag(GetObjectByTag("tar02_sithtrooper2", 0), SW_PLOT_BOOLEAN_03, FALSE);
 			
 			AssignCommand(oTrooper, ActionStartConversation(oEntering, "", 0, 0, TRUE));
 		}
 }
