// Byte code does not match

#include "k_inc_utility"
 
 int GetFlag() {
 	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
 }
 
 void main() {
 	
 	object oPM0 = GetPartyMemberByIndex(0);
 	object oPM1 = GetPartyMemberByIndex(1);
 	object oPM2 = GetPartyMemberByIndex(2);
 	object oPC = GetFirstPC();
 	object oPC_WP = GetObjectByTag("k38b_way_gaspc", 0);
 	effect eVFX = EffectVisualEffect(VFX_FNF_GRENADE_POISON);
 	object oGasWP1 = GetObjectByTag("k38b_way_gas1", 0);
 	object oGasWP2 = GetObjectByTag("k38b_way_gas2", 0);
 	object oJorak = GetObjectByTag("kor38b_jorakuln", 0);
 	location lPC_WP = GetLocation(oPC_WP);
 	
 	if (((GetEnteringObject() == oPM0) && (GetFlag() == FALSE)))
 		{
 			UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, TRUE);
 			
 			ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVFX, lPC_WP);
 			AssignCommand(oPM1, ActionMoveToObject(oGasWP1, 0, 1.0));
 			DelayCommand(1.0, AssignCommand(oPM2, ActionMoveToObject(oGasWP2, 0, 1.0)));
 			AssignCommand(oPM0, PlayAnimation(116, 1.0, 10.0));
 			DelayCommand(1.0, AssignCommand(oPM1, PlayAnimation(116, 1.0, 10.0)));
 			DelayCommand(2.0, AssignCommand(oPM2, PlayAnimation(116, 1.0, 10.0)));
 		
 			if ((oPM0 == oPC))
 				{
 					UT_NPC_InitConversation("kor38b_jorakuln");
 				}
 			else
 				{
 					SetGlobalFadeOut();
 					SetGlobalFadeIn(2.0, 2.0);
 					
 					SetPartyLeader(NPC_PLAYER);
 					oPM1 = GetPartyMemberByIndex(1);
 					oPM2 = GetPartyMemberByIndex(2);
 					
 					AssignCommand(oPC, ClearAllActions());
 					AssignCommand(oJorak, ClearAllActions());
 					CancelCombat(oPC);
 					
 					AssignCommand(oPC, DelayCommand(1.0, JumpToObject(oPC_WP, 1)));
 					AssignCommand(oPM1, DelayCommand(1.5, JumpToObject(oPC, 1)));
 					AssignCommand(oPM2, DelayCommand(1.5, JumpToObject(oPC, 1)));
 					
 					NoClicksFor(1.4);
 					
 					AssignCommand(oJorak, DelayCommand(1.2, ActionStartConversation(oPC, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
 				}
 		}
 }
