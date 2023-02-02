#include "k_inc_debug"
#include "k_inc_utility"

void Res_Heal(object oNPC) {
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectResurrection(), oNPC);
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(500), oNPC);
}

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
			if (GetCurrentHitPoints(OBJECT_SELF) == 1 && !UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_08))
				{
					UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_08, TRUE);
					
					ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_NEUTRAL);
					
					DelayCommand(0.3, ClearAllActions());
					DelayCommand(0.4, SurrenderRetainBuffs());
					DelayCommand(0.4, SetCommandable(0, OBJECT_SELF));
					DelayCommand(0.5, CancelCombat(GetPartyMemberByIndex(0)));
					DelayCommand(0.5, CancelCombat(GetPartyMemberByIndex(1)));
					DelayCommand(0.5, CancelCombat(GetPartyMemberByIndex(2)));
					DelayCommand(0.5, CancelCombat(OBJECT_SELF));
					DelayCommand(0.5, ClearAllEffects());
					
					UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
					UT_SetTalkedToBooleanFlag(GetObjectByTag("carth", 0), TRUE);
					
					DelayCommand(0.6, ActionPlayAnimation(ANIMATION_LOOPING_PRONE, 0.7, -1.0));
					DelayCommand(1.0, SignalEvent(OBJECT_SELF, EventUserDefined(2000)));
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
	else if (nUser == 2000) // CUSTOM EVENT
		{
			if (!UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01))
				{
					UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, TRUE);
				}
				else if (!UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02))
					{
						UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, TRUE);
					}
					else if (!UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03))
						{
							UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03, TRUE);
						}
						else if (!UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04))
							{
								UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04, TRUE);
							}
							else if (!UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_05))
								{
									UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_05, TRUE);
								}
								else if (!UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_06))
									{
										UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_06, TRUE);
									}
									else
										{
											object oNPC;
											object oInvis = GetObjectByTag("lev40_talker", 0);
											int nCount;
											
											Db_PostString("SURRENDERING...", 5, 5, 5.0);
											
											ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, OBJECT_SELF), TRUE);
											
											SetLocked(GetObjectByTag("lev40_bdgdoor", 0), FALSE);
											
											nCount = 0;
											while (nCount < GetPartyMemberCount())
												{
													oNPC = GetPartyMemberByIndex(nCount);
													
													CancelCombat(oNPC);
													
													if (nCount > 0)
														{
															Res_Heal(oNPC);
														}
													
													nCount++;
												}
											
											NoClicksFor(0.3);
											
											DelayCommand(0.1, AssignCommand(oInvis, ActionStartConversation(oInvis, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE)));
										}
		}
}
