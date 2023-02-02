#include "k_inc_tar"

void main() {
	
	object oExit = GetObjectByTag("p_exit", 0);
	
	TAR_MarkForCleanup(GetObjectByTag("rodian033", 0));
	TAR_MarkForCleanup(GetObjectByTag("rodian034", 0));
	TAR_MarkForCleanup(GetObjectByTag("mission031", 0));
	TAR_MarkForCleanup(GetObjectByTag("zaalbar031", 0));
	
	AssignCommand(GetObjectByTag("rodian033", 0), TAR_PlotMoveObject(oExit, FALSE));
	DelayCommand(1.0, AssignCommand(GetObjectByTag("rodian034", 0), TAR_PlotMoveObject(oExit, FALSE)));
}
