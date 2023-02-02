void main() {
	DelayCommand(0.1, AssignCommand(GetFirstPC(), SetFacingPoint(GetPosition(GetObjectByTag("MedCon", 0)))));
	DelayCommand(0.1, AssignCommand(GetObjectByTag("Kreia", 0), SetFacingPoint(GetPosition(GetObjectByTag("MedCon", 0)))));
	DelayCommand(0.1, AssignCommand(GetObjectByTag("Atton", 0), SetFacingPoint(GetPosition(GetObjectByTag("MedCon", 0)))));
}
