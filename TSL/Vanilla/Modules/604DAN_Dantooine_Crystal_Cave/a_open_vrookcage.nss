void main() {
	AurPostString("a_open_vrookcage", 5, 7, 5.0);
	DelayCommand(0.5, AssignCommand(GetObjectByTag("vrookcage", 0), ActionPlayAnimation(202, 1.0, 0.0)));
}
