#include "k_inc_generic"

void main() {
	
	int nUser = GetUserDefinedEventNumber();

	if(nUser == 1001) //HEARTBEAT
	{

	}
	else if(nUser == 1002) // PERCEIVE
	{

	}
	else if(nUser == 1003) // END OF COMBAT
	{

	}
	else if(nUser == 1004) // ON DIALOGUE
	{

	}
	else if(nUser == 1005) // ATTACKED
	{

	}
	else if(nUser == 1006) // DAMAGED
	{

	}
	else if(nUser == 1007) // DEATH
	{
		object oInvis = GetObjectByTag("k_ptar_invis_speaker", 0);
		
		if (GetGlobalNumber("tar_duel") == 6)
			{
				if (GetGlobalBoolean("Tar_ZaxBounty") == TRUE)
					{
						AddJournalQuestEntry("tar_bendakbounty", 66);
					}
				
				SetGlobalNumber("tar_duel", 7);
				SetGlobalBoolean("TAR_DUELOVER", TRUE);
				SetGlobalBoolean("TAR_DUELLOST", FALSE);
				CancelCombat(GetFirstPC());
				SignalEvent(oInvis, EventUserDefined(2000));
			}
	}
	else if(nUser == 1008) // DISTURBED
	{

	}
	else if(nUser == 1009) // BLOCKED
	{

	}
	else if(nUser == 1010) // SPELL CAST AT
	{

	}
	else if(nUser == 6000)
	{
		ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
		GN_DetermineCombatRoundGetFirstPC());
	}
}
