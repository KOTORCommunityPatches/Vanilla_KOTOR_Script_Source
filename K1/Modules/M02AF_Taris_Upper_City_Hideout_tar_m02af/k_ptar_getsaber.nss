void main() {
	
	object oSaber = GetItemPossessedBy(GetFirstPC(), "G_W_DBLSBR006");
	
	GiveItem(oSaber, OBJECT_SELF);
	ActionEquipItem(oSaber, INVENTORY_SLOT_RIGHTWEAPON, FALSE);
}
