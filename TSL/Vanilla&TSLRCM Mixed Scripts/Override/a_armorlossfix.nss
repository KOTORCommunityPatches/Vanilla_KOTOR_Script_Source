void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		object oPC = GetFirstPC();
		object oHandmaiden = GetObjectByTag("Handmaiden", 0);
		GiveItem(GetItemInSlot(1, oHandmaiden), oPC);
	}
	else {
		if ((nParam1 == 1)) {
			object object6 = GetFirstPC();
			object object8 = GetObjectByTag("Handmaiden", 0);
			GiveItem(GetItemInSlot(1, object8), object6);
			SetGlobalNumber("003EBO_Hand_Fight", 1);
			SetGlobalNumber("003EBO_Handmaid_Fight", 1);
		}
	}
}

