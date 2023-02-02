void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	object object1 = GetObjectByTag(GetScriptStringParameter(), 0);
	if ((GetIsObjectValid(object1) && (nParam2 == 1))) {
		AdjustCreatureAttributes(object1, 0, nParam1);
	}
	if ((GetIsObjectValid(object1) && (nParam2 == 2))) {
		AdjustCreatureAttributes(object1, 3, nParam1);
	}
	if ((GetIsObjectValid(object1) && (nParam2 == 3))) {
		AdjustCreatureAttributes(object1, 4, nParam1);
	}
	if ((GetIsObjectValid(object1) && (nParam2 == 4))) {
		AdjustCreatureAttributes(object1, 1, nParam1);
	}
	if ((GetIsObjectValid(object1) && (nParam2 == 5))) {
		AdjustCreatureAttributes(object1, 2, nParam1);
	}
	if ((GetIsObjectValid(object1) && (nParam2 == 6))) {
		AdjustCreatureAttributes(object1, 5, nParam1);
	}
}
