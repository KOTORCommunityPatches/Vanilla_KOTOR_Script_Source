#include "k_inc_dan"

void main() {
	
	if (((GetEnteringObject() == GetBastila()) || (GetEnteringObject() == GetCarth())) && HasNeverTriggered())
		{
			object oNearest = GetNearestObject(OBJECT_TYPE_DOOR, OBJECT_SELF, 1);
			AssignCommand(oNearest, ActionOpenDoor(oNearest));
		}
}