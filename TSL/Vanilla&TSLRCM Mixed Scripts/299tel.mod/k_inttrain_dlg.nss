struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oHK50int1 = GetObjectByTag("HK50int1", 0);
	object oHK50int2 = GetObjectByTag("HK50int2", 0);
	object oHK50int3 = GetObjectByTag("HK50int3", 0);
	vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("HK50IntV", 0)));
	AssignCommand(oHK50int1, ClearAllActions());
	AssignCommand(oHK50int2, ClearAllActions());
	AssignCommand(oHK50int3, ClearAllActions());
				;
;
}

