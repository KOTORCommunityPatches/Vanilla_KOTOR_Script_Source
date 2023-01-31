#include "k_inc_man"

void main() {
	
	if (GetEnteringObject() == GetFirstPC())
		{
			if (HasNeverTriggered())
				{
					SetGlobalBoolean("MAN_PORT_ZONE", TRUE);
				}
			
			if (GetGlobalBoolean("MAN_PORT_ZONE"))
				{
					object oDoor = GetObjectByTag("man26ac_door02", 0);
					
					SetLocked(oDoor, TRUE);
					AssignCommand(oDoor, ActionCloseDoor(oDoor));
				}
		}
}