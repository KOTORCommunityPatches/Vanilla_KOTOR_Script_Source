void main() {
	DelayCommand(0.1, SetFacingPoint(Vector(19.0, 26.0, 0.0)));
	DelayCommand(0.1, AssignCommand(GetFirstPC(), SetFacingPoint(Vector(21.0, 45.0, 0.0))));
}

