// DeNCS reported byte code does not match. Manual reconstruction. 100% binary match.

#include "k_inc_generic"
#include "k_inc_utility"

void main() {
	
	int nUser = GetUserDefinedEventNumber();
	
	if (nUser == 1001) //HEARTBEAT
		{
			int nRand = Random(4);
			
			if (GetIsInCombat(OBJECT_SELF) == FALSE && GetIsInConversation(OBJECT_SELF) == FALSE)
				{
					switch (nRand)
					{
						case 0: case 1:
							ClearAllActions();
							ActionRandomWalk();
						break;
						
						case 2:
							ClearAllActions();
							ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_LEFT);
						break;
						
						case 3:
							ClearAllActions();
							ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_RIGHT);
						break;
						break;
					}
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
			UT_ReturnToBase();
		}
}
