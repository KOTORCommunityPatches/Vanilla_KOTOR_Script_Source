// Original could not recompile. DeNCS failed to declare EventUserDefined as an event.

#include "k_inc_generic"
#include "k_inc_utility"

void main() {
	
	int nUser = GetUserDefinedEventNumber();

	if (nUser == 1001) // HEARTBEAT
		{
			object oShaardan = GetObjectByTag("kor33_shaardan", 0);
			
			if (!UT_GetTalkedToBooleanFlag(OBJECT_SELF) && !GetIsInConversation(oShaardan))
				{
					ClearAllActions();
					ActionPlayAnimation(ANIMATION_LOOPING_TALK_PLEADING, 1.0, 6.0);
				}
				else if (UT_GetTalkedToBooleanFlag(OBJECT_SELF) && !GetIsInConversation(oShaardan))
					{
						event eUser = EventUserDefined(101);
						
						SignalEvent(OBJECT_SELF, eUser);
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
	else if (nUser == 101)
		{
			object oWP = GetObjectByTag("k33a_way_shavic", 0);
			
			if (GetIsObjectValid(oWP))
				{
					ClearAllActions();
					ActionMoveToObject(oWP, TRUE, 1.0);
					ActionDoCommand(DestroyObject(OBJECT_SELF));
				}
		}
	else if (nUser == 102)
		{
			object oShaardan = GetObjectByTag("kor33_shaardan", 0);
			
			ActionAttack(oShaardan, FALSE);
		}
}
