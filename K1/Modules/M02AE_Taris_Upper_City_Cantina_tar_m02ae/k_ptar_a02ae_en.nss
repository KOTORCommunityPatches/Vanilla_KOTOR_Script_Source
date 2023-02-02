#include "k_inc_tar"

void main() {
	
	object oAreaObject;
	
	TAR_CleanupDeadObjects(OBJECT_SELF);
	
	if (GetGlobalNumber("TAR_DUEL") == 6 && !GetLoadFromSaveGame())
		{
			SetGlobalNumber("DUEL_TIMER", (GetGlobalNumber("DUEL_TIMER") + 1));
		}
	
	if (GetGlobalNumber("TAR_SITHARMORPLOT") == 1)
		{
			DestroyObject(GetObjectByTag("Sarna021", 0));
			DestroyObject(GetObjectByTag("YunGenda021", 0));
		}
	
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
