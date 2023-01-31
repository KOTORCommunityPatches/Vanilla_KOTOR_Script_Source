void main() {
	
	object oCarthDPad = GetItemPossessedBy(OBJECT_SELF, "datapad");
	
	if ((!GetIsObjectValid(oCarthDPad)))
		{
			
			object oPC = GetFirstPC();
			object oPCDatapad = GetItemPossessedBy(oPC, "datapad");
			
			if (GetIsObjectValid(oPCDatapad))
				{
					ActionTakeItem(oPCDatapad, oPC);
				}
		}
}