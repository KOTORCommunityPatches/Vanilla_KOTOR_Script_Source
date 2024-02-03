void main() {
	object oHK47 = GetObjectByTag("HK47", 0);
	{
		object oRWeapItem = GetItemInSlot(5, oHK47);
		if (GetIsObjectValid(oRWeapItem)) {
			AssignCommand(oHK47, ActionUnequipItem(oRWeapItem, 0));
		}
		oRWeapItem = GetItemInSlot(4, oHK47);
		if (GetIsObjectValid(oRWeapItem)) {
			AssignCommand(oHK47, ActionUnequipItem(oRWeapItem, 0));
		}
	}
}

