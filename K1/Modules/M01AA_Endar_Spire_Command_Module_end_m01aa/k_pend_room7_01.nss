#include "k_inc_end"

void main() {
	
	int nUser = GetUserDefinedEventNumber();

	if (nUser == 1001) // HEARTBEAT
		{
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
			int nCount = (GetGlobalNumber("END_ROOM7_DEAD") + 1);
			
			if (nCount >= ROOM7_DEAD)
				{
					object oPC = GetFirstPC();
					
					if (GetXP(oPC) < 1000)
						{
							SetXP(oPC, 1000);
						}
					
					if (GetGlobalBoolean("END_PC_ON_BRIDGE") && GetGlobalBoolean("END_TRASK_ON_BRIDGE"))
						{
							object oDoor = GetObjectByTag("end_door08", 0);
							
							SetLocked(oDoor, TRUE);
							AssignCommand(oDoor, ActionCloseDoor(oDoor));
							PlayExplosion("wp_end_bridgedoor", TRUE, TRUE);
							SetGlobalBoolean("END_BRIDGE_SEALED", TRUE);
						}
					
					SetTraskState(TRASK_LEVEL_DONE);
					CancelCombat(GetTrask());
					CancelCombat(GetFirstPC());
					DelayCommand(1.0, TalkTrask());
				}
			
			SetGlobalNumber("END_ROOM7_DEAD", nCount);
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