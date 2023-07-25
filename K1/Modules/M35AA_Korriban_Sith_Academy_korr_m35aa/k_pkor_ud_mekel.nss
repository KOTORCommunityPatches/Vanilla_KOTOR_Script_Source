// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

void main() {
	
	int nUser = GetUserDefinedEventNumber();

	if (nUser == 1001) // HEARTBEAT
		{
			if (!GetIsInConversation(OBJECT_SELF) && !GetIsInCombat(OBJECT_SELF) && UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02))
				{
					ClearAllActions();
					
					object oComp = GetObjectByTag("kor35_mekcomp", 0);
					vector vPosition = GetPosition(oComp);
					
					SetFacingPoint(vPosition);
					ActionPlayAnimation(ANIMATION_LOOPING_USE_COMPUTER, 1.0, 5.0);
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
	else if (nUser == HOSTILE_RETREAT)
		{
			UT_ReturnToBase("wp_homebase");
		}
}
