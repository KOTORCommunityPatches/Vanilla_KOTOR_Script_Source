void main() {
	int nParam1 = GetScriptParameter(1);
	int int3;
	string sParam = GetScriptStringParameter();
	if ((nParam1 == 0)) {
		nParam1 = 1;
	}
	object object1 = GetItemPossessedBy(GetPartyLeader(), sParam);
	if (GetIsObjectValid(object1)) {
		int int5 = GetItemStackSize(object1);
		if ((nParam1 < int5)) {
			nParam1 = (int5 - nParam1);
			SetItemStackSize(object1, nParam1);
		}
		else {
			if (((nParam1 > int5) || (nParam1 == int5))) {
				DestroyObject(object1, 0.0, 0, 0.0, 0);
			}
		}
	}
}

