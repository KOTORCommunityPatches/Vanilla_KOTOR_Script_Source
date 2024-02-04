struct structtype1 {
	float float1;
	float float3;
};

void main() {
	DelayCommand(1.0, AssignCommand(GetFirstPC(), SetFacingPoint(GetPosition(GetObjectByTag("Kreia", 0)))));
}

