#include "k_inc_tar"

void main() {
	
	object oEntering = GetEnteringObject();
	if (oEntering == GetObjectByTag("Canderous043", 0)
	|| oEntering == GetObjectByTag("Daviktroop041", 0)
	|| oEntering == GetObjectByTag("Daviktroop042", 0)
	|| UT_GetPlotBooleanFlag(oEntering, SW_PLOT_BOOLEAN_10))
		{
			DestroyObject(oEntering);
		}
}
