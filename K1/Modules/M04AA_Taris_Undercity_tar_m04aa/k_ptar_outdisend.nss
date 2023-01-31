#include "k_inc_tar"

void main() {
	
	SetGlobalNumber("TAR_OUT_DISEASE", 99);
	
	TAR_MarkForCleanup(GetObjectByTag("infectedoutcastm", 0));
	TAR_MarkForCleanup(GetObjectByTag("InfectedOutcastF", 0));
	
	AssignCommand(GetObjectByTag("infectedoutcastm", 0), TAR_PlotMoveObject(GetObjectByTag("tar04_infoutexit", 0), FALSE));
	AssignCommand(GetObjectByTag("InfectedOutcastF", 0), TAR_PlotMoveObject(GetObjectByTag("tar04_infoutexit", 0), FALSE));
}