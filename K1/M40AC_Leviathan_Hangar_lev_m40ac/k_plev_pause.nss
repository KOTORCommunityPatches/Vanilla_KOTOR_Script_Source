#include "k_inc_utility"

void main() {
	
	UT_ActionPauseConversation(4.5);
	
	object oCarth = GetObjectByTag("Carth", 0);
	object oBastila = GetObjectByTag("Bastila", 0);
	
	if (GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oCarth)) != BASE_ITEM_BLASTER_CARBINE && GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oCarth)) != BASE_ITEM_BLASTER_PISTOL
	&& GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oCarth)) != BASE_ITEM_BLASTER_RIFLE && GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oCarth)) != BASE_ITEM_BOWCASTER
	&& GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oCarth)) != BASE_ITEM_DISRUPTER_PISTOL && GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oCarth)) != BASE_ITEM_DISRUPTER_RIFLE
	&& GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oCarth)) != BASE_ITEM_HEAVY_BLASTER && GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oCarth)) != BASE_ITEM_HEAVY_REPEATING_BLASTER
	&& GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oCarth)) != BASE_ITEM_HOLD_OUT_BLASTER && GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oCarth)) != BASE_ITEM_ION_BLASTER
	&& GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oCarth)) != BASE_ITEM_ION_RIFLE && GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oCarth)) != BASE_ITEM_REPEATING_BLASTER
	&& GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oCarth)) != BASE_ITEM_SONIC_PISTOL && GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oCarth)) != BASE_ITEM_SONIC_RIFLE)
		{
			CreateItemOnObject("carth_temp_gun", oCarth, 1);
			DelayCommand(1.0, AssignCommand(oCarth, ActionEquipMostDamagingRanged(OBJECT_INVALID)));
		}
}
