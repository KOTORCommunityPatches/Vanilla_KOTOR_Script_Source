#include "k_inc_generic"
#include "k_inc_utility"

void main() {
	
	int nUser = GetUserDefinedEventNumber();

	if (nUser == 1001) // HEARTBEAT
		{
			if (!GetIsInConversation(OBJECT_SELF) && !GetIsInCombat(OBJECT_SELF) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF) && !UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01))
				{
					ClearAllActions();
					UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, TRUE);
					ActionPlayAnimation(ANIMATION_LOOPING_MEDITATE, 1.0, 1000.0);
					ActionDoCommand(UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, FALSE));
				}
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

		}
	else if (nUser == 1007) // DEATH
		{
			SetGlobalNumber("KOR_LASHOWE_PLOT", 5);
			SetGlobalBoolean("KOR_LASHOWE_VALLEY", TRUE);
			AddJournalQuestEntry("kor35_aidlashowe", 40);
			GivePlotXP("kor35_aidlashowe", 100);
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
 }
