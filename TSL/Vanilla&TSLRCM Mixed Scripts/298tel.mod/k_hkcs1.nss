struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oHK50 = GetObjectByTag("HK50", 0);
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetIsObjectValid(oHK50)) {
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0);
		SetLockOrientationInDialog(oHK50, 1);
		vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("Shelf03", 0)));
		;
	}
}

