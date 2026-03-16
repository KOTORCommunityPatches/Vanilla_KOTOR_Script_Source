struct structtype1 {
	float float1;
	float float3;
};

void main() {
	DelayCommand(0.4, AssignCommand(GetObjectByTag("Handmaiden", 0), SetFacingPoint(GetPosition(GetObjectByTag("Atton", 0)))));
	DelayCommand(0.8, AssignCommand(GetFirstPC(), SetFacingPoint(GetPosition(GetObjectByTag("Atton", 0)))));
}

