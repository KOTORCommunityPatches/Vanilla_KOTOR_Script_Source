int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if (((((nParam1 == 1) && IsNPCPartyMember(1)) && (GetJournalEntry("ssensor") < 20)) && (!GetLocalBoolean(OBJECT_SELF, 50)))) {
		return 1;
	}
	if (((((nParam1 == 2) && (!GetLocalBoolean(OBJECT_SELF, 53))) && (!GetLocalBoolean(OBJECT_SELF, 52))) && (GetSkillRank(3, GetPCSpeaker()) > 8))) {
		return 1;
	}
	if ((nParam1 < 10)) {
		return 0;
	}
	if (((nParam1 == 21) && ((GetJournalEntry("ssensor") == 20) || (GetJournalEntry("ssensor") == 30)))) {
		return 1;
	}
	if ((nParam1 == 21)) {
		return 0;
	}
	if ((((nParam1 == 31) && (GetJournalEntry("ssensor") == 30)) && (!GetLocalBoolean(OBJECT_SELF, 56)))) {
		return 1;
	}
	if ((nParam1 == 31)) {
		return 0;
	}
	if ((GetJournalEntry("ssensor") <= nParam1)) {
		return 1;
	}
	return 0;
}
