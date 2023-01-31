#include "k_inc_tar"

int StartingConditional() {
	
	int nJournalCheck = (TAR_PCHasApprenticeJournal() && TAR_GetNumberPromisedLandJournals() >= 2 && GetGlobalNumber("Tar_Rukil") >= 30));
	
	return nJournalCheck;
}