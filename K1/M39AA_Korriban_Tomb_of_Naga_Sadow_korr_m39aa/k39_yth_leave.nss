#include "k_inc_debug"

void main() {
	
	object oTrap = GetObjectByTag("G_T_TRAP002", 0);
	
	if (GetIsObjectValid(oTrap))
		{
			DestroyObject(oTrap, 0.0, TRUE);
		}
	
	object oDoorExit = GetObjectByTag("kor39_kor36", 0);
	SetLocked(oDoorExit, FALSE);
	
	object oDoorAcid = GetObjectByTag("kor39_dooracid", 0);
	SetLocked(oDoorAcid, FALSE);
	
	object oDoorStarMap = GetObjectByTag("k39_door_starmap", 0);
	SetLocked(oDoorStarMap, FALSE);
	
	object oWP_Exit = GetObjectByTag("k39_way_yuthexit", 0);
	
	SetGlobalNumber("KOR_FINAL_TEST", 5);
	
	if (GetIsObjectValid(oWP_Exit))
		{
			ActionMoveToObject(oWP_Exit);
			Db_PostString("Waypoint valid", 6, 6, 5.0);
		}
		else
			{
				Db_PostString("Waypoint not valid", 6, 6, 5.0);
			}
	
	ActionDoCommand(DestroyObject(OBJECT_SELF));
	SetCommandable(FALSE, OBJECT_SELF);
}
