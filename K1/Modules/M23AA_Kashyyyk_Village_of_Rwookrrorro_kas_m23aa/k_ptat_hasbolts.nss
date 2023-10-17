int StartingConditional() {
	
	object oPC = GetFirstPC();
	object oBolt = GetItemPossessedBy(oPC, "kas24_bowcasbolt");
	
	if (GetIsObjectValid(oBolt) == TRUE)
		{
			return TRUE;
		}
		else
			{
				return FALSE;
			}
}
