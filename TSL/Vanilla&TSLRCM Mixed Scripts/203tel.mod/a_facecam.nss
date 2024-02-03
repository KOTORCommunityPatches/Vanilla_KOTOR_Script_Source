struct structtype1 {
	float float1;
	float float3;
};

void main() {
	AssignCommand(GetObjectByTag("203_TSF2", 0), SetFacingPoint(GetPositionFromLocation(GetLocation(GetFirstPC()))));
}

