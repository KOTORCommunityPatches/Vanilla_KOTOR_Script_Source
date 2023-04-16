#include "k_inc_end"

void main() {
	
	if (UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_04))
		{
			object oDoor = GetObjectByTag("end_door05", 0);
			object oSith = GetObjectByTag("end_sith04", 0);
			
			if (GetIsOpen(oDoor) == FALSE && GetIsObjectValid(oSith) && GetIsDead(oSith) == FALSE)
				{
					object oPC = GetFirstPC();
					
					CancelCombat(oPC);
					
					SetCarthState(ROOM5_DEAD);
					
					SignalEvent(GetCarth(), EventUserDefined(10));
				}
		}
		else
			{
				UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_04, TRUE);
			}
}
