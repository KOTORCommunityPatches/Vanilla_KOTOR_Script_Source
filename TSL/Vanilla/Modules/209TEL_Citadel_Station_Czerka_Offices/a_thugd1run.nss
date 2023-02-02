void main() {
	SetLocked(GetObjectByTag("Exchange", 0), 0);
	DelayCommand(0.5, AssignCommand(GetObjectByTag("Exchange", 0), ActionOpenDoor(GetObjectByTag("Exchange", 0))));
	AssignCommand(GetObjectByTag("203_thugd1", 0), ClearAllActions());
	DelayCommand(0.1, AssignCommand(GetObjectByTag("203_thugd1", 0), ActionForceMoveToObject(GetWaypointByTag("WP_THUGD"), 1, 1.0, 30.0)));
	DelayCommand(2.9, DestroyObject(GetObjectByTag("203_thugd1", 0), 0.0, 1, 0.0, 0));
}
