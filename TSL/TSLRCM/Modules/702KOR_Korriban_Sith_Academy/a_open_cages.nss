void main() {
	object oCage_tukata = GetObjectByTag("cage_tukata", 0);
	DelayCommand(0.0, AssignCommand(GetObjectByTag("cage_tukata", 5), ActionPlayAnimation(202, 1.0, 0.0)));
	DelayCommand(0.4, AssignCommand(GetObjectByTag("cage_tukata", 0), ActionPlayAnimation(202, 1.0, 0.0)));
	DelayCommand(0.8, AssignCommand(GetObjectByTag("cage_tukata", 1), ActionPlayAnimation(202, 1.0, 0.0)));
	DelayCommand(1.2, AssignCommand(GetObjectByTag("cage_tukata", 2), ActionPlayAnimation(202, 1.0, 0.0)));
	DelayCommand(1.6, AssignCommand(GetObjectByTag("cage_tukata", 3), ActionPlayAnimation(202, 1.0, 0.0)));
	DelayCommand(2.0, AssignCommand(GetObjectByTag("cage_tukata", 4), ActionPlayAnimation(202, 1.0, 0.0)));
}