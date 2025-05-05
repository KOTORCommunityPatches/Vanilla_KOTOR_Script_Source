// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_generic"
#include "k_inc_utility"
#include "k_inc_debug"

void main() {
	
	int nUser = GetUserDefinedEventNumber();
	
	switch (nUser) {
		case 1001: // ON_HEARTBEAT
			{
				if (GetIsConversationActive())
					{
						return;
					}
				
				switch (Random(4)) {
					case 0:
					case 1:
						{
							ActionPlayAnimation(ANIMATION_LOOPING_TALK_FORCEFUL, 1.0, 3.0);
						}
						break;
					case 2:
					default:
						{
							ActionPlayAnimation(ANIMATION_FIREFORGET_TAUNT);
						}
						break;
				}
			}
			break;
		case 1002: // ON_PERCEPTION
			{

			}
			break;
		case 1003: // ON_COMBAT_ROUND_END
			{

			}
			break;
		case 1004: // ON_DIALOGUE
			{

			}
			break;
		case 1005: // ON_ATTACKED
			{

			}
			break;
		case 1006: // ON_DAMAGE
			{

			}
			break;
		case 1007: // ON_DEATH
			{
				Db_PostString("ACK!", 5, 5, 3.0);
				SignalEvent(GetObjectByTag("bulliedmer021", 0), EventUserDefined(2000));
			}
			break;
		case 1008: // ON_DISTURBED
			{

			}
			break;
		case 1009: // ON_BLOCKED
			{

			}
			break;
		case 1010: // ON_FORCE_AFFECTED
			{

			}
			break;
		case 2000:
			{
				ClearAllActions();
				ActionStartConversation(GetObjectByTag("BulliedMer021", 0), "tar02_bountyh022", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE);
			}
			break;
	}
}
