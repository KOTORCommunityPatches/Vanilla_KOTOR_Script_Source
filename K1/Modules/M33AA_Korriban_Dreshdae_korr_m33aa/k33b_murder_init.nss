// Byte code does not match

#include "k_inc_utility"
 
 // Probably missing Korriban include functions.
 void SetTriggered(int nState) {
 	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, nState);
 }
 
 int GetTriggered() {
 	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
 }
 
 void main() {
 	
 	object oMurderer = GetObjectByTag("kor33b_murderer", 0);
 	object oPC = GetFirstPC();
 	object oPM0 = GetPartyMemberByIndex(0);
 	
 	if (GetTriggered() == FALSE && GetEnteringObject() == oPM0 && GetIsObjectValid(oMurderer) && GetGlobalNumber("KOR_THUG_DEATH") >= 4)
 		{
 			SetTriggered(TRUE);
 			
 			AssignCommand(oMurderer, ClearAllActions());
 			
 			if (oPC == oPM0)
 				{
 					UT_NPC_InitConversation("kor33b_murderer", "", OBJECT_INVALID);
 				}
 				else
 					{
 						SetGlobalFadeOut();
 						SetGlobalFadeIn(2.0, 2.0);
 						
 						SetPartyLeader(NPC_PLAYER);
 						
 						object oPM1 = GetPartyMemberByIndex(1);
 						object oPM2 = GetPartyMemberByIndex(2);
 						object oWP_PC = GetObjectByTag("k33a_way_player", 0);
 						
 						AssignCommand(oPC, ClearAllActions());
 						AssignCommand(oMurderer, ClearAllActions());
 						CancelCombat(oPC);
 						
 						AssignCommand(oPC, DelayCommand(1.0, JumpToObject(oWP_PC, TRUE)));
 						AssignCommand(oPM1, DelayCommand(1.5, JumpToObject(oPC, TRUE)));
 						AssignCommand(oPM2, DelayCommand(1.5, JumpToObject(oPC, TRUE)));
 						
 						NoClicksFor(1.4);
 						
 						AssignCommand(oMurderer, DelayCommand(1.2, ActionStartConversation(oPC, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
 					}
 		}
 }