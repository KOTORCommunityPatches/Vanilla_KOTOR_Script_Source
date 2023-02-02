void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nParam3 = GetScriptParameter(3);
	if ((nParam1 == 0)) {
		nParam1 = 10;
	}
	float float1 = IntToFloat(nParam3);
	float float3 = IntToFloat(nParam1);
	location location1 = GetLocation(GetObjectByTag(sParam, 0));
	object oShapeObject = GetFirstObjectInShape(4, float3, location1, 0, 1, [0.0,0.0,0.0]);
	while (GetIsObjectValid(oShapeObject)) {
		DelayCommand(float1, AssignCommand(oShapeObject, ActionMoveToObject(GetPartyLeader(), nParam2, 1.0)));
		oShapeObject = GetNextObjectInShape(4, float3, location1, 0, 1, [0.0,0.0,0.0]);
	}
}
