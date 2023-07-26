#include "k_inc_tar"

void main() {
	
	object oEntering = GetEnteringObject();
	
	Db_PostString("ENTERING RING - " + IntToString(UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01)), 5, 5, 5.0);
	
	if (GetIsPC(oEntering))
		{
			UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, FALSE);
			
			SetMinOneHP(oEntering, TRUE);
			
			Db_PostString("ANNOUNCER TALK", 5, 5, 5.0);
		}
}
