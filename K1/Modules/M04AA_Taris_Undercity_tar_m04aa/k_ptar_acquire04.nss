#include "k_inc_tar"

void main() {
	
	object oPC = GetFirstPC();
	object oAcquired = GetModuleItemAcquired();
	
	if (GetTag(oAcquired) == "ptar_appjournal" && UT_GetTalkedToBooleanFlag(GetObjectByTag("rukil04", 0)) == TRUE)
		{
			AddJournalQuestEntry("tar_rukilapprentice", 50);
		}
	
	if (GetTag(oAcquired) == "rakghoulserum")
		{
			AddJournalQuestEntry("tar_rakghoulserum", 5);
		}
}
