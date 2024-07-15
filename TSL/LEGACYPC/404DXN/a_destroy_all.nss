struct structtype1 {
	float float1;
	float float3;
};

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
	int int2 = 15;
	int int3 = 0;
	location location1 = GetLocation(objectParam1);
	float fFacing = GetFacing(objectParam1);
	vector struct2 = GetPositionFromLocation(location1);
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

