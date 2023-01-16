#include "k_inc_debug"

void main() {
	
	RemoveAvailableNPC(NPC_MISSION);
	
	if (GetIsObjectValid(GetObjectByTag("Mission", 0)) == TRUE)
		{
			
			Db_PostString("mission is here", 5, 5, 1.0);
			
			object oMission = GetObjectByTag("Mission", 0);
			object oBeltItem = GetItemInSlot(INVENTORY_SLOT_BELT, oMission);
			object oBodyItem = GetItemInSlot(INVENTORY_SLOT_BODY, oMission);
			object oHandsItem = GetItemInSlot(INVENTORY_SLOT_HANDS, oMission);
			object oHeadItem = GetItemInSlot(INVENTORY_SLOT_HEAD, oMission);
			object oImplantItem = GetItemInSlot(INVENTORY_SLOT_IMPLANT, oMission);
			object oLArmItem = GetItemInSlot(INVENTORY_SLOT_LEFTARM, oMission);
			object oLWeapItem = GetItemInSlot(INVENTORY_SLOT_LEFTWEAPON, oMission);
			object oRArmItem = GetItemInSlot(INVENTORY_SLOT_RIGHTARM, oMission);
			object oRWeapItem = GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oMission);
			
			if (GetIsObjectValid(oBeltItem) == TRUE)
				{
					CreateItemOnObject(GetTag(oBeltItem), GetFirstPC(), 1);
				}
			
			if (GetIsObjectValid(oBodyItem) == TRUE)
				{
					CreateItemOnObject(GetTag(oBodyItem), GetFirstPC(), 1);
				}
			
			if (GetIsObjectValid(oHandsItem) == TRUE)
				{
					CreateItemOnObject(GetTag(oHandsItem), GetFirstPC(), 1);
				}
			
			if (GetIsObjectValid(oHeadItem) == TRUE)
				{
					CreateItemOnObject(GetTag(oHeadItem), GetFirstPC(), 1);
				}
			
			if (GetIsObjectValid(oImplantItem) == TRUE)
				{
					CreateItemOnObject(GetTag(oImplantItem), GetFirstPC(), 1);
				}
			
			if (GetIsObjectValid(oLArmItem) == TRUE)
				{
					CreateItemOnObject(GetTag(oLArmItem), GetFirstPC(), 1);
				}
			
			if (GetIsObjectValid(oLWeapItem) == TRUE)
				{
					CreateItemOnObject(GetTag(oLWeapItem), GetFirstPC(), 1);
				}
			
			if (GetIsObjectValid(oRArmItem) == TRUE)
				{
					CreateItemOnObject(GetTag(oRArmItem), GetFirstPC(), 1);
				}
			
			if (GetIsObjectValid(oRWeapItem) == TRUE)
				{
					CreateItemOnObject(GetTag(oRWeapItem), GetFirstPC(), 1);
				}
		}
}
