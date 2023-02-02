int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nParam3 = GetScriptParameter(3);
	if ((nParam1 == 1)) {
		if ((((GetGlobalNumber("105PER_Flash_Code") == 1) && (GetAbilityScore(GetPCSpeaker(), 3) > nParam2)) && GetLocalBoolean(OBJECT_SELF, nParam3))) {
			return 1;
		}
	}
	if ((nParam1 == 2)) {
		if ((((GetGlobalNumber("105PER_Flash_Code") == 1) && (GetAbilityScore(GetPCSpeaker(), 3) > nParam2)) && (!GetLocalBoolean(OBJECT_SELF, nParam3)))) {
			return 1;
		}
	}
	if ((nParam1 == 3)) {
		if ((GetGlobalNumber("105PER_Flash_Code") < 2)) {
			return 1;
		}
	}
	return 0;
}
