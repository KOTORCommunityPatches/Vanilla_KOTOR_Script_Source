struct structtype1 {
	float float1;
	float float3;
};

// Prototypes
void sub4(object objectParam1, int intParam2);
void sub3(object objectParam1, int intParam2);
int sub2(object objectParam1);
void sub1(object objectParam1, int intParam2, int intParam3);

void sub4(object objectParam1, int intParam2) {
	if ((intParam2 > 0)) {
		DelayCommand(IntToFloat(intParam2), sub4(objectParam1, 0));
		return;
	}
	{
		effect efDeath = EffectDeath(0, 0, 1);
		ApplyEffectToObject(0, efDeath, objectParam1, 0.0);
	}
}

void sub3(object objectParam1, int intParam2) {
	sub1(objectParam1, intParam2, 0);
}

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
	if ((intParam2 > 0)) {
		DelayCommand(IntToFloat(intParam2), sub1(objectParam1, 0, intParam3));
		return;
	}
	int int1 = 15;
	int int2 = 0;
	location location1 = GetLocation(objectParam1);
	float fFacing = GetFacing(objectParam1);
	vector struct2 = GetPositionFromLocation(location1);
}

void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nParam3 = GetScriptParameter(3);
	if ((nParam1 == 0)) {
		sub1(OBJECT_SELF, nParam2, nParam3);
		return;
	}
	if ((nParam1 == 1)) {
		sub3(OBJECT_SELF, nParam2);
		return;
	}
	if ((nParam1 == 2)) {
		sub4(OBJECT_SELF, nParam2);
		return;
	}
}

