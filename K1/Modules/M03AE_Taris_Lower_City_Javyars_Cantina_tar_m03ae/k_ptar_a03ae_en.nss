#include "k_inc_tar"

void main() {
	
	object oAreaObject;
	
	if (GetGlobalBoolean("Tar_SwoopRace"))
		{
			TAR_MarkForCleanup(GetObjectByTag("calo031", 0));
			TAR_MarkForCleanup(GetObjectByTag("taproomvic031", 0));
			TAR_MarkForCleanup(GetObjectByTag("taproomvic032", 0));
			TAR_MarkForCleanup(GetObjectByTag("taproomvic033", 0));
			TAR_MarkForCleanup(GetObjectByTag("tar03_calotalker", 0));
		}
	
	if (GetGlobalBoolean("Tar_GadonMission"))
		{
			TAR_MarkForCleanup(GetObjectByTag("mission031", 0));
			TAR_MarkForCleanup(GetObjectByTag("zaalbar031", 0));
			TAR_MarkForCleanup(GetObjectByTag("rodian033", 0));
			TAR_MarkForCleanup(GetObjectByTag("rodian034", 0));
		}
	
	TAR_CleanupDeadObjects(OBJECT_SELF);
	
	oAreaObject = GetFirstObjectInArea(OBJECT_INVALID, OBJECT_TYPE_PLACEABLE);
	
	while (GetIsObjectValid(oAreaObject))
		{
			if (GetTag(oAreaObject) == "ptar_pazplayer")
				{
					AssignCommand(oAreaObject, ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP03));
				}
			
			if (GetTag(oAreaObject) == "ptar_sitter")
				{
					AssignCommand(oAreaObject, ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP01));
				}
			
			if (GetTag(oAreaObject) == "ptar_drinker")
				{
					AssignCommand(oAreaObject, ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP02));
				}
			
			oAreaObject = GetNextObjectInArea(OBJECT_INVALID, OBJECT_TYPE_PLACEABLE);
		}
}