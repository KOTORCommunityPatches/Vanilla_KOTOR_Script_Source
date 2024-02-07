int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int int3;
	string sParam = GetScriptStringParameter();
	if ((nParam1 == 0)) {
		nParam1 = 1;
	}
	object object1 = GetItemPossessedBy(GetPartyLeader(), sParam);
	if (GetIsObjectValid(object1)) {
		int int5 = GetItemStackSize(object1);
		return (nParam1 <= int5);
	}
	return 0;
}

