int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nParam3 = GetScriptParameter(3);
	object object1 = GetItemPossessedBy(GetFirstPC(), "SonicImprintSensor");
	if ((nParam1 == 1)) {
		if ((((GetAbilityScore(GetPCSpeaker(), 3) > nParam2) && (GetSkillRank(4, GetPCSpeaker()) < nParam3)) && (!GetIsObjectValid(object1)))) {
			return 1;
		}
	}
	if ((nParam1 == 2)) {
		if ((((GetAbilityScore(GetPCSpeaker(), 3) > nParam2) && (GetSkillRank(4, GetPCSpeaker()) < nParam3)) && GetIsObjectValid(object1))) {
			return 1;
		}
	}
	if ((nParam1 == 3)) {
		if ((((GetSkillRank(0, GetPCSpeaker()) > nParam2) && (GetSkillRank(4, GetPCSpeaker()) < nParam3)) && (!GetIsObjectValid(object1)))) {
			return 1;
		}
	}
	if ((nParam1 == 4)) {
		if ((((GetSkillRank(0, GetPCSpeaker()) > nParam2) && (GetSkillRank(4, GetPCSpeaker()) < nParam3)) && GetIsObjectValid(object1))) {
			return 1;
		}
	}
	if ((nParam1 == 5)) {
		if (((GetSkillRank(4, GetPCSpeaker()) > nParam2) && (!GetIsObjectValid(object1)))) {
			return 1;
		}
	}
	if ((nParam1 == 6)) {
		if (((GetSkillRank(4, GetPCSpeaker()) > nParam2) && GetIsObjectValid(object1))) {
			return 1;
		}
	}
	return 0;
}
