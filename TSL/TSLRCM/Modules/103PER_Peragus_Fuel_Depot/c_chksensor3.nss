int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	object object1 = GetItemPossessedBy(GetFirstPC(), "SonicImprintSensor");
	if (((GetGlobalNumber("103PER_HK50_Code") == nParam1) || (!GetIsObjectValid(object1)))) {
		return 1;
	}
	return 0;
}