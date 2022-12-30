#include "k_inc_debug"

void main() {
	
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
					CreateItemOnObject(GetTag(oBeltItem), GetObjectByTag("missdrop", 0), 1);
				}
			
			if (GetIsObjectValid(oBodyItem) == TRUE)
				{
					CreateItemOnObject(GetTag(oBodyItem), GetObjectByTag("missdrop", 0), 1);
				}
			
			if (GetIsObjectValid(oHandsItem) == TRUE)
				{
					CreateItemOnObject(GetTag(oHandsItem), GetObjectByTag("missdrop", 0), 1);
				}
			
			if (GetIsObjectValid(oHeadItem) == TRUE)
				{
					CreateItemOnObject(GetTag(oHeadItem), GetObjectByTag("missdrop", 0), 1);
				}
			
			if (GetIsObjectValid(oImplantItem) == TRUE)
				{
					CreateItemOnObject(GetTag(oImplantItem), GetObjectByTag("missdrop", 0), 1);
				}
			
			if (GetIsObjectValid(oLArmItem) == TRUE)
				{
					CreateItemOnObject(GetTag(oLArmItem), GetObjectByTag("missdrop", 0), 1);
				}
			
			if (GetIsObjectValid(oLWeapItem) == TRUE)
				{
					CreateItemOnObject(GetTag(oLWeapItem), GetObjectByTag("missdrop", 0), 1);
				}
			
			if (GetIsObjectValid(oRArmItem) == TRUE)
				{
					CreateItemOnObject(GetTag(oRArmItem), GetObjectByTag("missdrop", 0), 1);
				}
			
			if (GetIsObjectValid(oRWeapItem) == TRUE)
				{
					CreateItemOnObject(GetTag(oRWeapItem), GetObjectByTag("missdrop", 0), 1);
				}
		}
}
