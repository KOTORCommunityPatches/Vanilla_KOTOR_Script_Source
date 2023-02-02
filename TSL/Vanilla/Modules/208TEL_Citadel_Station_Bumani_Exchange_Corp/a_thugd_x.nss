void main() {
	SetLocked(GetObjectByTag("Exchange", 0), 0);
	DelayCommand(0.5, AssignCommand(GetObjectByTag("Exchange", 0), ActionOpenDoor(GetObjectByTag("Exchange", 0))));
	DelayCommand(0.1, AssignCommand(GetObjectByTag("203_thugd", 0), ActionMoveToObject(GetWaypointByTag("WP_THUGD"), 1, 1.0)));
	DelayCommand(1.9, DestroyObject(GetObjectByTag("203_thugd", 0), 0.0, 1, 0.0, 0));
}
