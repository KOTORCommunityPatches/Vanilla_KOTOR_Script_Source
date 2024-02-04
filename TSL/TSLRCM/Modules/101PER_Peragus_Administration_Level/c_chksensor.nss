int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	object object1 = GetItemPossessedBy(GetFirstPC(), "SonicImprintSensor");
	if ((nParam1 == 2)) {
		if (((GetGlobalNumber("103PER_HK50_Code") == 0) && GetIsObjectValid(object1))) {
			return 1;
		}
	}
	if ((nParam1 == 1)) {
		if (((GetGlobalNumber("103PER_HK50_Code") == 1) && GetIsObjectValid(object1))) {
			return 1;
		}
	}
	if ((nParam1 == 0)) {
		if (((GetGlobalNumber("103PER_HK50_Code") == 0) || (!GetIsObjectValid(object1)))) {
			return 1;
		}
	}
	return 0;
}