int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	if ((GetNPCSelectability(nParam1) != (-1))) {
		if ((!IsNPCPartyMember(nParam1))) {
			return 1;
		}
	}
	return 0;
}

