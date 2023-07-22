#include "k_inc_tar"

void main() {
	
	AddJournalQuestEntry("tar_vulkarbase", 1, FALSE);
	
	if (GetGlobalBoolean("Tar_SwoopRace"))
		{
			TAR_MarkForCleanup(GetObjectByTag("tar10_vulkcoward", 0));
			TAR_MarkForCleanup(GetObjectByTag("tar10_vulkcoward2", 0));
			TAR_MarkForCleanup(GetObjectByTag("tar10_waitress", 0));
		}
	
	TAR_CleanupDeadObjects(OBJECT_SELF);
	
	SetGlobalBoolean("TAR_VULKARBASE_OPEN", TRUE);
}
