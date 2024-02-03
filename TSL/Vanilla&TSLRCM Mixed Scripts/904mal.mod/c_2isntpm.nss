int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nParam3 = GetScriptParameter(3);
	return (((!IsAvailableCreature(nParam1)) && (!IsAvailableCreature(nParam2))) && (!IsAvailableCreature(nParam3)));
}

