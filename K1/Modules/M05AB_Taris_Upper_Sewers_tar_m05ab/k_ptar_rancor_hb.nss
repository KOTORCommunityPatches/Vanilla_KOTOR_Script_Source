#include "k_inc_utility"

void main() {
	
	int nUser = GetUserDefinedEventNumber();
	
	if (nUser == 1001) // HEARTBEAT
		{
			object oTar05_corpsepile = GetObjectByTag("tar05_corpsepile", 0);
			object oWP_Stampy = GetObjectByTag("tar05_wprancor", 0);
			object object5;
			
			if (!GetIsObjectValid(GetAttackTarget(OBJECT_SELF) && GetDistanceBetween(OBJECT_SELF, oWP_Stampy) > 6.0 && !GetGlobalBoolean("TAR_RANCOREATING"))
				{
					ActionMoveToObject(oWP_Stampy, 0, 1.0);
				}
	}
	else {
		if (nUser == 1002) // PERCEIVE
		{
		}
		else {
			if (nUser == 1003) // END OF COMBAT
			{
			}
			else {
				if (nUser == 1004) // ON DIALOGUE
				{
				}
				else {
					if (nUser == 1005) // ATTACKED
					{
					}
					else {
						if (nUser == 1006) // DAMAGED
						{
						}
						else {
							if (nUser == 1007) // DEATH
							{
								object oPile = GetObjectByTag("tar05_corpsepile", 0);
								AddJournalQuestEntry("tar_rancor", 99, 0);
								SignalEvent(oPile, EventUserDefined(2000));
							}
							else {
								if (nUser == 1008) // DISTURBED
								{
								}
								else {
									if (nUser == 1009) // BLOCKED
									{
									}
									else {
										if (nUser == 1010) // SPELL CAST AT
										{
										}
										else if(nUser == HOSTILE_RETREAT)
										{
											UT_ReturnToBase();
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}