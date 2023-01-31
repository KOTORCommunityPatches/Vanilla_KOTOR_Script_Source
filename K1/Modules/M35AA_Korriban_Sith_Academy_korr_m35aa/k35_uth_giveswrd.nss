void main() {
	
	object oPC = GetFirstPC();
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	object oSword_PC = GetItemPossessedBy(oPC, "k37_itm_freedont");
	object oSword_PM1 = GetItemPossessedBy(oPM1, "k37_itm_freedont");
	object oSword_PM2 = GetItemPossessedBy(oPM2, "k37_itm_freedont");
	
	ActionPauseConversation();
	
	if (GetIsObjectValid(oSword_PC))
		{
			ActionTakeItem(oSword_PC, oPC);
			SetGlobalBoolean("KOR_FREEDON_SWORD", TRUE);
		}
		else if (GetIsObjectValid(oSword_PM1))
			{
				ActionTakeItem(oSword_PM1, oPM1);
				SetGlobalBoolean("KOR_FREEDON_SWORD", TRUE);
			}
			else if (GetIsObjectValid(oSword_PM2))
				{
					ActionTakeItem(oSword_PM2, oPM2);
					SetGlobalBoolean("KOR_FREEDON_SWORD", TRUE);
				}
	
	ActionResumeConversation();
}