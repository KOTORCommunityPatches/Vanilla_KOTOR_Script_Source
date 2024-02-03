int StartingConditional() {
	object oPC = GetFirstPC();
	object oRWeapItem = GetItemInSlot(4, oPC);
	int nItemType = GetBaseItemType(oRWeapItem);
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		if ((((nItemType == 8) || (nItemType == 9)) || (nItemType == 10))) {
			return 1;
		}
		else {
			return 0;
		}
	}
	else {
		return 0;
	}
}

