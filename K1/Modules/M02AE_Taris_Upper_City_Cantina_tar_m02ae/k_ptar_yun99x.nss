#include "k_inc_tar"

void main() {
	
	SetGlobalNumber("Tar_YunGend", 99);
	
	TAR_MarkForCleanup(GetObjectByTag("yungenda021", 0));
	DestroyObject(GetObjectByTag("sarna021", 0));
	
	AssignCommand(GetObjectByTag("yungenda021", 0), TAR_PlotMoveObject(GetObjectByTag("tar02_swnpcext", 0), FALSE));
}
