// Globals
	int intGLOB_1 = 1;
	int intGLOB_2 = 2;
	int intGLOB_3 = 3;
	int intGLOB_4 = 4;
	int intGLOB_5 = 5;
	int intGLOB_6 = 6;
	int intGLOB_7 = 3;
	int intGLOB_8 = 4;
	int intGLOB_9 = 5;
	int intGLOB_10 = 6;
	int intGLOB_11 = 7;
	int intGLOB_12 = 8;
	int intGLOB_13 = 9;
	int intGLOB_14 = 10;
	int intGLOB_15 = 11;
	int intGLOB_16 = 1;
	int intGLOB_17 = 2;
	int intGLOB_18 = 3;
	int intGLOB_19 = 4;
	int intGLOB_20 = 5;
	int intGLOB_21 = 6;
	int intGLOB_22 = 7;
	int intGLOB_23 = 8;
	int intGLOB_24 = 9;
	int intGLOB_25 = 10;
	int intGLOB_26 = 11;
	int intGLOB_27 = 12;
	int intGLOB_28 = 13;
	int intGLOB_29 = 14;
	int intGLOB_30 = 15;
	int intGLOB_31 = 16;
	int intGLOB_32 = 17;
	int intGLOB_33 = 18;
	int intGLOB_34 = 19;
	int intGLOB_35 = 20;
	int intGLOB_36 = 21;
	int intGLOB_37 = 22;
	int intGLOB_38 = 23;
	int intGLOB_39 = 24;
	int intGLOB_40 = 25;
	int intGLOB_41 = 26;
	int intGLOB_42 = 27;
	int intGLOB_43 = 28;
	int intGLOB_44 = 29;
	int intGLOB_45 = 30;
	int intGLOB_46 = 31;
	int intGLOB_47 = 32;
	int intGLOB_48 = 84;

// Prototypes
int sub1(object objectParam1);

int sub1(object objectParam1) {
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

void main() {
	if ((!GetIsObjectValid(OBJECT_SELF))) {
		return;
	}
	int nLocal = GetLocalNumber(OBJECT_SELF, intGLOB_12);
	if ((nLocal < 1)) {
		nLocal = 20;
	}
	int int4 = 15;
	int int5 = 0;
	location location1 = GetLocation(OBJECT_SELF);
	float fFacing = GetFacing(OBJECT_SELF);
	vector struct2 = GetPositionFromLocation(location1);
	struct2.z = (struct2.z + 2.0);
	location location3 = Location(struct2, fFacing);
	object oShapeObject = GetFirstObjectInShape(4, 4.0, location1, 0, 65, [0.0,0.0,0.0]);
	while ((GetIsObjectValid(oShapeObject) && (nLocal > 0))) {
		{
			int int7 = GetStandardFaction(oShapeObject);
			if (((oShapeObject != OBJECT_SELF) && (int7 != 5))) {
			int5 = int4;
			int5 = (int5 - sub1(oShapeObject));
			if ((!ReflexSave(oShapeObject, int5, 0, OBJECT_SELF))) {
				ApplyEffectToObject(0, EffectDamage(nLocal, 2, 0), oShapeObject, 0.0);
			}
			else {
				int int11;
				if (GetHasFeat(125, oShapeObject)) {
					int11 = 0;
				}
				else {
					int11 = (nLocal / 2);
				}
				ApplyEffectToObject(0, EffectDamage(int11, 2, 0), oShapeObject, 0.0);
			}
			}
			oShapeObject = GetNextObjectInShape(4, 4.0, location1, 0, 65, [0.0,0.0,0.0]);
		}
	}
	ApplyEffectAtLocation(0, EffectVisualEffect(3003, 0), location3, 0.0);
	ClearAllActions();
	if (GetLocalBoolean(OBJECT_SELF, 60)) {
	}
	else {
		DestroyObject(OBJECT_SELF, 0.0, 1, 0.0, 0);
		SetLocalBoolean(OBJECT_SELF, 60, 1);
	}
}