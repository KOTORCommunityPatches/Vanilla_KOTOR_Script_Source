struct structtype1 {
	float float1;
	float float3;
};

void main() {
	DelayCommand(0.5, AssignCommand(GetObjectByTag("Mira", 0), SetFacingPoint(GetPosition(GetObjectByTag("304Enter", 0)))));
	DelayCommand(2.5, AssignCommand(GetObjectByTag("Mira", 0), SetFacingPoint(GetPosition(GetObjectByTag("NarShaddaaDoor01", 0)))));
}

