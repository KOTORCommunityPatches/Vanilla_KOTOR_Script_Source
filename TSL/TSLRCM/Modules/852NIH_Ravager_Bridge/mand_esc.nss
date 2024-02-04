void main() {
	AssignCommand(GetObjectByTag("Mand", 0), ActionMoveToObject(GetObjectByTag("Bridge", 0), 1, 1.0));
	DelayCommand(1.5, DestroyObject(GetObjectByTag("Mand", 0), 0.0, 0, 0.0, 0));
}