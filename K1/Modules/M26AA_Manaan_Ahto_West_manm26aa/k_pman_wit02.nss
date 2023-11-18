void main() {
	
	ClearAllActions();
	
	ActionMoveToObject(GetObjectByTag("trial_" + GetTag(OBJECT_SELF), 0));
	ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("trial_stand02", 0))));
	ActionDoCommand(SetLockOrientationInDialog(OBJECT_SELF, FALSE));
}
