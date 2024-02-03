struct structtype1 {
	float float1;
	float float3;
};

void main() {
	AssignCommand(GetObjectByTag("VisasMarr", 0), SetFacingPoint(GetPositionFromLocation(GetLocation(GetObjectByTag("Mand", 0)))));
}

