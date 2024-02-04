void main() {
	object oKathVogga = GetObjectByTag("KathVogga", 0);
	object object3 = GetObjectByTag("KathVogga", 1);
	AssignCommand(oKathVogga, ClearAllActions());
	AssignCommand(object3, ClearAllActions());
	DelayCommand(0.1, AssignCommand(oKathVogga, ActionPlayAnimation(22, 1.0, (-1.0))));
	DelayCommand(0.1, AssignCommand(object3, ActionPlayAnimation(22, 1.0, (-1.0))));
}