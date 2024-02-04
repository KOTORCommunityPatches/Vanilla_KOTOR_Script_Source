void main() {
	object oMira = GetObjectByTag("Mira", 0);
	AssignCommand(oMira, ActionPlayAnimation(100, 1.0, 0.0));
	DelayCommand(1.0, AssignCommand(oMira, ActionPlayAnimation(101, 1.0, 0.0)));
}