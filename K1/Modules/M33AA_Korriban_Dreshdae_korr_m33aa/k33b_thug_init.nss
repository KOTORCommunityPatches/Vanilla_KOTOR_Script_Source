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
 	
 	object oDroid;
 	object oCommF;
 	object oCommM;
 	object oPM0 = GetPartyMemberByIndex(0);
 	object oPC = GetFirstPC();
 	object oPM1;
 	object oPM2;
 	object oWP_PC = GetObjectByTag("k33a_way_pcthug", 0);
 	object oLeader = GetObjectByTag("k33b_sththuglead", 0);
 	
 	if (GetTriggered() == FALSE && GetEnteringObject() == oPM0)
 		{
 			if (GetIsObjectValid(oLeader))
 				{
 					oDroid = GetObjectByTag("kor33a_protocol", 0);
 					oCommF = GetObjectByTag("korr_citizenfwlk", 0);
 					oCommM = GetObjectByTag("korr_citizenmwlk", 0);
 					AssignCommand(oDroid, ClearAllActions());
 					AssignCommand(oCommF, ClearAllActions());
 					AssignCommand(oCommM, ClearAllActions());
 					
 					SetTriggered(TRUE);
 					
 					AssignCommand(oLeader, ClearAllActions());
 					
 					if (oPM0 == oPC)
 						{
 							UT_NPC_InitConversation("k33b_sththuglead", "", OBJECT_INVALID);
 						}
 						else
 							{
 								SetGlobalFadeOut();
 								SetGlobalFadeIn(2.0, 2.0);
 								
 								SetPartyLeader(NPC_PLAYER);
 								
 								oPM1 = GetPartyMemberByIndex(1);
 								oPM2 = GetPartyMemberByIndex(2);
 								
 								AssignCommand(oPC, ClearAllActions());
 								CancelCombat(oPC);
 								
 								DelayCommand(1.0, AssignCommand(oPC, JumpToObject(oWP_PC)));
 								DelayCommand(1.5, AssignCommand(oPM1, JumpToObject(oPC)));
 								DelayCommand(1.5, AssignCommand(oPM2, JumpToObject(oPC)));
 								
 								NoClicksFor(1.7);
 								
 								DelayCommand(1.5, AssignCommand(oLeader, ActionStartConversation(oPC, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
 							}
 				}
 		}
 }