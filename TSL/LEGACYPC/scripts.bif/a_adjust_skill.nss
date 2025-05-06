void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	AdjustCreatureSkills(GetFirstPC(), nParam1, nParam2);
}

