int StartingConditional() {
	int nValid;
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "k39_itm_coldgren");
	nValid = GetIsObjectValid(object3);
	return nValid;
}
