struct structtype1 {
	float float1;
	float float3;
};

void main() {
	AssignCommand(GetObjectByTag("909Sion", 0), SetFacingPoint(GetPosition(GetFirstPC())));
}

