void main() {
	AssignCommand(GetFirstPC(), ClearAllActions());
	AssignCommand(GetFirstPC(), ActionPlayAnimation(35, 1.0, 50.0));
	AssignCommand(GetObjectByTag("Kreia", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("Kreia", 0), ActionPlayAnimation(35, 1.0, 50.0));
}