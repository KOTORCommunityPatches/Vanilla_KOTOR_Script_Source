void main() {
	AssignCommand(GetObjectByTag("Vrook", 0), SetFacingPoint(GetPosition(GetFirstPC())));
	DelayCommand(0.5, AssignCommand(GetObjectByTag("Kavar", 0), SetFacingPoint(GetPosition(GetFirstPC()))));
	DelayCommand(1.0, AssignCommand(GetObjectByTag("ZezKaiEll", 0), SetFacingPoint(GetPosition(GetFirstPC()))));
}