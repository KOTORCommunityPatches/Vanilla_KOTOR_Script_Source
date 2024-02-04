void main() {
	object oPC = GetFirstPC();
	object oRWeapItem = GetItemInSlot(4, oPC);
	object oLWeapItem = GetItemInSlot(5, oPC);
	object oHeadItem = GetItemInSlot(0, oPC);
	object oBodyItem = GetItemInSlot(1, oPC);
	object oFake_pc605 = GetObjectByTag("fake_pc605", 0);
	AssignCommand(oFake_pc605, ActionEquipItem(oRWeapItem, 4, 1));
	AssignCommand(oFake_pc605, ActionEquipItem(oLWeapItem, 5, 1));
	AssignCommand(oFake_pc605, ActionEquipItem(oHeadItem, 0, 1));
	AssignCommand(oFake_pc605, ActionEquipItem(oBodyItem, 1, 1));
}