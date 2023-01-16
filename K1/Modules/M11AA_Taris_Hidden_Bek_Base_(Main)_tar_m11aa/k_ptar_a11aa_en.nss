#include "k_inc_tar"

void main() {
	
	SetGlobalBoolean("TAR_DUELINPROGRESS", TRUE);
	
	TAR_StripSithArmor();
	
	if (GetGlobalBoolean("Tar_KandonMission") && !GetGlobalBoolean("TAR_BEKGUARDSPAWNED"))
		{
			object object2;
			
			SetGlobalBoolean("TAR_BEKGUARDSPAWNED", TRUE);
			
			CreateObject(OBJECT_TYPE_CREATURE, "tar11_hidbek118", GetLocation(GetObjectByTag("tar11_wpcontrol", 0)));
			CreateObject(OBJECT_TYPE_CREATURE, "tar11_hidbek112", GetLocation(GetObjectByTag("tar11_wpdoor1", 0)));
			CreateObject(OBJECT_TYPE_CREATURE, "tar11_hidbek117", GetLocation(GetObjectByTag("tar11_wpdoor2", 0)));
			CreateObject(OBJECT_TYPE_CREATURE, "tar11_hidbek112", GetLocation(GetObjectByTag("tar11_wpdoor3", 0)));
			
			TAR_MarkForCleanup(GetObjectByTag("gadonthek112", 0));
		}

	TAR_CleanupDeadObjects(OBJECT_SELF);
	
	if (GetGlobalBoolean("Tar_GadonDead"))
		{
			object oAreaObject = GetFirstObjectInArea(OBJECT_INVALID, OBJECT_TYPE_CREATURE);
			
			while (GetIsObjectValid(oAreaObject))
				{
					if (!IsObjectPartyMember(oAreaObject))
						{
							ChangeToStandardFaction(oAreaObject, STANDARD_FACTION_HOSTILE_1);
						}
					
					oAreaObject = GetNextObjectInArea(OBJECT_INVALID, OBJECT_TYPE_CREATURE);
				}
		}
}
