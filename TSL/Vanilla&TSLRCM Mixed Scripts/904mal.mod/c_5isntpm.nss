int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nParam3 = GetScriptParameter(3);
	int nParam4 = GetScriptParameter(4);
	int nParam5 = GetScriptParameter(5);
	return (((((!IsAvailableCreature(nParam1)) && (!IsAvailableCreature(nParam2))) && (!IsAvailableCreature(nParam3))) && (!IsAvailableCreature(nParam4))) && (!IsAvailableCreature(nParam5)));
}

