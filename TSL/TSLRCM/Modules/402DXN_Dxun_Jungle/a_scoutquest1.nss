void main() {
	ActionMoveToObject(GetWaypointByTag("wp_om_scout1"), 0, 1.0);
	AssignCommand(GetObjectByTag("om_scout2", 0), ActionMoveToObject(GetWaypointByTag("wp_om_scout2"), 0, 1.0));
	SetLockHeadFollowInDialog(GetObjectByTag("om_scout1", 0), 1);
	SetLockOrientationInDialog(GetObjectByTag("om_scout1", 0), 1);
	SetLockHeadFollowInDialog(GetObjectByTag("om_scout2", 0), 1);
	SetLockOrientationInDialog(GetObjectByTag("om_scout2", 0), 1);
}