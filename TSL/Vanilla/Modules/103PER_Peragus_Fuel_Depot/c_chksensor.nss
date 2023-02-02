int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nParam3 = GetScriptParameter(3);
	object object1 = GetItemPossessedBy(GetFirstPC(), "SonicImprintSensor");
	if (((((GetGlobalNumber("103PER_Voice_Frag_1") == nParam1) && (GetGlobalNumber("103PER_Voice_Frag_2") == nParam2)) && (GetGlobalNumber("103PER_Voice_Frag_3") == nParam3)) && GetIsObjectValid(object1))) {
		return 1;
	}
	return 0;
}
