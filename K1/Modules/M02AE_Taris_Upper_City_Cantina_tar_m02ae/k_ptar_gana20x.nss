#include "k_inc_tar"

void main() {
	
	SetGlobalNumber("Tar_Gana", 20);
	
	TAR_MarkForCleanup(OBJECT_SELF);
	TAR_PlotMoveObject(GetObjectByTag("tar02_swnpcext", 0), TRUE);
}
