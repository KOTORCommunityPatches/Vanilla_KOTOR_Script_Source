void main() {
	int nParam1 = GetScriptParameter(1);
	AurPostString(("Hit = " + IntToString(nParam1)), 5, 5, 4.0);
	AdjustAlignment(GetFirstPC(), 2, nParam1, 0);
}

