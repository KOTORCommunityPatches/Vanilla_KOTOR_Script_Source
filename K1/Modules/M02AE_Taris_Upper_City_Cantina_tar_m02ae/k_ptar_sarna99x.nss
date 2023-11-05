#include "k_inc_tar"

void main() {
	
	SetGlobalNumber("Tar_Sarna", 99);
	
	TAR_MarkForCleanup(GetObjectByTag("sarna021", 0));
	DestroyObject(GetObjectByTag("yungenda021", 0));
	
	AssignCommand(GetObjectByTag("sarna021", 0), TAR_PlotMoveObject(GetObjectByTag("tar02_swnpcext", 0), FALSE));
}
