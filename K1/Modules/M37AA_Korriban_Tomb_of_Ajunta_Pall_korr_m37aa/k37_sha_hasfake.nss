int StartingConditional() {
	
	int nCheck;
	object oPC = GetFirstPC();
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	object oSword_PC = GetItemPossessedBy(oPC, "k37_itm_freednf1");
	object oSword_PM1 = GetItemPossessedBy(oPM1, "k37_itm_freednf1");
	object oSword_PM2 = GetItemPossessedBy(oPM2, "k37_itm_freednf1");
	
	nCheck = (GetIsObjectValid(oSword_PM2) || GetIsObjectValid(oSword_PC) || GetIsObjectValid(oSword_PM1));
	
	return nCheck;
}