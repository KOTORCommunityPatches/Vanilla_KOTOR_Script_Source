void main() {
	object oBodyItem = GetItemInSlot(1, GetFirstPC());
	object oRWeapItem = GetItemInSlot(4, GetFirstPC());
	AssignCommand(GetFirstPC(), GiveItem(oBodyItem, GetObjectByTag("HoldStuff", 0)));
	AssignCommand(GetFirstPC(), GiveItem(oRWeapItem, GetObjectByTag("HoldStuff", 0)));
	object oInvItem = GetFirstItemInInventory(GetObjectByTag("HoldArmor", 0));
	object object14 = GetFirstItemInInventory(GetObjectByTag("HoldLeft", 0));
	object object17 = GetFirstItemInInventory(GetObjectByTag("HoldRight", 0));
	object object20 = GetFirstItemInInventory(GetObjectByTag("HoldBelt", 0));
	object object23 = GetFirstItemInInventory(GetObjectByTag("HoldHead", 0));
	GiveItem(oInvItem, GetFirstPC());
	GiveItem(object14, GetFirstPC());
	GiveItem(object17, GetFirstPC());
	GiveItem(object20, GetFirstPC());
	GiveItem(object23, GetFirstPC());
	DelayCommand(1.0, AssignCommand(GetFirstPC(), ClearAllActions()));
	DelayCommand(1.0, AssignCommand(GetFirstPC(), ActionEquipItem(object17, 4, 0)));
	DelayCommand(1.1, AssignCommand(GetFirstPC(), ActionEquipItem(object14, 5, 0)));
	DelayCommand(1.3, AssignCommand(GetFirstPC(), ActionEquipItem(object20, 10, 0)));
	DelayCommand(1.4, AssignCommand(GetFirstPC(), ActionEquipItem(object23, 0, 0)));
	DelayCommand(1.8, AssignCommand(GetFirstPC(), ActionEquipItem(oInvItem, 1, 0)));
}