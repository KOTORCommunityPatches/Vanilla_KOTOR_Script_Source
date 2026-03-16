struct structtype1 {
	float float1;
	float float3;
};

void main() {
	DelayCommand(1.0, AssignCommand(GetObjectByTag("Mira", 0), SetFacingPoint(GetPosition(GetObjectByTag("Zez", 0)))));
}

