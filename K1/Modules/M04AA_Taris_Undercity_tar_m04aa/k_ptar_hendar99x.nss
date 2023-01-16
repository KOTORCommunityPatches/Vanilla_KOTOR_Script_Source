#include "k_inc_tar"

void main() {
	
	SetGlobalNumber("Tar_Hendar", 99);
	
	AssignCommand(GetObjectByTag("outcastman046", 0), TAR_PlotMoveObject(GetObjectByTag("tar04_hendartent", 0), FALSE));
	AssignCommand(GetObjectByTag("OutcastWoman043", 0), TAR_PlotMoveObject(GetObjectByTag("tar04_hendartent", 0), FALSE));
}
