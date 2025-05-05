// Bytecode does not match. Bytecode match for main function, mismatch in include functions due to changes in k_inc_generic during development.

#include "k_inc_generic"
#include "k_inc_utility"

void main() {
	
	int nUser = GetUserDefinedEventNumber();
	
	if (nUser == 1001) // ON_HEARTBEAT
		{
			object oWP;
			
			if (UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01))
				{
					oWP = GetObjectByTag("tar02_wpsearch0", 0);
				}
				else if (UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02))
					{
						oWP = GetObjectByTag("tar02_wpsearch1", 0);
					}
					else if (UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03))
						{
							oWP = GetObjectByTag("tar02_wpsearch2", 0);
						}
						else
							{
								return;
							}
		
			if (GetStandardFaction(OBJECT_SELF) != STANDARD_FACTION_HOSTILE_1)
				{
					if (GetDistanceBetween(oWP, OBJECT_SELF) > 0.6)
						{
							ActionMoveToObject(oWP, FALSE, 0.5);
						}
						else
							{
								ActionPlayAnimation(ANIMATION_LOOPING_GET_LOW, 1.0, 2.0);
							}
				}
		}
	else if (nUser == 1002) // ON_PERCEPTION
		{

		}
	else if (nUser == 1003) // ON_COMBAT_ROUND_END
		{

		}
	else if (nUser == 1004) // ON_DIALOGUE
		{

		}
	else if (nUser == 1005) // ON_ATTACKED
		{

		}
	else if (nUser == 1006) // ON_DAMAGE
		{

		}
	else if (nUser == 1007) // ON_DEATH
		{
			object oPris = GetObjectByTag("tar02_alienprisoner", 0);
			SignalEvent(oPris, EventUserDefined(2000));
		}
	else if (nUser == 1008) // ON_DISTURBED
		{

		}
	else if (nUser == 1009) // ON_BLOCKED
		{

		}
	else if (nUser == 1010) // ON_FORCE_AFFECTED
		{

		}
	else if (nUser == 2000)
		{
			ClearAllActions();
			ActionResumeConversation();
			ActionPlayAnimation(ANIMATION_LOOPING_GET_LOW, 1.0, 3.0);
		}
	else if (nUser == 3000)
		{
			ClearAllActions();
			ActionEquipMostDamagingRanged();
			ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
			DelayCommand(0.5, GN_DetermineCombatRound());
		}
	else if (nUser == HOSTILE_RETREAT)
		{
			UT_ReturnToBase("wp_homebase");
		}
}
