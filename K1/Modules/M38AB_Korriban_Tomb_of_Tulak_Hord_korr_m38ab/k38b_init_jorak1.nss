// Byte code does not match

#include "k_inc_utility"
 
 int GetFlag() {
 	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
 }
 
 void main() {
 	object oPM0 = GetPartyMemberByIndex(0);
 	object oPM1 = GetPartyMemberByIndex(1);
 	object oPM2 = GetPartyMemberByIndex(2);
 	object oMekel = GetObjectByTag("kor38b_mekel", 0);
 	object oWP_PM1 = GetObjectByTag("k38b_way_player1", 0);
 	object oWP_PM2 = GetObjectByTag("k38b_way_player2", 0);
 	location lWP_PM1 = GetLocation(oWP_PM1);
 	location lWP_PM2 = GetLocation(oWP_PM2);
 	
 	if (((GetEnteringObject() == oPM0) && (GetFlag() == FALSE)))
 		{
 			UT_TeleportPartyMember(oPM1, lWP_PM1);
 			UT_TeleportPartyMember(oPM2, lWP_PM2);
 			
 			AssignCommand(oMekel, PlayAnimation(ANIMATION_LOOPING_CHOKE, 1.0, 5.0));
 			AssignCommand(oPM0, PlayAnimation(ANIMATION_LOOPING_CHOKE, 1.0, 5.0));
 			
 			UT_NPC_InitConversation("kor38b_jorakuln");
 			
 			UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, TRUE);
 		}
 }
