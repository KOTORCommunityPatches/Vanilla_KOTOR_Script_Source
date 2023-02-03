// Original could not recompile. DeNCS failed to declare EventUserDefined as an event.

#include "k_inc_generic"
#include "k_inc_utility"

void main() {
	
	int nUser = GetUserDefinedEventNumber();

	if (nUser == 1001) // HEARTBEAT
		{
			object oMurder = GetObjectByTag("kor33b_murderer", 0);
			
			if (!UT_GetTalkedToBooleanFlag(OBJECT_SELF) && !GetIsInConversation(oMurder))
				{
					ClearAllActions();
					ActionPlayAnimation(ANIMATION_LOOPING_TALK_PLEADING, 1.0, 6.0);
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
			object oMurder = GetObjectByTag("kor33b_murderer", 0);
			event eUser = EventUserDefined(10);
			
			SignalEvent(oMurder, eUser);
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
	else if (nUser == 20)
		{
			object oExit = GetObjectByTag("k33b_way_exit", 0);
			object oWP1 = GetObjectByTag("k33b_way_murder1", 0);
			object oWP2 = GetObjectByTag("k33b_way_murder2", 0);
			object oWP3 = GetObjectByTag("k33b_way_murder3", 0);
			object oWP4 = GetObjectByTag("k33a_way_shavic", 0);
			
			ActionMoveToObject(oWP1, TRUE, 1.0);
			ActionMoveToObject(oWP2, TRUE, 1.0);
			ActionMoveToObject(oWP3, TRUE, 1.0);
			ActionMoveToObject(oWP4, TRUE, 1.0);
			ActionMoveToObject(oExit, TRUE, 1.0);
			ActionDoCommand(DestroyObject(OBJECT_SELF));
			SetCommandable(FALSE, OBJECT_SELF);
		}
}
