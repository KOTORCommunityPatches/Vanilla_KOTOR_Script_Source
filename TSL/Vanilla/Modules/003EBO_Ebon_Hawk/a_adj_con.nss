void main() {
	int nParam1 = GetScriptParameter(1);
	object object1 = GetObjectByTag(GetScriptStringParameter(), 0);
	if (GetIsObjectValid(object1)) {
		AdjustCreatureAttributes(object1, 2, nParam1);
	}
}
