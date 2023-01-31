#include "k_inc_utility"
#include "k_inc_debug"
#include "k_inc_stunt"

void main() {
	
	if (!GetIsObjectValid(GetObjectByTag("calo082", 0)))
		{
			Db_PostString("TRIGGERFIRE", 5, 5, 3.0);
			
			SetGlobalNumber("K_CURRENT_PLANET", 15);
			SetGlobalBoolean("Tar_Destroyed", TRUE);
			
			RemoveJournalQuestEntry("tar_party");
			RemoveJournalQuestEntry("k_rapidtransit");
			RemoveJournalQuestEntry("Tar_rancor");
			RemoveJournalQuestEntry("end_attack");
			RemoveJournalQuestEntry("tar_bendakbounty");
			RemoveJournalQuestEntry("tar_diabounty");
			RemoveJournalQuestEntry("tar_infectedoutcasts");
			RemoveJournalQuestEntry("tar_vulkarbase");
			RemoveJournalQuestEntry("tar_largobounty");
			RemoveJournalQuestEntry("tar_matrik");
			RemoveJournalQuestEntry("tar_rakghoulserum");
			RemoveJournalQuestEntry("k_rapidtransit");
			RemoveJournalQuestEntry("tar_rukilapprentice");
			RemoveJournalQuestEntry("tar_selvenbounty");
			RemoveJournalQuestEntry("tar_duelring");
			RemoveJournalQuestEntry("tar_promisedland");
			RemoveJournalQuestEntry("tar_bastsearch");
			RemoveJournalQuestEntry("tar_buydroid");
			
			AddJournalQuestEntry("tar_escape", 99);
			AddJournalQuestEntry("tar_planetinfo", 99);
			GivePlotXP("tar_main", 20);
			
			SetPartyLeader(NPC_PLAYER);
			
			ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectResurrection(), GetFirstPC());
			UT_HealParty();
			
			ST_PlayTarisEscape();
		}
}