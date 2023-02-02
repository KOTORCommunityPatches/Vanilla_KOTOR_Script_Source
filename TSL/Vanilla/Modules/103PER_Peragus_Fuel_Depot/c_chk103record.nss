int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	object object1 = GetItemPossessedBy(GetFirstPC(), "SonicImprintSensor");
	if ((((GetGlobalNumber("103PER_HK50_Voice") == nParam1) && (GetGlobalNumber("103PER_HK50_Code") == nParam2)) && GetIsObjectValid(object1))) {
		return 1;
	}
	return 0;
}
