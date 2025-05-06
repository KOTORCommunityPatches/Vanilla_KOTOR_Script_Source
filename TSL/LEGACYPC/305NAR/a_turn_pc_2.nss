struct structtype1 {
	float float1;
	float float3;
};

void main() {
	DelayCommand(0.5, AssignCommand(GetFirstPC(), SetFacingPoint(GetPosition(GetObjectByTag("Visquis", 0)))));
}

