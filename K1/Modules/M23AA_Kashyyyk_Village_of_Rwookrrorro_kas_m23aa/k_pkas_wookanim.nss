#include "k_inc_generic"
#include "k_inc_utility"

void main() {
	
	int nUser = GetUserDefinedEventNumber();
	
	if (nUser == 1001) //HEARTBEAT
		{
			if (!GetIsInConversation(OBJECT_SELF))
				{
					location lLocation;
					vector vPosition;
					int nRoll = d2(1);
					object oFriend = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_FRIEND, OBJECT_SELF, nRoll, CREATURE_TYPE_PERCEPTION, PERCEPTION_SEEN, -1, -1);
					
					if (!GetIsObjectValid(oFriend))
						{
							oFriend = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_NEUTRAL, OBJECT_SELF, nRoll, CREATURE_TYPE_PERCEPTION, PERCEPTION_SEEN, -1, -1);
						}
					
					object oEnemy = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_ENEMY, OBJECT_SELF, 1, -1, -1, -1, -1);
					int nLevel = GetHitDice(OBJECT_SELF);
					int nHitDice = GetHitDice(oFriend);
					
					if (!GN_CheckShouldFlee() || !GN_GetSpawnInCondition(SW_FLAG_COMMONER_BEHAVIOR))
						{
							vPosition = GetPosition(oFriend);
							nRoll = d6(1);
							
							if (GetIsObjectValid(oFriend) && GetDistanceBetween(oFriend, OBJECT_SELF) < 5.0 && !IsObjectPartyMember(oFriend))
								{
									SetFacingPoint(vPosition);
									
									GN_MyPrintString("GENERIC DEBUG *************** Clear 2600");
									
									ClearAllActions();
									
									if (nRoll == 1 || nRoll == 2)
										{
											ActionPlayAnimation(ANIMATION_LOOPING_TALK_NORMAL, 1.0, 3.0);
										}
									else if (nRoll == 3)
										{
											ActionPlayAnimation(ANIMATION_LOOPING_TALK_LAUGHING, 1.0, 3.0);
										}
									else if (nRoll == 4)
										{
											ActionPlayAnimation(ANIMATION_LOOPING_TALK_FORCEFUL, 1.0, 3.0);
										}
									else if (nRoll == 5)
										{
											ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_LEFT);
										}
									else if (nRoll == 6)
										{
											ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_RIGHT);
										}
								}
						}
						else
							{
								nRoll = d6(1);
								
								if (nRoll == 1)
									{
										ActionPlayAnimation(ANIMATION_FIREFORGET_PAUSE_BORED);
									}
								else if (nRoll == 2)
									{
										ActionPlayAnimation(ANIMATION_FIREFORGET_PAUSE_SCRATCH_HEAD);
									}
								else if (nRoll == 3)
									{
										ActionPlayAnimation(ANIMATION_LOOPING_PAUSE2, 1.0, 3.0);
									}
								else if (nRoll == 4)
									{
										ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_LEFT);
									}
								else if (nRoll == 5)
									{
										ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_RIGHT);
									}
								else if (nRoll == 6)
									{
										ActionPlayAnimation(ANIMATION_LOOPING_PAUSE2, 1.0, 5.0);
									}
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
