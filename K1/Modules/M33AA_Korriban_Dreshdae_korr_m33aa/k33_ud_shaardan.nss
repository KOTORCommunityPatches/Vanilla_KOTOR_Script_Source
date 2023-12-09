#include "k_inc_utility"

void main() {
	
	int nUser = GetUserDefinedEventNumber();

	if (nUser == 1001) // HEARTBEAT
		{
			if (!UT_GetTalkedToBooleanFlag(OBJECT_SELF) && !GetIsInConversation(OBJECT_SELF))
				{
					ClearAllActions();
					ActionPlayAnimation(ANIMATION_LOOPING_TALK_FORCEFUL, 1.0, 6.0);
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
	else if (nUser == 10))
		{

		}
}
