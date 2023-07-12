// GetStringByStrRef hotfix

#include "k_inc_man"

 int StartingConditional() {
 	
	string sRoom = GetStringRight(GetTag(OBJECT_SELF), 1);
 	
	CloseAllWaterDoors();
 	
	SwitchWaterRooms();
 	
	if (GetRoomFull(sRoom))
		{
			SwitchWaterRooms();
			
			return TRUE;
		}
 	
	return FALSE;
 }
