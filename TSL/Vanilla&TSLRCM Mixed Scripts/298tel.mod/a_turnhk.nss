struct structtype1 {
	float float1;
	float float3;
};

void main() {
	AssignCommand(GetObjectByTag("HK50", 0), SetFacingPoint(GetPosition(GetObjectByTag("HK502", 0))));
	AssignCommand(GetObjectByTag("HK503", 0), SetFacingPoint(GetPosition(GetObjectByTag("HK502", 0))));
}

