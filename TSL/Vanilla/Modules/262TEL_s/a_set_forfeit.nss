void main() {
	int nParam1 = GetScriptParameter(1);
	object oRWeapItem;
	object oSisterDojo;
	object oPC;
	switch (nParam1) {
		case 0:
			SetForfeitConditions((((1 | 2) | 4) | 16));
			oPC = GetFirstPC();
			oRWeapItem = GetItemInSlot(5, oPC);
			GiveItem(oRWeapItem, oPC);
			oRWeapItem = GetItemInSlot(4, oPC);
			GiveItem(oRWeapItem, oPC);
			break;
		case 1:
			SetForfeitConditions(((1 | 2) | 16));
			oSisterDojo = GetObjectByTag("SisterDojo", 0);
			AssignCommand(oSisterDojo, ActionEquipItem(CreateItemOnObject("g_w_lghtsbr01", oSisterDojo, 1, 0), 4, 1));
			break;
		default:
			SetForfeitConditions(16);
			break;
	}
}

