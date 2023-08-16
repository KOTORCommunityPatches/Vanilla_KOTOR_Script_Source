#include "k_inc_dan"

void UnequipWeapons() {
	object oPC = GetFirstPC();
	object oBastila = GetBastila();
	
	AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_LEFTWEAPON, oPC), TRUE));
	AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oPC), TRUE));
	AssignCommand(oBastila, ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_LEFTWEAPON, oBastila), TRUE));
	AssignCommand(oBastila, ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oBastila), TRUE));
}

void main() {
	
	UnequipWeapons();
	
	object oPC = GetFirstPC();
	object oBastila = GetBastila();
	object oSword1 = CreateItemOnObject("dan13_practice", oPC, 1);
	object oSword2 = CreateItemOnObject("dan13_practice", oBastila, 1);
	
	AssignCommand(oPC, ActionEquipItem(oSword1, INVENTORY_SLOT_RIGHTWEAPON, TRUE));
	AssignCommand(oBastila, ActionEquipItem(oSword2, INVENTORY_SLOT_RIGHTWEAPON, TRUE));
}
