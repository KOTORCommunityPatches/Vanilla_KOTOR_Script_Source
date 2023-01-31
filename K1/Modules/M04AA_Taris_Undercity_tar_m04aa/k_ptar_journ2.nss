#include "k_inc_tar"

int StartingConditional() {
	
	int nJournalCheck = (TAR_PCHasApprenticeJournal() && TAR_GetNumberPromisedLandJournals() <= 1 && GetGlobalNumber("Tar_Rukil") >= 20);
	
	return nJournalCheck;
}