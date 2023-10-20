#include "k_inc_tar"

void main() {
	
	object oEntering = GetEnteringObject();
	object oRespawner = GetObjectByTag("tar04_respawn", 0);
	
	if (GetIsPC(oEntering))
		{
			UT_SetPlotBooleanFlag(oRespawner, SW_PLOT_BOOLEAN_01, TRUE);
		}
}
