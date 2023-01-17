void main() {
	string sParam = GetScriptStringParameter();
	object oPC;
	if ((sParam == "")) {
		oPC = GetFirstPC();
	}
	else {
		oPC = GetObjectByTag(sParam, 0);
	}
	object oInvItem = GetFirstItemInInventory(oPC);
	int int1;
	while ((oInvItem != OBJECT_INVALID)) {
		(int1++);
		AurPostString(("Destroying " + GetTag(oInvItem)), 5, int1, 5.0);
		DestroyObject(oInvItem, 0.0, 1, 0.0, 1);
		oInvItem = GetNextItemInInventory(oPC);
	}
	int int2 = (20 - 1);
	while ((int2 >= 0)) {
		DestroyObject(GetItemInSlot(int2, oPC), 0.0, 1, 0.0, 1);
		(int2--);
	}
}

