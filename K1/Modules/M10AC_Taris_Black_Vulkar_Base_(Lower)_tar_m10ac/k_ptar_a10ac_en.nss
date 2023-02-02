#include "k_inc_tar"

void main() {
	
	object oNPC;
	
	if (GetGlobalBoolean("Tar_KandonMission"))
		{
			oNPC = GetFirstObjectInArea(OBJECT_INVALID, OBJECT_TYPE_CREATURE);
			
			while (GetIsObjectValid(oNPC))
				{
					if (GetTag(oNPC) == "kandonguard02" || GetTag(oNPC) == "kandonark102")
						{
							ChangeToStandardFaction(oNPC, STANDARD_FACTION_HOSTILE_1);
						}
					
					oNPC = GetNextObjectInArea(OBJECT_INVALID, OBJECT_TYPE_CREATURE);
				}
		}
	
	TAR_CleanupDeadObjects(OBJECT_SELF);
}
