struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oHK50T1 = GetObjectByTag("HK50T1", 0);
	object oHK50T2 = GetObjectByTag("HK50T2", 0);
	object oHK50T3 = GetObjectByTag("HK50T3", 0);
	vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("WP_ALINHOLO", 0)));
	AssignCommand(oHK50T1, ClearAllActions());
	AssignCommand(oHK50T2, ClearAllActions());
	AssignCommand(oHK50T3, ClearAllActions());
				;
;
}

