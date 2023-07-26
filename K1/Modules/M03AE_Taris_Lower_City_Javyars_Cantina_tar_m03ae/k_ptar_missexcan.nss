#include "k_inc_tar"

void main() {
	
	object oExit = GetObjectByTag("p_exit", 0);
	
	AssignCommand(GetObjectByTag("mission031", 0), TAR_PlotMoveObject(oExit, FALSE));
	AssignCommand(GetObjectByTag("zaalbar031", 0), TAR_PlotMoveObject(oExit, FALSE));
}
