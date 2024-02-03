int StartingConditional() {
	string sParam = GetScriptStringParameter();
	object object1 = GetObjectByTag(sParam, 0);
	if (GetIsObjectValid(object1)) {
		if ((GetItemInSlot(1, GetFirstPC()) == object1)) {
			return 1;
		}
	}
	return 0;
}

