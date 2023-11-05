#include "k_inc_generic"
#include "k_inc_utility"

void main() {
	
	int nUser = GetUserDefinedEventNumber();

	if (nUser == 1001) // HEARTBEAT
		{
			if (Random(2) > 0 && !GetIsConversationActive())
				{
					SetFacingPoint(GetPosition(GetNearestObjectByTag("pazaakcards", OBJECT_SELF, 1)));
					ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 3.0);
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
