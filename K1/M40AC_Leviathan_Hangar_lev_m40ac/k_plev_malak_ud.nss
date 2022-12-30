// Byte code does not match

#include "k_inc_utility"
 #include "k_inc_generic"
 
 void main() {
 	
 	int nUser = GetUserDefinedEventNumber();
 
 	if (nUser == 1001) // HEARTBEAT
 		{
 		}
 	else if (nUser == 1002) // PERCEIVE
 		{
 
 		}
 	else if (nUser == 1003) // END OF COMBAT
 		{
 
 		}
 	else if (nUser == 1004) // ON DIALOGUE
 		{
 		}
 	else if (nUser == 1005) // ATTACKED
 		{
 
 		}
 	else if (nUser == 1006) // DAMAGED
 		{
 			if (GetCurrentHitPoints(OBJECT_SELF) < GetMaxHitPoints(OBJECT_SELF) / 2 && !UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01))
 				{
 					int int6;
 					object object1;
 					
 					UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, TRUE);
 					UT_SetPlotBooleanFlag(GetObjectByTag("lev40_forcepush2", 0), SW_PLOT_BOOLEAN_01, FALSE);
 					
 					ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_NEUTRAL);
 					
 					DelayCommand(0.3, ClearAllActions());
 					DelayCommand(0.4, SurrenderRetainBuffs());
 					DelayCommand(0.4, SetCommandable(FALSE, OBJECT_SELF));
 					DelayCommand(0.5, CancelCombat(GetFirstPC()));
 					DelayCommand(0.5, CancelCombat(OBJECT_SELF));
 					DelayCommand(0.5, ClearAllEffects());
 					
 					NoClicksFor(1.2);
 					
 					DelayCommand(1.0, AssignCommand(GetObjectByTag("lev40_talker", 0), ActionStartConversation(OBJECT_SELF, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE)));
 				}
 				else if (GetCurrentHitPoints(OBJECT_SELF) < GetMaxHitPoints(OBJECT_SELF) / 3 && !UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02) && UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03))
 					{
 						object oBastila = GetObjectByTag("bastila", 0);
 						object oCarth = GetObjectByTag("carth", 0);
 						object oInvis = GetObjectByTag("lev40_talker", 0);
 						
 						ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_NEUTRAL);
 						
 						DelayCommand(0.3, ClearAllActions());
 						DelayCommand(0.4, SurrenderRetainBuffs());
 						DelayCommand(0.4, SetCommandable(FALSE, OBJECT_SELF));
 						DelayCommand(0.5, CancelCombat(GetFirstPC()));
 						DelayCommand(0.5, CancelCombat(OBJECT_SELF));
 						DelayCommand(0.5, ClearAllEffects());
 						
 						UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, TRUE);
 						
 						SetCommandable(TRUE, oBastila);
 						SetCommandable(TRUE, oCarth);
 						AssignCommand(oBastila, ClearAllEffects());
 						AssignCommand(oCarth, ClearAllEffects());
 						
 						UT_TeleportPartyMember(oBastila, GetLocation(GetObjectByTag("lev40_wpbastila", 0)));
 						UT_TeleportPartyMember(oCarth, GetLocation(GetObjectByTag("lev40_wpcarth", 0)));
 						
 						NoClicksFor(1.2);
 						
 						DelayCommand(1.0, AssignCommand(oInvis, ActionStartConversation(oInvis, "lev40_carth", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE)));
 					}
 		}
 	else if (nUser == 1007) // DEATH
 		{
 
 		}
 	else if (nUser == 1008) // DISTURBED
 		{
 
 		}
 	else if (nUser == 1009) // BLOCKED
 		{
 
 		}
 	else if (nUser == 1010) // SPELL CAST AT
 		{
 
 		}
 	else if (nUser == 2000)
 		{
 			ActionResumeConversation();
 		}
 	else if (int1 == 3000)
 		{
 			ClearAllActions();
 			SurrenderToEnemies();
 			CancelCombat(OBJECT_SELF);
 		}
 	else if (nUser == 4000)
 		{
 			GN_SetSpawnInCondition(SW_FLAG_AI_OFF, FALSE);
 		}
 }
