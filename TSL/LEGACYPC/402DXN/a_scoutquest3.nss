struct structtype1 {
	float float1;
	float float3;
};

void main() {
	SetFacingPoint(GetPosition(GetFirstPC()));
	AssignCommand(GetObjectByTag("om_scout2", 0), SetFacingPoint(GetPosition(GetFirstPC())));
}

