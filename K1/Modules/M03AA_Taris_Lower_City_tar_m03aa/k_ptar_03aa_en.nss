#include "k_inc_tar"

void main() {
	
	object oBekDoor = GetObjectByTag("tar03_bekdoor", 0);
	object oJavyDoor = GetObjectByTag("tar03_javydoor", 0);
	
	Db_PostString("ENTERING AREA", 5, 5, 5.0);
	TAR_CleanupDeadObjects(OBJECT_SELF);
	
	AssignCommand(oBekDoor, ActionCloseDoor(oBekDoor));
	AssignCommand(oJavyDoor, ActionCloseDoor(oJavyDoor));
	
	if (GetGlobalBoolean("TAR_VULKARBASE_OPEN"))
		{
			SetLocked(GetObjectByTag("tar03_blkdoor", 0), FALSE);
		}
	
	if (GetGlobalBoolean("Tar_KandonMission"))
		{
			
			object oAreaObject = GetFirstObjectInArea(OBJECT_INVALID, OBJECT_TYPE_CREATURE);
			
			while (GetIsObjectValid(oAreaObject))
				{
					
					if (((GetStandardFaction(oAreaObject) == STANDARD_FACTION_HOSTILE_1) && (!IsObjectPartyMember(oAreaObject))))
						{
							DestroyObject(oAreaObject, 0.0, TRUE);
						}
					oAreaObject = GetNextObjectInArea(OBJECT_INVALID, OBJECT_TYPE_CREATURE);
				}
		}
	
	if (GetGlobalBoolean("TAR_BEKSHOSTILE"))
		{
			ChangeToStandardFaction(GetObjectByTag("tar03_hiddenbek", 0), STANDARD_FACTION_HOSTILE_1);
			SetPlotFlag(GetObjectByTag("tar03_hiddenbek", 0), FALSE);
		}
}