void main() {
	DelayCommand(1.0, AssignCommand(GetObjectByTag("Mira", 0), SetFacingPoint(GetPosition(GetObjectByTag("Zez", 0)))));
}