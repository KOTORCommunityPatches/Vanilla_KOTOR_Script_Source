void main() {
	object oFrom_501OND = GetWaypointByTag("From_501OND");
	DelayCommand(2.0, ActionMoveToObject(oFrom_501OND, 1, 1.0));
	DelayCommand(2.0, AssignCommand(GetObjectByTag("ter_child1", 0), ActionMoveToObject(oFrom_501OND, 1, 1.0)));
	DelayCommand(2.0, AssignCommand(GetObjectByTag("ter_child2", 0), ActionMoveToObject(oFrom_501OND, 1, 1.0)));
	DelayCommand(6.0, DestroyObject(GetObjectByTag("terlyn", 0), 0.0, 0, 0.0, 0));
	DelayCommand(6.0, DestroyObject(GetObjectByTag("ter_child1", 0), 0.0, 0, 0.0, 0));
	DelayCommand(6.0, DestroyObject(GetObjectByTag("ter_child2", 0), 0.0, 0, 0.0, 0));
}

