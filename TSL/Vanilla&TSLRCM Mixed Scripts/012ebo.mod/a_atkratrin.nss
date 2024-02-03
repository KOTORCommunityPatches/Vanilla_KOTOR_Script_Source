void main() {
	object oREThug6 = GetObjectByTag("REThug6", 0);
	DelayCommand(1.7, AssignCommand(oREThug6, ClearAllActions()));
	DelayCommand(1.7, AssignCommand(oREThug6, ActionPlayAnimation(10088, 1.0, 0.0)));
	DelayCommand(2.1, AssignCommand(GetObjectByTag("Ratrin", 0), ClearAllActions()));
	DelayCommand(2.1, AssignCommand(GetObjectByTag("Ratrin", 0), ActionPlayAnimation(26, 1.0, (-1.0))));
}

