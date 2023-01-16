void main() {
	
	object oPC = GetFirstPC();
	
	AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oPC), FALSE));
	AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_LEFTWEAPON, oPC), FALSE));
}
