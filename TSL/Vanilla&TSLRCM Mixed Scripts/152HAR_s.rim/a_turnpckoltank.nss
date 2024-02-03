struct structtype1 {
	float float1;
	float float3;
};

void main() {
	DelayCommand(0.5, AssignCommand(GetFirstPC(), SetFacingPoint(GetPosition(GetObjectByTag("KolTank3", 0)))));
	DelayCommand(0.8, AssignCommand(GetObjectByTag("Kreia", 0), SetFacingPoint(GetPosition(GetObjectByTag("KolTank3", 0)))));
	DelayCommand(1.5, AssignCommand(GetObjectByTag("Atton", 0), SetFacingPoint(GetPosition(GetObjectByTag("KolTank3", 0)))));
}

