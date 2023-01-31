void main() {
	
	object oItem;
	int nSlot;
	
	ClearAllActions();
	
	nSlot = 17;
	
	while (nSlot >= 0)
		{
			oItem = GetItemInSlot(nSlot, OBJECT_SELF);
			
			if (GetIsObjectValid(oItem))
				{
					ActionUnequipItem(oItem, TRUE);
				}
			
			(nSlot--);
		}
}