struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oHK50 = GetObjectByTag("HK50", 0);
	if (GetIsPC(GetEnteringObject())) {
		if (GetIsObjectValid(oHK50)) {
			vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("Shelf03", 0)));
			;
		}
	}
}

