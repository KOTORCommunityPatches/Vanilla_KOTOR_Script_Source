// Prototypes
int sub2(object objectParam1);
void sub1(object objectParam1, int intParam2, int intParam3);

int sub2(object objectParam1) {
	int int1 = GetHasFeat(56, objectParam1);
	int int3 = GetHasFeat(57, objectParam1);
	int int5 = 0;
	if ((int1 == 1)) {
		int5 = (int5 + 2);
		if ((int3 == 1)) {
			int5 = (int5 + 2);
		}
	}
	return int5;
}

void sub1(object objectParam1, int intParam2, int intParam3) {
	if ((!GetIsObjectValid(objectParam1))) {
		return;
	}
	if ((intParam2 > 0)) {
		DelayCommand(IntToFloat(intParam2), sub1(objectParam1, 0, intParam3));
		return;
	}
	{
		int int2 = 15;
		int int3 = 0;
		location location1 = GetLocation(objectParam1);
		float fFacing = GetFacing(objectParam1);
		vector struct2 = GetPositionFromLocation(location1);
		struct2.z = (struct2.z + 1.0);
		location location3 = Location(struct2, fFacing);
		object oShapeObject = GetFirstObjectInShape(4, 4.0, location1, 0, 65, [0.0,0.0,0.0]);
		while ((GetIsObjectValid(oShapeObject) && (intParam3 > 0))) {
		{
			int int5 = GetStandardFaction(oShapeObject);
			if (((oShapeObject != OBJECT_SELF) && (int5 != 5))) {
			int3 = int2;
			int3 = (int3 - sub2(oShapeObject));
			if ((!ReflexSave(oShapeObject, int3, 0, OBJECT_SELF))) {
				ApplyEffectToObject(0, EffectDamage(intParam3, 2, 0), oShapeObject, 0.0);
			}
			else {
				int int9 = 0;
				if (GetHasFeat(125, oShapeObject)) {
					int9 = 0;
				}
				else {
					int9 = (intParam3 / 2);
				}
				ApplyEffectToObject(0, EffectDamage(int9, 2, 0), oShapeObject, 0.0);
			}
			}
			oShapeObject = GetNextObjectInShape(4, 4.0, location1, 0, 65, [0.0,0.0,0.0]);
		}
		}
		ApplyEffectAtLocation(0, EffectVisualEffect(3003, 0), location3, 0.0);
		AssignCommand(objectParam1, ClearAllActions());
		DestroyObject(objectParam1, 0.0, 1, 0.0, 0);
	}
}

void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	object oUtildroid_mk1 = GetObjectByTag("utildroid_mk1", 0);
	int int5;
	AurPostString("Self destruct triggered: uh oh...", 5, 5, 5.0);
	sub1(GetObjectByTag("utildroid_mk2", 0), (nParam1 + 1), nParam2);
	sub1(GetObjectByTag("utildroid_mk3", 0), nParam1, nParam2);
	while ((int5 <= 17)) {
		DelayCommand((IntToFloat(int5) * 0.5), sub1(oUtildroid_mk1, nParam1, nParam2));
		(int5++);
		oUtildroid_mk1 = GetObjectByTag("utildroid_mk1", int5);
	}
}

