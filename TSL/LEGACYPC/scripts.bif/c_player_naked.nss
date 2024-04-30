int StartingConditional() {
	object oPC = GetFirstPC();
	object oBodyItem = GetItemInSlot(1, oPC);
	if (GetIsObjectValid(oBodyItem)) {
		return 0;
	}
	return 1;
}

