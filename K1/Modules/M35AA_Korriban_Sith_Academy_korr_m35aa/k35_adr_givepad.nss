void main() {
	
	object oPC = GetFirstPC();
	object oDatapad = GetItemPossessedBy(oPC, "k35_itm_sithdata");
	object oExitWP = GetObjectByTag("k35_way_entrance", 0);
	
	if (GetIsObjectValid(oDatapad))
		{
			SetGlobalBoolean("KOR_YUTH_POISON", TRUE);
			
			ActionTakeItem(oDatapad, oPC);
			
			ActionMoveToObject(oExitWP, TRUE);
			
			ActionDoCommand(DestroyObject(OBJECT_SELF));
			SetCommandable(FALSE, OBJECT_SELF);
		}
}
