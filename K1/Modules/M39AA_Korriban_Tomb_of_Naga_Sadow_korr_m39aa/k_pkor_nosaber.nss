int StartingConditional() {
	
	object oPC = GetFirstPC();
	object oSaber = GetItemPossessedBy(oPC, "k39_itm_cersaber");
	int nGlobal = GetGlobalNumber("KOR_FINAL_TEST");
	
	if (nGlobal == 1 && !GetIsObjectValid(oSaber))
		{
			return TRUE;
		}
	
	return FALSE;
}