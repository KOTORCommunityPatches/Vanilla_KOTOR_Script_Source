#include "k_inc_kas"

void main() {
	
	object oEntering = GetEnteringObject();
	object oJanosWP8 = GetWaypointByTag("WP_kas22_janos_01_08");
	object oJanos = GetObjectByTag("kas22_janos_01", 0);
	
	if (oEntering == oJanos)
		{
			if (GetJanosOfficeLocal(oJanos) == FALSE)
				{
					SetJanosOfficeLocal(TRUE, oJanos);
				}
			
			AssignCommand(oEntering, ActionMoveToObject(oJanosWP8, FALSE, 0.5));
			AssignCommand(oEntering, DelayCommand(2.0, SetFacing(GetFacing(oJanosWP8))));
			
			DestroyObject(OBJECT_SELF);
		}
}
