int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int int3;
	string sParam = GetScriptStringParameter();
	if ((nParam1 == 0)) {
		nParam1 = 1;
	}
	object object1 = GetItemPossessedBy(GetPartyLeader(), sParam);
	AurPostString(("Item: " + ObjectToString(object1)), 12, 12, 3.0);
	if (GetIsObjectValid(object1)) {
		int int5 = GetItemStackSize(object1);
		AurPostString(("Stack: " + IntToString(int5)), 12, 13, 3.0);
		AurPostString(("Quantity: " + IntToString(nParam1)), 12, 14, 3.0);
		return (nParam1 <= int5);
	}
	return 0;
}
