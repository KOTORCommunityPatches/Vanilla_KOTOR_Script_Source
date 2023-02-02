#include "k_inc_debug"
#include "k_inc_utility"

void main() {
	
	int nUser = GetUserDefinedEventNumber();

	if (nUser == 1001) //HEARTBEAT
	{
		if (GetStandardFaction(OBJECT_SELF) == STANDARD_FACTION_GIZKA_1)
			{
				if (!GetIsConversationActive())
					{
						ActionRandomWalk();
					}
			}
	}
	else if (nUser == 666)
	{
		ClearAllActions();
		ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), OBJECT_SELF);
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
		Db_PostString("DAMAGED", 15, 15, 2.5);
		
		ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_GIZKA_2);
		
		object oNearest = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_ENEMY);
		
		if (GetIsObjectValid(oNearest))
			{
				ActionAttack(oNearest);
			}
		
		DelayCommand(12.0, SignalEvent(OBJECT_SELF, EventUserDefined(666)));
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
	else if (nUser == 1011) //DIALOGUE END
	{
	
	}
	else if (nUser == HOSTILE_RETREAT)
	{
		UT_ReturnToBase();
	}
}
