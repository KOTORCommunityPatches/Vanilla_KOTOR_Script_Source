struct structtype1 {
	float float1;
	float float3;
};

void main() {
	AssignCommand(GetObjectByTag("atton", 0), SetFacingPoint(GetPositionFromLocation(GetLocation(GetFirstPC()))));
}

