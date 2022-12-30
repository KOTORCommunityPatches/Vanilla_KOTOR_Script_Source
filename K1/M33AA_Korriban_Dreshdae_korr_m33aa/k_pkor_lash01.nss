int JediCheck() {
	
	object oLWeapItem = GetItemInSlot(INVENTORY_SLOT_LEFTWEAPON, GetFirstPC());
	object oRWeapItem = GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, GetFirstPC());
	object oBodyItem = GetItemInSlot(INVENTORY_SLOT_BODY, GetFirstPC());
	
	if ((((((((((GetBaseItemType(oLWeapItem) == BASE_ITEM_DOUBLE_BLADED_LIGHTSABER) ||
	(GetBaseItemType(oLWeapItem) == BASE_ITEM_LIGHTSABER)) ||
	(GetBaseItemType(oLWeapItem) == BASE_ITEM_SHORT_LIGHTSABER)) ||
	(GetBaseItemType(oRWeapItem) == BASE_ITEM_DOUBLE_BLADED_LIGHTSABER)) ||
	(GetBaseItemType(oRWeapItem) == BASE_ITEM_LIGHTSABER)) ||
	(GetBaseItemType(oRWeapItem) == BASE_ITEM_SHORT_LIGHTSABER)) ||
	(GetBaseItemType(oBodyItem) == BASE_ITEM_JEDI_ROBE)) ||
	(GetBaseItemType(oBodyItem) == BASE_ITEM_JEDI_KNIGHT_ROBE)) ||
	(GetBaseItemType(oBodyItem) == BASE_ITEM_JEDI_MASTER_ROBE)))
		{
			return TRUE;
		}
		
		return FALSE;
}

int StartingConditional() {
	
	int nPartyCount = GetPartyMemberCount();
	
	if (((nPartyCount > 1) && JediCheck()))
		{
			return TRUE;
		}
		
		return FALSE;
}
